<?php
require './connection.php';
$q = mysqli_query($connection,"select * from tbl_product");

echo "<table border='1'>";
echo "<tr>";
echo "<th>Id</th>";
echo "<th>Name</th>";
echo "<th>Price</th>";
echo "<th>Category</th>";
echo "<th>Photo</th>";

echo "</tr>";
while($data = mysqli_fetch_array($q))
{
    $cq = mysqli_query($connection,"select * from tbl_subcategory where sub_category_id='{$data['sub_category_id']}'");
    $cdata = mysqli_fetch_array($cq);
    echo "<tr>";
    echo "<td>{$data['pro_id']}</td>";
    echo "<td>{$data['pro_title']}</td>";
    echo "<td>{$data['pro_price']}</td>";
    echo "<td>".$cdata["sub_category_name"]."</td>";
    echo "<td><a target='_blank' href='upload/{$data['pro_imagepath']}'>
    <img width='25' src='upload/{$data['pro_imagepath']}'/></a></td>";
    echo "</tr>";
}
echo "</table>";
?>