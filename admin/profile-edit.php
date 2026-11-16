<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {

	if($_SESSION['user']['role'] == 'Super Admin') {

		$valid = 1;

		if(empty($_POST['full_name'])) {
			$valid = 0;
			$error_message .= "Аты-жөні бос болмауы керек<br>";
		}

		if(empty($_POST['email'])) {
			$valid = 0;
			$error_message .= 'Электрондық пошта бос болмауы керек<br>';
		} else {
			if (filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) === false) {
				$valid = 0;
				$error_message .= 'Электрондық пошта дұрыс болуы керек<br>';
			} else {
				// дерекқордағы ағымдағы электрондық пошта
				$statement = $pdo->prepare("SELECT * FROM tbl_user WHERE id=?");
				$statement->execute(array($_SESSION['user']['id']));
				$result = $statement->fetchAll(PDO::FETCH_ASSOC);
				foreach($result as $row) {
					$current_email = $row['email'];
				}

				$statement = $pdo->prepare("SELECT * FROM tbl_user WHERE email=? and email!=?");
				$statement->execute(array($_POST['email'],$current_email));
				$total = $statement->rowCount();							
				if($total) {
					$valid = 0;
					$error_message .= 'Бұл электрондық пошта бұрыннан бар<br>';
				}
			}
		}

		if($valid == 1) {
			
			$_SESSION['user']['full_name'] = $_POST['full_name'];
			$_SESSION['user']['email'] = $_POST['email'];

			// дерекқорды жаңарту
			$statement = $pdo->prepare("UPDATE tbl_user SET full_name=?, email=?, phone=? WHERE id=?");
			$statement->execute(array($_POST['full_name'],$_POST['email'],$_POST['phone'],$_SESSION['user']['id']));

			$success_message = 'Пайдаланушы ақпараты сәтті жаңартылды.';
		}
	}
	else {
		$_SESSION['user']['phone'] = $_POST['phone'];

		// дерекқорды жаңарту
		$statement = $pdo->prepare("UPDATE tbl_user SET phone=? WHERE id=?");
		$statement->execute(array($_POST['phone'],$_SESSION['user']['id']));

		$success_message = 'Пайдаланушы ақпараты сәтті жаңартылды.';	
	}
}

if(isset($_POST['form2'])) {

	$valid = 1;

	$path = $_FILES['photo']['name'];
	$path_tmp = $_FILES['photo']['tmp_name'];

	if($path!='') {
		$ext = pathinfo( $path, PATHINFO_EXTENSION );
		$file_name = basename( $path, '.' . $ext );
		if( $ext!='jpg' && $ext!='png' && $ext!='jpeg' && $ext!='gif' ) {
			$valid = 0;
			$error_message .= 'Сіз jpg, jpeg, gif немесе png файл жүктеуіңіз керек<br>';
		}
	}

	if($valid == 1) {

		// бұрынғы фотосуретті өшіру
		if($_SESSION['user']['photo']!='') {
			unlink('../assets/uploads/'.$_SESSION['user']['photo']);	
		}

		// деректерді жаңарту
		$final_name = 'user-'.$_SESSION['user']['id'].'.'.$ext;
		move_uploaded_file( $path_tmp, '../assets/uploads/'.$final_name );
		$_SESSION['user']['photo'] = $final_name;

		// дерекқорды жаңарту
		$statement = $pdo->prepare("UPDATE tbl_user SET photo=? WHERE id=?");
		$statement->execute(array($final_name,$_SESSION['user']['id']));

		$success_message = 'Пайдаланушы фотосы сәтті жаңартылды.';
		
	}
}

if(isset($_POST['form3'])) {
	$valid = 1;

	if( empty($_POST['password']) || empty($_POST['re_password']) ) {
		$valid = 0;
		$error_message .= "Құпиясөз бос болмауы керек<br>";
	}

	if( !empty($_POST['password']) && !empty($_POST['re_password']) ) {
		if($_POST['password'] != $_POST['re_password']) {
			$valid = 0;
			$error_message .= "Құпиясөздер сәйкес келмейді<br>";	
		}        
	}

	if($valid == 1) {

		$_SESSION['user']['password'] = md5($_POST['password']);

		// дерекқорды жаңарту
		$statement = $pdo->prepare("UPDATE tbl_user SET password=? WHERE id=?");
		$statement->execute(array(md5($_POST['password']),$_SESSION['user']['id']));

		$success_message = 'Пайдаланушы құпиясөзі сәтті жаңартылды.';
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Профильді өңдеу</h1>
	</div>
</section>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_user WHERE id=?");
$statement->execute(array($_SESSION['user']['id']));
$statement->rowCount();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
foreach ($result as $row) {
	$full_name = $row['full_name'];
	$email     = $row['email'];
	$phone     = $row['phone'];
	$photo     = $row['photo'];
	$status    = $row['status'];
	$role      = $row['role'];
}
?>


<section class="content">

	<div class="row">
		<div class="col-md-12">
				
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab_1" data-toggle="tab">Ақпаратты жаңарту</a></li>
						<li><a href="#tab_2" data-toggle="tab">Фотосуретті жаңарту</a></li>
						<li><a href="#tab_3" data-toggle="tab">Құпиясөзді жаңарту</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab_1">
							
							<form class="form-horizontal" action="" method="post">
							<div class="box box-info">
								<div class="box-body">
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Аты-жөні <span>*</span></label>
										<?php
										if($_SESSION['user']['role'] == 'Super Admin') {
											?>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="full_name" value="<?php echo $full_name; ?>">
												</div>
											<?php
										} else {
											?>
												<div class="col-sm-4" style="padding-top:7px;">
													<?php echo $full_name; ?>
												</div>
											<?php
										}
										?>
										
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Қолданыстағы фотосурет</label>
										<div class="col-sm-6" style="padding-top:6px;">
											<img src="../assets/uploads/<?php echo $photo; ?>" class="existing-photo" width="140">
										</div>
									</div>
									
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Электрондық пошта <span>*</span></label>
										<?php
										if($_SESSION['user']['role'] == 'Super Admin') {
											?>
												<div class="col-sm-4">
													<input type="email" class="form-control" name="email" value="<?php echo $email; ?>">
												</div>
											<?php
										} else {
											?>
											<div class="col-sm-4" style="padding-top:7px;">
												<?php echo $email; ?>
											</div>
											<?php
										}
										?>
										
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Телефон </label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="phone" value="<?php echo $phone; ?>">
										</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Рөлі <span>*</span></label>
										<div class="col-sm-4" style="padding-top:7px;">
											<?php echo $role; ?>
										</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form1">Ақпаратты жаңарту</button>
										</div>
									</div>
								</div>
							</div>
							</form>
						</div>
						<div class="tab-pane" id="tab_2">
							<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
							<div class="box box-info">
								<div class="box-body">
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Жаңа фотосурет</label>
										<div class="col-sm-6" style="padding-top:6px;">
											<input type="file" name="photo">
										</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form2">Фотосуретті жаңарту</button>
										</div>
									</div>
								</div>
							</div>
							</form>
						</div>
						<div class="tab-pane" id="tab_3">
							<form class="form-horizontal" action="" method="post">
							<div class="box box-info">
								<div class="box-body">
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Құпиясөз </label>
										<div class="col-sm-4">
											<input type="password" class="form-control" name="password">
										</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Құпиясөзді қайта енгізіңіз </label>
										<div class="col-sm-4">
											<input type="password" class="form-control" name="re_password">
										</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form3">Құпиясөзді жаңарту</button>
										</div>
									</div>
								</div>
							</div>
							</form>

          				</div>
          			</div>
				</div>			

		</div>
	</div>
</section>

<?php require_once('footer.php'); ?>