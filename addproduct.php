<?php
$connection = mysqli_connect("localhost", "root", "", "apdb");
if(isset($_POST['btnsubmit'])){
    $filename = $_FILES['file123']['name'];
    $filepath = $_FILES['file123']['tmp_name'];
    move_uploaded_file($filepath,"upload/".$filename);
    $name = $_POST['txt1'];
    $price = $_POST['txt2'];
    $category = $_POST['txt3'];
    $q = mysqli_query($connection,"insert into tbl_product(pro_name,pro_price,category_id,pro_photo)values('{$name}','{$price}','{$category}','{$filename}')");
    if($q){
        echo "<script>alert('Record Added');</script>";
    }
}
?>
<html>
<body>
    <form method="post" enctype="multipart/form-data">
        Name:<input type="text" name="txt1" /><br />
        Price:<input type="text" name="txt2" /><br />
        Categoryid:
        <?php
        $cq = mysqli_query($connection, "select * from tbl_category");
        echo "<select name='txt3'>";
        echo "<option value=''>Iphone</option>";
        echo "<option value=''>Mobile</option>";
        echo "<option value=''>SmartTv</option>";
        while($row = mysqli_fetch_array($cq)){
            echo "<option value='{$row['category_id']}'>{$row['category_name']}</option>";
        }
        echo "</select>";
        ?><br />
        Photo : <input type="file" name="file123"/><br />
        <input type="submit" name="btnsubmit" /><br />
    </form>
</body>
</html>