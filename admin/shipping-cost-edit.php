<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
    $valid = 1;

    if(empty($_POST['country_id'])) {
        $valid = 0;
        $error_message .= "Елді таңдау қажет<br>";
    } else {
        // Елдің қайталануын тексеру
        // Дерекқордағы ағымдағы елдің идентификаторы
        $statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost WHERE shipping_cost_id=?");
        $statement->execute(array($_REQUEST['id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach($result as $row) {
            $current_country = $row['country_id'];
        }

        $statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost WHERE country_id=? and country_id!=?");
        $statement->execute(array($_POST['country_id'],$current_country));
        $total = $statement->rowCount();							
        if($total) {
            $valid = 0;
            $error_message .= 'Бұл ел бұрыннан бар<br>';
        }
    }

    if($valid == 1) {    	
        // Дерекқорға жаңарту
        $statement = $pdo->prepare("UPDATE tbl_shipping_cost SET country_id=?,amount=? WHERE shipping_cost_id=?");
        $statement->execute(array($_POST['country_id'],$_POST['amount'],$_REQUEST['id']));

        $success_message = 'Жеткізу құны сәтті жаңартылды.';
    }
}
?>

<?php
if(!isset($_REQUEST['id'])) {
    header('location: logout.php');
    exit;
} else {
    // id дұрыс па, тексеру
    $statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost WHERE shipping_cost_id=?");
    $statement->execute(array($_REQUEST['id']));
    $total = $statement->rowCount();
    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
    if( $total == 0 ) {
        header('location: logout.php');
        exit;
    }
}
?>

<section class="content-header">
    <div class="content-header-left">
        <h1>Жеткізу құнын өңдеу</h1>
    </div>
    <div class="content-header-right">
        <a href="shipping-cost.php" class="btn btn-primary btn-sm">Барлығын көру</a>
    </div>
</section>


<?php
foreach ($result as $row) {
    $country_id = $row['country_id'];
    $amount = $row['amount'];
}
?>

<section class="content">

  <div class="row">
    <div class="col-md-12">

        <?php if($error_message): ?>
        <div class="callout callout-danger">
        
        <p>
        <?php echo $error_message; ?>
        </p>
        </div>
        <?php endif; ?>

        <?php if($success_message): ?>
        <div class="callout callout-success">
        
        <p><?php echo $success_message; ?></p>
        </div>
        <?php endif; ?>

        <form class="form-horizontal" action="" method="post">
            <div class="box box-info">
                <div class="box-body">
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Елді таңдаңыз <span>*</span></label>
                        <div class="col-sm-4">
                            <select name="country_id" class="form-control select2">
                                <option value="">Елді таңдаңыз</option>
                                <?php
                                $statement = $pdo->prepare("SELECT * FROM tbl_country ORDER BY country_name ASC");
                                $statement->execute();
                                $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                foreach ($result as $row) {
                                    ?>
                                    <option value="<?php echo $row['country_id']; ?>" <?php if($row['country_id'] == $country_id) {echo 'selected';} ?>><?php echo $row['country_name']; ?></option>
                                    <?php
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Сома <span>*</span></label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="amount" value="<?php echo $amount; ?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label"></label>
                        <div class="col-sm-6">
                          <button type="submit" class="btn btn-success pull-left" name="form1">Жаңарту</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>



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

<?php require_once('footer.php'); ?>