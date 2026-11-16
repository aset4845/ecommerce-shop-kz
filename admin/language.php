<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
		
    // updating into the database
	foreach($_POST['lang_value'] as $key=>$val) {
		$arr[$key] = $val;
	}

	for($i=1;$i<=count($arr);$i++) {
		$statement = $pdo->prepare("UPDATE tbl_language SET lang_value=? WHERE lang_id=?");
		$statement->execute(array($arr[$i],$i));
	}
	$success_message = 'Language Settings is updated successfully.';
}

$i=0;
$statement = $pdo->prepare("SELECT * FROM tbl_language");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
foreach ($result as $row) {
	$i++;
	$lang_ids[$i] = $row['lang_value'];
}
?>

<section class="content-header">
    <div class="content-header-left">
        <h1>Тілді баптау</h1>
    </div>
</section>


<?php
$statement = $pdo->prepare("SELECT * FROM tbl_language");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {

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
        
        <h3 style="font-size:20px;font-weight:500;">Негізгі</h3>
        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Валюта <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[1]" value="<?php echo $lang_ids[1]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Өнімді іздеу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[2]" value="<?php echo $lang_ids[2]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Іздеу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[3]" value="<?php echo $lang_ids[3]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жіберу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[4]" value="<?php echo $lang_ids[4]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жаңарту <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[5]" value="<?php echo $lang_ids[5]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Толығырақ оқу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[6]" value="<?php echo $lang_ids[6]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Серия <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[7]" value="<?php echo $lang_ids[7]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Фото <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[8]" value="<?php echo $lang_ids[8]; ?>">
                    </div>
                </div>
            </div>
        </div>

        <h3 style="font-size:20px;font-weight:500;">Кіру</h3>
            <div class="box box-info">
            <div class="box-body">
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Кіру <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[9]" value="<?php echo $lang_ids[9]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Тұтынушының кіруі <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[10]" value="<?php echo $lang_ids[10]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Кіру үшін мұнда басыңыз <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[11]" value="<?php echo $lang_ids[11]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Кіру бетіне оралу <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[12]" value="<?php echo $lang_ids[12]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Кіруші: <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[13]" value="<?php echo $lang_ids[13]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Шығу <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[14]" value="<?php echo $lang_ids[14]; ?>">
                </div>
            </div>
            </div>
        </div>
		
        <h3 style="font-size:20px;font-weight:500;">Тіркелу</h3>
        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Тіркелу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[15]" value="<?php echo $lang_ids[15]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Тұтынушының тіркелуі <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[16]" value="<?php echo $lang_ids[16]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Тіркелу сәтті өтті <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[17]" value="<?php echo $lang_ids[17]; ?>">
                    </div>
                </div>
            </div>
        </div>
        <h3 style="font-size:20px;font-weight:500;">Себет және Төлем</h3>
        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Себет <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[18]" value="<?php echo $lang_ids[18]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Себетті көру <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[19]" value="<?php echo $lang_ids[19]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Себетті жаңарту <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[20]" value="<?php echo $lang_ids[20]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Себетке қосу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[154]" value="<?php echo $lang_ids[154]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Себетке оралу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[21]" value="<?php echo $lang_ids[21]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Төлем жасау <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[22]" value="<?php echo $lang_ids[22]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Төлемге өту <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[23]" value="<?php echo $lang_ids[23]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Төлем жасау үшін тұтынушы ретінде кіріңіз <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[160]" value="<?php echo $lang_ids[160]; ?>">
                    </div>
                </div>

            </div>
        </div>

        <h3 style="font-size:20px;font-weight:500;">Төлем</h3>
        <div class="box box-info">
            <div class="box-body">
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Тапсырыстар <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[24]" value="<?php echo $lang_ids[24]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Тапсырыстар тарихы <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[25]" value="<?php echo $lang_ids[25]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Тапсырыс мәліметтері <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[26]" value="<?php echo $lang_ids[26]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Төлем күні мен уақыты <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[27]" value="<?php echo $lang_ids[27]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Транзакция ID <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[28]" value="<?php echo $lang_ids[28]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Төленген сома <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[29]" value="<?php echo $lang_ids[29]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Төлем күйі <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[30]" value="<?php echo $lang_ids[30]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Төлем әдісі <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[31]" value="<?php echo $lang_ids[31]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Төлем ID <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[32]" value="<?php echo $lang_ids[32]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Төлем бөлімі <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[33]" value="<?php echo $lang_ids[33]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Төлем әдісін таңдаңыз <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[34]" value="<?php echo $lang_ids[34]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Әдісті таңдаңыз <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[35]" value="<?php echo $lang_ids[35]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">PayPal <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[36]" value="<?php echo $lang_ids[36]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Stripe <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[37]" value="<?php echo $lang_ids[37]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Банк арқылы төлеу <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[38]" value="<?php echo $lang_ids[38]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Карта нөмірі <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[39]" value="<?php echo $lang_ids[39]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">CVV <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[40]" value="<?php echo $lang_ids[40]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Ай <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[41]" value="<?php echo $lang_ids[41]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Жыл <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[42]" value="<?php echo $lang_ids[42]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Осы мәліметтерге жіберу <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[43]" value="<?php echo $lang_ids[43]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Транзакция ақпараты <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[44]" value="<?php echo $lang_ids[44]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Транзакция идентификаторы мен басқа ақпаратты дұрыс енгізіңіз <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[45]" value="<?php echo $lang_ids[45]; ?>">
                </div>
            </div>				
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Қазір төлеу <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[46]" value="<?php echo $lang_ids[46]; ?>">
                </div>
            </div>
            </div>
        </div>
		
        <h3 style="font-size:20px;font-weight:500;">Өнім</h3>
        <div class="box box-info">
            <div class="box-body">				
            
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Өнім атауы <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[47]" value="<?php echo $lang_ids[47]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Өнім туралы мәлімет <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[48]" value="<?php echo $lang_ids[48]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Ұқсас өнімдер <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[155]" value="<?php echo $lang_ids[155]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Төменнен барлық ұқсас өнімдерді қараңыз <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[156]" value="<?php echo $lang_ids[156]; ?>">
                </div>
            </div>			
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Санаттар <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[49]" value="<?php echo $lang_ids[49]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Санат: <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[50]" value="<?php echo $lang_ids[50]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Барлық өнімдер <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[51]" value="<?php echo $lang_ids[51]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Өлшемді таңдаңыз <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[52]" value="<?php echo $lang_ids[52]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Өлшем <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[157]" value="<?php echo $lang_ids[157]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Түсті таңдаңыз <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[53]" value="<?php echo $lang_ids[53]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Түс <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[158]" value="<?php echo $lang_ids[158]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Баға <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[159]" value="<?php echo $lang_ids[159]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Өнім бағасы <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[54]" value="<?php echo $lang_ids[54]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Саны <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[55]" value="<?php echo $lang_ids[55]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Қоймада жоқ <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[56]" value="<?php echo $lang_ids[56]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Бөлісу <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[57]" value="<?php echo $lang_ids[57]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Бұл өнімді бөлісу <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[58]" value="<?php echo $lang_ids[58]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Өнім сипаттамасы <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[59]" value="<?php echo $lang_ids[59]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Өнім табылмады <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[153]" value="<?php echo $lang_ids[153]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Ерекшеліктер <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[60]" value="<?php echo $lang_ids[60]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Шарттар <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[61]" value="<?php echo $lang_ids[61]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Қайтару саясаты <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[62]" value="<?php echo $lang_ids[62]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Пікірлер <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[63]" value="<?php echo $lang_ids[63]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Пікір <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[64]" value="<?php echo $lang_ids[64]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Пікір қалдыру <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[65]" value="<?php echo $lang_ids[65]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Пікіріңізді жазыңыз (міндетті емес) <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[66]" value="<?php echo $lang_ids[66]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Пікірді жіберу <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[67]" value="<?php echo $lang_ids[67]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Сіз бұрын баға бергенсіз! <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[68]" value="<?php echo $lang_ids[68]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Баға сәтті жіберілді! <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[163]" value="<?php echo $lang_ids[163]; ?>">
                </div>
            </div>	
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Пікір қалдыру үшін жүйеге кіруіңіз керек <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[69]" value="<?php echo $lang_ids[69]; ?>">
                </div>
            </div>					
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Сипаттама табылмады <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[70]" value="<?php echo $lang_ids[70]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Ерекшеліктер табылмады <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[71]" value="<?php echo $lang_ids[71]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Шарттар табылмады <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[72]" value="<?php echo $lang_ids[72]; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-4 control-label">Қайтару саясаты табылмады <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[73]" value="<?php echo $lang_ids[73]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Пікір табылмады <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[74]" value="<?php echo $lang_ids[74]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Тұтынушының аты <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[75]" value="<?php echo $lang_ids[75]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Пікір <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[76]" value="<?php echo $lang_ids[76]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Пікірлер <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[77]" value="<?php echo $lang_ids[77]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Баға <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[78]" value="<?php echo $lang_ids[78]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Алдыңғы <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[79]" value="<?php echo $lang_ids[79]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Келесі <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[80]" value="<?php echo $lang_ids[80]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Аралық жиынтық <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[81]" value="<?php echo $lang_ids[81]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Жалпы <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[82]" value="<?php echo $lang_ids[82]; ?>">
                </div>
            </div>
                    <div class="form-group">
                <label for="" class="col-sm-4 control-label">Әрекет <span>*</span></label>
                <div class="col-sm-6">
                <input type="text" class="form-control" name="lang_value[83]" value="<?php echo $lang_ids[83]; ?>">
                </div>
            </div>
            </div>
        </div>
		
        <h3 style="font-size:20px;font-weight:500;">Төлем және жеткізу</h3>
        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жеткізу құны <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[84]" value="<?php echo $lang_ids[84]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жеткізуді жалғастыру <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[85]" value="<?php echo $lang_ids[85]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Төлем мекенжайы <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[161]" value="<?php echo $lang_ids[161]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Төлем мекенжайын жаңарту <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[86]" value="<?php echo $lang_ids[86]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жеткізу мекенжайы <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[162]" value="<?php echo $lang_ids[162]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жеткізу мекенжайын жаңарту <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[87]" value="<?php echo $lang_ids[87]; ?>">
                    </div>
                </div>				
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Төлем және жеткізу ақпаратын жаңарту <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[88]" value="<?php echo $lang_ids[88]; ?>">
                    </div>
                </div>				
            </div>
        </div>
        
        <h3 style="font-size:20px;font-weight:500;">Басқару панелі</h3>
        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Басқару панелі <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[89]" value="<?php echo $lang_ids[89]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Басқару панеліне қош келдіңіз <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[90]" value="<?php echo $lang_ids[90]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Басқару панеліне оралу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[91]" value="<?php echo $lang_ids[91]; ?>">
                    </div>
                </div>
            </div>
        </div>
		

		<h3 style="font-size:20px;font-weight:500;">Жазылу</h3>
        <div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жазылу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[92]" value="<?php echo $lang_ids[92]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Біздің жаналыққа жазылу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[93]" value="<?php echo $lang_ids[93]; ?>">
                    </div>
                </div>
            </div>
        </div>
		
		<h3 style="font-size:20px;font-weight:500;">Email - адрес</h3>
        <div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Email адерс <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[94]" value="<?php echo $lang_ids[94]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Email адерсінізді жазыныз <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[95]" value="<?php echo $lang_ids[95]; ?>">
                    </div>
                </div>
            </div>
        </div>
		
		<h3 style="font-size:20px;font-weight:500;">Пароль</h3>
        <div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Пароль <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[96]" value="<?php echo $lang_ids[96]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Парольді ұмыту <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[97]" value="<?php echo $lang_ids[97]; ?>">
                    </div>
                </div>				
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Парольді қайта теріңіз <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[98]" value="<?php echo $lang_ids[98]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Парольді жаңарту <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[99]" value="<?php echo $lang_ids[99]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жаңа пароль <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[100]" value="<?php echo $lang_ids[100]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жаңа парольді қайта терініз <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[101]" value="<?php echo $lang_ids[101]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Парольді өзгерту <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[149]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[149]; ?></textarea>
                    </div>
                </div>
            </div>
        </div>

       
		
        <h3 style="font-size:20px;font-weight:500;">Тұтынушы</h3>
        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Толық аты-жөні <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[102]" value="<?php echo $lang_ids[102]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Компания атауы <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[103]" value="<?php echo $lang_ids[103]; ?>">
                    </div>
                </div>                
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Телефон нөмірі <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[104]" value="<?php echo $lang_ids[104]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Мекенжай <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[105]" value="<?php echo $lang_ids[105]; ?>">
                    </div>
                </div>               
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ел <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[106]" value="<?php echo $lang_ids[106]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Қала <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[107]" value="<?php echo $lang_ids[107]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Облыс <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[108]" value="<?php echo $lang_ids[108]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Пошталық индекс <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[109]" value="<?php echo $lang_ids[109]; ?>">
                    </div>
                </div>
            </div>
        </div>
        
        <h3 style="font-size:20px;font-weight:500;">Басқа ақпарат</h3>
        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Біз туралы <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[110]" value="<?php echo $lang_ids[110]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Таңдаулы жазбалар <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[111]" value="<?php echo $lang_ids[111]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Танымал жазбалар <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[112]" value="<?php echo $lang_ids[112]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Соңғы жазбалар <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[113]" value="<?php echo $lang_ids[113]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Байланыс ақпараты <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[114]" value="<?php echo $lang_ids[114]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Байланыс формасы <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[115]" value="<?php echo $lang_ids[115]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Біздің кеңсе <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[116]" value="<?php echo $lang_ids[116]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Профильді жаңарту <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[117]" value="<?php echo $lang_ids[117]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Хабарлама жіберу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[118]" value="<?php echo $lang_ids[118]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Хабарлама <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[119]" value="<?php echo $lang_ids[119]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Картадан табу <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[120]" value="<?php echo $lang_ids[120]; ?>">
                    </div>
                </div>
            </div>
        </div>


        
        

        <h3 style="font-size:20px;font-weight:500;">Қате хабарламалар</h3>
        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Құттықтаймыз! Төлем сәтті өтті. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[121]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[121]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Төлем және жеткізу ақпараты сәтті жаңартылды. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[122]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[122]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Тұтынушының аты бос болмауы керек. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[123]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[123]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Телефон нөмірі бос болмауы керек. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[124]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[124]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Мекенжай бос болмауы керек. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[125]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[125]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Елді таңдау міндетті. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[126]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[126]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Қала бос болмауы керек. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[127]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[127]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Облыс бос болмауы керек. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[128]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[128]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Пошталық индекс бос болмауы керек. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[129]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[129]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Профиль ақпараты сәтті жаңартылды. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[130]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[130]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Email адресі бос болмауы керек <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[131]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[131]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Email және/немесе пароль бос болмауы керек. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[132]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[132]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Email адресі сәйкес келмейді. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[133]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[133]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Email адресі дұрыс болуы керек. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[134]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[134]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Email адресі бұрыннан бар. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[147]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[147]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Сіздің email адресіңіз біздің жүйеде табылмады. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[135]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[135]; ?></textarea>
                    </div>
                </div>                
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Email-іңізді тексеріп, жазылуды растаңыз. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[136]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[136]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Сіздің email сәтті расталды. Енді жүйеге кіре аласыз. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[137]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[137]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Пароль бос болмауы керек. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[138]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[138]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Парольдер сәйкес келмейді. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[139]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[139]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Жаңа және қайталап енгізілген парольдерді жазыңыз. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[140]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[140]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Пароль сәтті жаңартылды. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[141]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[141]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Парольді қалпына келтіру үшін төмендегі сілтемеге өтіңіз. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[142]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[142]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">ПАРОЛЬДІ ҚАЛПЫНА КЕЛТІРУ СҰРАНЫСЫ - СІЗДІҢ САЙТЫҢЫЗ <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[143]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[143]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Парольді қалпына келтіру уақыты (24 сағат) аяқталды. Қайтадан әрекет етіңіз. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[144]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[144]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Растау сілтемесі email-іңізге жіберілді. Парольді қалпына келтіру ақпараты сонда болады. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[145]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[145]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Пароль сәтті қалпына келтірілді. Енді жүйеге кіре аласыз. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[146]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[146]; ?></textarea>
                    </div>
                </div>    
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Кешіріңіз! Сіздің аккаунтыңыз белсенді емес. Әкімшіге хабарласыңыз. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[148]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[148]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Тіркелуді растау үшін email жіберілді. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[150]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[150]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Тіркелгеніңізге рахмет! Аккаунтыңыз құрылды. Аккаунтыңызды белсендіру үшін төмендегі сілтемеге өтіңіз: <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[151]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[151]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Тіркелу аяқталды. Email-іңізді тексеріп, тіркеуді растау процесін жалғастырыңыз. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[152]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[152]; ?></textarea>
                    </div>
                </div>
                              
            </div>
        </div>



        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label"></label>
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

<?php require_once('footer.php'); ?>