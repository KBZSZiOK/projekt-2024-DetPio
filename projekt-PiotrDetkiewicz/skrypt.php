<?php 
 
$conn = mysqli_connect ("localhost", "root", "", "kino_gr1");

if(!$conn){
    die("Brak połączenia z bazą danych: ". mysqli_connect_error());
}

$imie = $_POST['imie'];
$nazwisko = $_POST['nazwisko'];
$email = $_POST['email'];

$sql = "INSERT INTO Klienci (Imie, Nazwisko, Mail) VALUES ('$imie', '$nazwisko', '$email')";

if ($conn->query($sql) === TRUE) {
    echo "Dane zostały zapisane pomyślnie!";
} else {
    echo "Błąd: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>