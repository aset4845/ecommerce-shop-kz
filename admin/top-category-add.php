<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	if(empty($_POST['tcat_name'])) {
		$valid = 0;
		$error_message .= "Жоғарғы санат атауы бос болмауы керек<br>";
	} else {
		// Дубликат санатты тексеру
		$statement = $pdo->prepare("SELECT * FROM tbl_top_category WHERE tcat_name=?");
		$statement->execute(array($_POST['tcat_name']));
		$total = $statement->rowCount();
		if($total)
		{
			$valid = 0;
			$error_message .= "Жоғарғы санат атауы бұрыннан бар<br>";
		}
	}

	if($valid == 1) {

		// tbl_top_category негізгі кестесіне деректерді сақтау
		$statement = $pdo->prepare("INSERT INTO tbl_top_category (tcat_name,show_on_menu) VALUES (?,?)");
		$statement->execute(array($_POST['tcat_name'],$_POST['show_on_menu']));
	
		$success_message = 'Жоғарғы санат сәтті қосылды.';
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Жоғарғы деңгейлі санат қосу</h1>
	</div>
	<div class="content-header-right">
		<a href="top-category.php" class="btn btn-primary btn-sm">Барлығын қарау</a>
	</div>
</section>


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
							<label for="" class="col-sm-2 control-label">Жоғарғы санат атауы <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="tcat_name">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Мәзірде көрсету керек пе? <span>*</span></label>
							<div class="col-sm-4">
								<select name="show_on_menu" class="form-control" style="width:auto;">
									<option value="0">Жоқ</option>
									<option value="1">Иә</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Жіберу</button>
							</div>
						</div>
					</div>
				</div>

			</form>


		</div>
	</div>

</section>

<?php require_once('footer.php'); ?>