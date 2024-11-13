<?php
$conn = mysqli_connect ("localhost", "root", "", "kino_gr1");

if(!$conn){
    die("Brak połączenia z bazą danych: ". mysqli_connect_error());
}
$sql = "SELECT Filmy.Tytul, Filmy.Czas_trwania_min, Seanse.Termin, Seanse.Liczba_wolnych_miejsc, SALE.Ilosc_miejsc FROM Seanse INNER JOIN Filmy ON Seanse.Film_ID = Filmy.ID INNER JOIN SALE ON Seanse.Sala_ID = SALE.ID; ";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'>";    
    echo "<tr>";                  
     
    while ($column = $result->fetch_field()) {
        echo "<th>" . $column->name . "</th>";
    }
        echo "</tr>";
    
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        foreach ($row as $cell) {
            echo "<td>" . $cell . "</td>";
        }
            echo "</tr>";
        }
        echo "</table>";  
    } else {
        echo "Brak wyników.";
    }

$conn->close();
?>