<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	if(empty($_POST['caption'])) {
		$valid = 0;
		$error_message .= "Фотосурет атауы бос болмауы керек<br>";
	}

	$path = $_FILES['photo']['name'];
	$path_tmp = $_FILES['photo']['tmp_name'];

	if($path == '') {
		$valid = 0;
		$error_message .= "Сіз фотосуретті таңдауыңыз керек<br>";
	} else {
		$ext = pathinfo( $path, PATHINFO_EXTENSION );
		$file_name = basename( $path, '.' . $ext );
		if( $ext!='jpg' && $ext!='png' && $ext!='jpeg' && $ext!='gif' ) {
			$valid = 0;
			$error_message .= 'Сіз jpg, jpeg, gif немесе png файлдарын жүктеуіңіз керек<br>';
		}
	}
	
	if($valid == 1) {

		// фотосуретке автоматты түрде id беру үшін
		$statement = $pdo->prepare("SHOW TABLE STATUS LIKE 'tbl_photo'");
		$statement->execute();
		$result = $statement->fetchAll();
		foreach($result as $row) {
			$ai_id=$row[10];
		}

		// фотосуретті негізгі орынға жүктеу және соңғы атын беру
		$final_name = 'photo-'.$ai_id.'.'.$ext;
		move_uploaded_file( $path_tmp, '../assets/uploads/'.$final_name );

		// дерекқорға сақтау
		$statement = $pdo->prepare("INSERT INTO tbl_photo (caption,photo) VALUES (?,?)");
		$statement->execute(array($_POST['caption'],$final_name));

		$success_message = 'Фотосурет сәтті қосылды.';
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Фотосурет қосу</h1>
	</div>
	<div class="content-header-right">
		<a href="photo.php" class="btn btn-primary btn-sm">Барлығын көру</a>
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

			<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Фотосурет атауы <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="caption">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Фотосуретті жүктеу <span>*</span></label>
							<div class="col-sm-4" style="padding-top:6px;">
								<input type="file" name="photo">
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