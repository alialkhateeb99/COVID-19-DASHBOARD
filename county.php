<html>
<head>
    <title>County Data</title>
    <link href="styling.css" rel="stylesheet">
</head>
<body>
<h1>CORONAVIRUS DASHBOARD PENNSYLVANIA COUNTIES</h1>

<table id="covid" align="center" class="table table-sortable" border="1">
<thead>
        <tr>
            <th> County </th>
            <th> CASES </th>
            <th> DEATHS </th>
        </tr>
    </thead>
<?php
    $cnx = new mysqli('localhost', 'root', '3301', 'hw5');

    if ($cnx->connect_error)
        die('Connection failed: ' . $cnx->connect_error);

    $query = 'SELECT * FROM counties ORDER BY cases DESC';
    $cursor = $cnx->query($query);
    while ($row = $cursor->fetch_assoc()) {
        echo '<tr>';
        echo '<td>' . $row['county'] . '</td><td>' . $row['cases'] . '</td><td align="right">' . $row['deaths'] .'</td>';
        echo '</tr>';
    }

    $cnx->close();
?>
</table>
<script src="script3.js"> </script>

<script type="text/javascript">
<!--
var TSort_Data = new Array ('covid', 's', 'i', 'i');
tsRegister();
// -->
</script>
</body>
</html>