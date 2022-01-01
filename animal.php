<?php
session_start();
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
    <?php
if(isset($_SESSION['count']))
{ 
       echo "<b>counter</b> ".$_SESSION['count']."<br/>";
       $_SESSION['count']++;
    }
    else{
        $_SESSION['count']=1;
        echo "session";
    }
?>

<?php
if(isset($_POST['submit']))
{
    $num1=$_POST['num1'];
    $num2=$_POST['num2'];
    $captcha=$_POST['captcha'];
    $total=$num1+$num2;
    if($captcha==$total)
    {
        echo "";
    }
    else
    {
        echo "Please fill correct captcha";
    }
    $name=$_POST['name'];
    $category=$_POST['category'];
    $image=$_POST['image'];
    $description=$_POST['description'];
    $life=$_POST['life'];
}
?>
<!--create connection for interacting with database-->
<?php
$conn=new mysqli("localhost","root","","counter");
if($conn->connect_error)
{
    die("failed". $conn->connect_error);
}
 else{
     $stmt=$conn->prepare("insert into animal(name,category,image,description,life) values(?,?,?,?,?)");
     $stmt->bind_param("ssssi", $name,$category,$image,$description,$life);
     $stmt->execute();
 }
?>
 <table>
        <tr>
            <th>name</th>
            <th>category</th>
            <th>image</th>
            <th>description</th>
            <th>life</th>
      </tr>
      <!--write a query for accessing particular category and Life expantancy-->
<?php
$insertquery="select * from animal where category='$category' && life='$life'";
$result=$conn->query($insertquery);
if($result!==false && $result->num_rows > 0)
{
    while($row=$result->fetch_array())
    {
        ?>
     <tr>
      <td><?php echo $row['name'];?></td>
      <td><?php echo $row['category'];?></td>
      <td><img src="<?php echo $row['image'];?>" width="100" height="100"></td>
      <td><?php echo $row['description'];?></td>
      <td><?php echo $row['life'];?></td>
      </tr>
      <?php
    }
}
?>
</table>
</html>
</head>
</body>