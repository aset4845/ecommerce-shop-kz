<?php
// order-detail.php
require_once('header.php');

if (!isset($_GET['id'])) {
    header('location: order.php');
    exit;
}

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE id=?");
$statement->execute([$_GET['id']]);
$data = $statement->fetch(PDO::FETCH_ASSOC);

// Получаем связанные товары из tbl_order
$statement_order = $pdo->prepare("SELECT product_name FROM tbl_order WHERE payment_id = ?");
$statement_order->execute([$data['payment_id']]);
$products = $statement_order->fetchAll(PDO::FETCH_ASSOC);
?>

<h3>Ақпарат</h3>
<p><strong>Төлем №:</strong> <?php echo $data['payment_id']; ?></p>
<p><strong>Төлем күйі:</strong> <?php echo $data['payment_status']; ?></p>
<p><strong>Аты-жөні:</strong> <?php echo $data['customer_name']; ?></p>
<p><strong>Электронды пошта:</strong> <?php echo $data['customer_email']; ?></p>
<p><strong>Жеткізу күйі:</strong> <?php echo $data['shipping_status']; ?></p>
<p><strong>Төлем әдісі:</strong> <?php echo $data['payment_method']; ?></p>

<h4>Тапсырыс берілген тауарлар:</h4>
<ul>
    <?php foreach ($products as $product): ?>
        <li><?php echo htmlspecialchars($product['product_name']); ?></li>
    <?php endforeach; ?>
</ul>

<a href="order.php" class="btn btn-default">Артқа</a>
