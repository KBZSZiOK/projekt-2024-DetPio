<?php
$conn = mysqli_connect ("localhost", "root", "", "kino_gr1");

if(!$conn){
    die("Brak połączenia z bazą danych: ". mysqli_connect_error());
}
$sql = "SELECT Filmy.Tytul, Rodzaj_filmu.Nazwa, Filmy.Czas_trwania_min FROM Filmy_rodzaj INNER JOIN Filmy ON Filmy_rodzaj.Filmy_ID = Filmy.ID INNER JOIN Rodzaj_filmu ON Filmy_rodzaj.Rodzaj_ID = Rodzaj_filmu.ID ORDER BY Czas_trwania_min DESC"; 
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