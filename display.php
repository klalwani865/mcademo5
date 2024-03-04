<?php
$connection = mysqli_connect("localhost","root","","apdb");
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
    $cq = mysqli_query($connection,"select * from tbl_category where category_id='{$data['category_id']}'");
    $cdata = mysqli_fetch_array($cq);
    echo "<tr>";
    echo "<td>{$data['pro_id']}</td>";
    echo "<td>{$data['pro_name']}</td>";
    echo "<td>{$data['pro_price']}</td>";
    if ($cdata && $cdata["category_id"] == !'') {
        echo "<td>".$cdata["category_name"]."</td>";
    } else {
        echo "<td> no class</td>";
    }
    echo "<td><a target='_blank' href='upload/{$data['pro_photo']}'>
    <img width='25' src='upload/{$data['pro_photo']}'/></a></td>";
    echo "</tr>";
}
echo "</table>";
?>