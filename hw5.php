<html>
<head>
    <title>CORONAVIRUS DASHBOARD USA</title>
    <link href="styling.css" rel="stylesheet">
</head>
<body>

<h1> COVID-19 PANDEMIC DASHBOARD </h1>

<table id="covid" align="center" class="table table-sortable" border="1">
    <thead>
        <tr>
            <th> STATE </th>
            <th> CASES </th>
            <th> DEATHS </th>
            <th> NEW CASES </th>
            <th> NEW DEATHS </th>
        </tr>
    </thead>
    <tbody>
<?php
    $cnx = new mysqli('localhost', 'root', '3301', 'hw5');

    if ($cnx->connect_error)
        die('Connection failed: ' . $cnx->connect_error);

    $newCases = 0;
    $newDeaths = 0;

    $query = 'SELECT * FROM states ORDER BY cases DESC';
    $cursor = $cnx->query($query);
    
    while ($row = $cursor->fetch_assoc() ) {
        echo '<tr>';
        if($row['state']=="Pennsylvania"){
            echo '<td><a href="county.php">Pennsylvania</a>   </td><td>' . $row['cases'] . '</td><td align="right">' . $row['deaths'] .'</td> ';
            $newCases = $row['cases'] - $row['todayCases'];
            $newDeaths = $row['deaths'] - $row['todayDeaths'];
            echo '<td>' . $newCases .'</td>';
            echo '<td>' . $newDeaths .'</td>';
            echo '</tr>';
        }
        else{
            echo '<td>' . $row['state'] . '</td><td>' . $row['cases'] . '</td><td align="right">' . $row['deaths'] .'</td> ' ;
            $newCases = $row['cases'] - $row['todayCases'];
            $newDeaths = $row['deaths'] - $row['todayDeaths'];
            echo '<td>' . $newCases .'</td>';
            echo '<td>' . $newDeaths .'</td>';
            echo '</tr>';
        }
    }
    
    $cnx->close();
?>
</tbody>
</table>
<script src="script3.js"> </script>
<script type="text/javascript">
<!--
var TSort_Data = new Array ('covid', 's', 'i', 'i','i','i');
tsRegister();
// -->
</script>
</body>
</html>