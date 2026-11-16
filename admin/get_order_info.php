<?php
require_once('config.php'); // подключение PDO

if (!isset($_GET['id'])) {
    echo "ID тапсырысы көрсетілмеген.";
    exit;
}

$id = intval($_GET['id']);

$statement1 = $pdo->prepare("SELECT * FROM tbl_payment WHERE id = ?");
$statement1->execute([$id]);
$row = $statement1->fetch(PDO::FETCH_ASSOC);

if ($row):
?>
    <p><strong>Тапсырыс ID:</strong> <?= htmlspecialchars($row['id']) ?></p>
    <p><strong>Аты:</strong> <?= htmlspecialchars($row['customer_name']) ?></p>
    <p><strong>Email:</strong> <?= htmlspecialchars($row['customer_email']) ?></p>
    <p><strong>Төлем күні:</strong> <?= htmlspecialchars($row['payment_date']) ?></p>
    <p><strong>Сома:</strong> <?= htmlspecialchars($row['paid_amount']) ?> ₸</p>
    <p><strong>Төлем әдісі:</strong> <?= htmlspecialchars($row['payment_method']) ?></p>
    <p><strong>Төлем статусы:</strong> <?= htmlspecialchars($row['payment_status']) ?></p>
    <p><strong>Жеткізу статусы:</strong> <?= htmlspecialchars($row['shipping_status']) ?></p>
<?php
else:
    echo "Тапсырыс табылмады.";
endif;
?>
