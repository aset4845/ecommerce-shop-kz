<?php require_once('header.php'); ?>

<?php
$error_message = '';
$success_message = '';
if(isset($_POST['form1'])) {
    $valid = 1;
    if(empty($_POST['subject_text'])) {
        $valid = 0;
        $error_message .= 'Тақырып бос болмауы керек\n';
    }
    if(empty($_POST['message_text'])) {
        $valid = 0;
        $error_message .= 'Хабарлама бос болмауы керек\n';
    }
    if($valid == 1) {

        $subject_text = strip_tags($_POST['subject_text']);
        $message_text = strip_tags($_POST['message_text']);

        // Тұтынушының электрондық поштасын алу
        $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_id=?");
        $statement->execute(array($_POST['cust_id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
    $cust_email = $row['cust_email'];
    $cust_phone = $row['cust_phone']; // добавлено
}


        // Әкімшінің электрондық поштасын алу
        $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
            $admin_email = $row['contact_email'];
        }

        $order_detail = '';
        $statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_id=?");
        $statement->execute(array($_POST['payment_id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
            
            if($row['payment_method'] == 'PayPal'):
                $payment_details = '
Транзакция идентификаторы: '.$row['txnid'].'<br>
                ';
            elseif($row['payment_method'] == 'Stripe'):
                $payment_details = '
Транзакция идентификаторы: '.$row['txnid'].'<br>
Карта нөмірі: '.$row['card_number'].'<br>
Карта CVV: '.$row['card_cvv'].'<br>
Айы: '.$row['card_month'].'<br>
Жылы: '.$row['card_year'].'<br>
                ';
            elseif($row['payment_method'] == 'Bank Deposit'):
                $payment_details = '
Төлем туралы мәліметтер: <br>'.$row['bank_transaction_info'];
            endif;

            $order_detail .= '
Тұтынушы аты: '.$row['customer_name'].'<br>
Тұтынушы Email: '.$row['customer_email'].'<br>
Телефон: '.$cust_phone.'<br>

Төлем әдісі: '.$row['payment_method'].'<br>
Төлем күні: '.$row['payment_date'].'<br>
Төлем туралы мәліметтер: <br>'.$payment_details.'<br>
Төленген сома: '.$row['paid_amount'].'<br>
Төлем статусы: '.$row['payment_status'].'<br>
Жеткізу статусы: '.$row['shipping_status'].'<br>
Төлем идентификаторы: '.$row['payment_id'].'<br>
            ';
        }

        $i=0;
        $statement = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
        $statement->execute(array($_POST['payment_id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
            $i++;
            $order_detail .= '
<br><b><u>Өнім '.$i.'</u></b><br>
Өнім атауы: '.$row['product_name'].'<br>
Өлшемі: '.$row['size'].'<br>
Түсі: '.$row['color'].'<br>
Саны: '.$row['quantity'].'<br>
Бірлік бағасы: '.$row['unit_price'].'<br>
            ';
        }

        $statement = $pdo->prepare("INSERT INTO tbl_customer_message (subject,message,order_detail,cust_id) VALUES (?,?,?,?)");
        $statement->execute(array($subject_text,$message_text,$order_detail,$_POST['cust_id']));

        // Email жіберу
        $to_customer = $cust_email;
        $message = '
<html><body>
<h3>Хабарлама: </h3>
'.$message_text.'
<h3>Тапсырыс туралы мәліметтер: </h3>
'.$order_detail.'
</body></html>
';
        $headers = 'From: ' . $admin_email . "\r\n" .
                   'Reply-To: ' . $admin_email . "\r\n" .
                   'X-Mailer: PHP/' . phpversion() . "\r\n" . 
                   "MIME-Version: 1.0\r\n" . 
                   "Content-Type: text/html; charset=ISO-8859-1\r\n";

        // Әкімшіге email жіберу                  
        mail($to_customer, $subject_text, $message, $headers);
        
        $success_message = 'Тұтынушыға email сәтті жіберілді.';

    }
}
?>
<?php
if($error_message != '') {
    echo "<script>alert('".$error_message."')</script>";
}
if($success_message != '') {
    echo "<script>alert('".$success_message."')</script>";
}
?>

<section class="content-header">
    <div class="content-header-left">
        <h1>Тапсырыстарды қарау</h1>
    </div>
</section>


<section class="content">

  <div class="row">
    <div class="col-md-12">


      <div class="box box-info">
        
        <div class="box-body table-responsive">
          <table id="example1" class="table table-bordered table-hover table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Тұтынушы</th>
                    <th>Өнім туралы мәліметтер</th>
                    <th>
                        Төлем туралы ақпарат
                    </th>
                    <th>Төленген сома</th>
                    <th>Төлем статусы</th>
                    <th>Жеткізу статусы</th>
                    <th>Әрекет</th>
                </tr>
            </thead>
            <tbody>
                <?php
           
            	$i=0;
            	$statement = $pdo->prepare("SELECT * FROM tbl_payment ORDER by id DESC");
            	$statement->execute();
            	$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
            	foreach ($result as $row) {
            		$i++;
            		
                    ?>
                    <tr class="<?php if($row['payment_status']=='Pending'){echo 'bg-r';}else{echo 'bg-g';} ?>">
                        <td><?php echo $i; ?></td>
                        <td>
                           <b>ID:</b> <?php echo $row['customer_id']; ?><br>
    <b>Аты:</b><br> <?php echo $row['customer_name']; ?><br>
    <b>Email:</b><br> <?php echo $row['customer_email']; ?><br>
    <?php
    // Получаем номер телефона из tbl_customer по customer_id
    $statement_cust = $pdo->prepare("SELECT cust_phone FROM tbl_customer WHERE cust_id = ?");
    $statement_cust->execute([$row['customer_id']]);
    $cust_result = $statement_cust->fetch(PDO::FETCH_ASSOC);
    $cust_phone = $cust_result ? $cust_result['cust_phone'] : '—';
    ?>
    <b>Телефон:</b><br> <?php echo $cust_phone; ?><br>
                            <a href="#" data-toggle="modal" data-target="#model-<?php echo $i; ?>"class="btn btn-warning btn-xs" style="width:100%;margin-bottom:4px;">Хабарлама жіберу</a>
                            <div id="model-<?php echo $i; ?>" class="modal fade" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title" style="font-weight: bold;">Хабарлама жіберу</h4>
                                        </div>
                                        <div class="modal-body" style="font-size: 14px">
                                            <form action="" method="post">
                                                <input type="hidden" name="cust_id" value="<?php echo $row['customer_id']; ?>">
                                                <input type="hidden" name="payment_id" value="<?php echo $row['payment_id']; ?>">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <td>Тақырып</td>
                                                        <td>
                                                            <input type="text" name="subject_text" class="form-control" style="width: 100%;">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Хабарлама</td>
                                                        <td>
                                                            <textarea name="message_text" class="form-control" cols="30" rows="10" style="width:100%;height: 200px;"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td><input type="submit" value="Хабарлама жіберу" name="form1"></td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Жабу</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                           <?php
                           $statement1 = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
                           $statement1->execute(array($row['payment_id']));
                           $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
                           foreach ($result1 as $row1) {
                                echo '<b>Өнім:</b> '.$row1['product_name'];
                                echo '<br>(<b>Өлшемі:</b> '.$row1['size'];
                                echo ', <b>Түсі:</b> '.$row1['color'].')';
                                echo '<br>(<b>Саны:</b> '.$row1['quantity'];
                                echo ', <b>Бірлік бағасы:</b> '.$row1['unit_price'].')';
                                echo '<br><br>';
                           }
                           ?>
                        </td>
                        <td>
                            <?php if($row['payment_method'] == 'PayPal'): ?>
                                <b>Төлем әдісі:</b> <?php echo '<span style="color:red;"><b>'.$row['payment_method'].'</b></span>'; ?><br>
                                <b>Төлем идентификаторы:</b> <?php echo $row['payment_id']; ?><br>
                                <b>Күні:</b> <?php echo $row['payment_date']; ?><br>
                                <b>Транзакция идентификаторы:</b> <?php echo $row['txnid']; ?><br>
                            <?php elseif($row['payment_method'] == 'Stripe'): ?>
                                <b>Төлем әдісі:</b> <?php echo '<span style="color:red;"><b>'.$row['payment_method'].'</b></span>'; ?><br>
                                <b>Төлем идентификаторы:</b> <?php echo $row['payment_id']; ?><br>
                                <b>Күні:</b> <?php echo $row['payment_date']; ?><br>
                                <b>Транзакция идентификаторы:</b> <?php echo $row['txnid']; ?><br>
                                <b>Карта нөмірі:</b> <?php echo $row['card_number']; ?><br>
                                <b>Карта CVV:</b> <?php echo $row['card_cvv']; ?><br>
                                <b>Айы:</b> <?php echo $row['card_month']; ?><br>
                                <b>Жылы:</b> <?php echo $row['card_year']; ?><br>
                            <?php elseif($row['payment_method'] == 'Bank Deposit'): ?>
                                <b>Төлем әдісі:</b> <?php echo '<span style="color:red;"><b>'.$row['payment_method'].'</b></span>'; ?><br>
                                <b>Төлем идентификаторы:</b> <?php echo $row['payment_id']; ?><br>
                                <b>Күні:</b> <?php echo $row['payment_date']; ?><br>
                                <b>Транзакция ақпараты:</b> <br><?php echo $row['bank_transaction_info']; ?><br>
                            <?php endif; ?>
                        </td>
                        <td><?php echo $row['paid_amount']; ?> Тг.</td>
                        <td>
                            <?php echo $row['payment_status']; ?>
                            <br><br>
                            <?php
                                if($row['payment_status']=='Pending'){
                                    ?>
                                    <a href="order-change-status.php?id=<?php echo $row['id']; ?>&task=Completed" class="btn btn-success btn-xs" style="width:100%;margin-bottom:4px;">Аяқталды деп белгілеу</a>
                                    <?php
                                }
                            ?>
                        </td>
                        <td>
                            <?php echo $row['shipping_status']; ?>
                            <br><br>
                            <?php
                            if($row['payment_status']=='Completed') {
                                if($row['shipping_status']=='Pending'){
                                    ?>
                                    <a href="shipping-change-status.php?id=<?php echo $row['id']; ?>&task=Completed" class="btn btn-warning btn-xs" style="width:100%;margin-bottom:4px;">Аяқталды деп белгілеу</a>
                                    <?php
                                }
                            }
                            ?>
                        </td>
                        <td>
                             <a href="#" class="btn btn-danger btn-xs" data-href="order-delete.php?id=<?php echo $row['id']; ?>" data-toggle="modal" data-target="#confirm-delete" style="width:100%;">Жою</a>
                             <a href="order-detail.php?id=<?php echo $row['id']; ?>" class="btn btn-primary btn-xs" style="width:100%; margin-top:4px;">Ақпарат</a>
                        </td>
                        


                    </tr>
                    <?php
                }
                ?>
                
        </div>
      </div>
  

</section>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Жоюды растау</h4>
            </div>
            <div class="modal-body">
                Бұл элементті жойғыңыз келетініне сенімдісіз бе?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Бас тарту</button>
                <a class="btn btn-danger btn-ok">Жою</a>
            </div>
        </div>
    </div>
</div>

<script>
    $('#confirm-delete').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
    });
</script>


<?php require_once('footer.php'); ?>