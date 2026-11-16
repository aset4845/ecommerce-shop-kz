<?php require_once('header.php'); ?>

<section class="content-header">
    <div class="content-header-left">
        <h1>Орта деңгейлі санаттарды қарау</h1>
    </div>
    <div class="content-header-right">
        <a href="mid-category-add.php" class="btn btn-primary btn-sm">Жаңа қосу</a>
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
                    <th>Орта деңгейлі санат атауы</th>
                    <th>Жоғарғы деңгейлі санат атауы</th>
                    <th>Әрекет</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $i=0;
                $statement = $pdo->prepare("SELECT * 
                                    FROM tbl_mid_category t1
                                    JOIN tbl_top_category t2
                                    ON t1.tcat_id = t2.tcat_id
                                    ORDER BY t1.mcat_id DESC");
                $statement->execute();
                $result = $statement->fetchAll(PDO::FETCH_ASSOC);							
                foreach ($result as $row) {
                    $i++;
                    ?>
                    <tr>
                        <td><?php echo $i; ?></td>
                        <td><?php echo $row['mcat_name']; ?></td>
                        <td><?php echo $row['tcat_name']; ?></td>
                        <td>
                            <a href="mid-category-edit.php?id=<?php echo $row['mcat_id']; ?>" class="btn btn-primary btn-xs">Өңдеу</a>
                            <a href="#" class="btn btn-danger btn-xs" data-href="mid-category-delete.php?id=<?php echo $row['mcat_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Жою</a>
                        </td>
                    </tr>
                    <?php
                }
                ?>
            </tbody>
          </table>
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
                <p>Бұл элементті жойғыңыз келетініне сенімдісіз бе?</p>
                <p style="color:red;">Сақ болыңыз! Осы орта деңгейлі санаттағы барлық өнімдер мен соңғы деңгейлі санаттар барлық кестелерден (тапсырыс кестесі, төлем кестесі, өлшем кестесі, түс кестесі, рейтинг кестесі және т.б.) жойылады.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Бас тарту</button>
                <a class="btn btn-danger btn-ok">Жою</a>
            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>