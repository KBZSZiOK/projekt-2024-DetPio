<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <img src="logo.png" id="logo">
        <nav>
            <a href="index.html" class="link">Strona główna</a>
            <a href="link2.html" class="link">Formularz</a>
            <a href="link3.php" class="link">Seanse</a>
        </nav>
    </header>
    <section class="section3">
        <?php include 'skrypt1.php'; ?>
    </section>
    <footer>
        <p id="animacja"><b>&copy 2024 Kino Kaszebe</b></p>
    </footer>
<script src="skrypt.js"></script>
</body>
</html>