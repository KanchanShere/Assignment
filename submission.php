<!--create session-->
<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="design.css">
   </head>
<body>
    <form method="post"action="animal.php">
    <b>Name of the Animal</b> <input type="text"name="name"><br><br>
    <b>Category</b> <select option="Category"name="category"value="<?php echo $category;?>"><br>
        <option value="herbivores">herbivores</option>
        <option value="omnivores">omnivores</option>
        <option value="carnivores">carnivores</option>
</select>
<br><br><b>upload_photo</b><input type="file" name="image"><br><br>
<b>Description</b><textarea name="description"></textarea><br><br>
<b>Life expectancy</b><select option="Life expectancy"name="life"value="<?php echo $life;?>"><br><br>
    <option value="0-1 year">0-1 year</option>
    <option value="1-5 year">1-5 year</option>
    <option value="5-10 year">5-10 year</option>
    <option value="10+ years">10+ years</option>
</select>
<br><br>
<b>captcha</b>
<?php
$num1=rand(1,100);
$num2=rand(1,100);
echo $num1 . "+" . $num2;
?>
<input type="text"name="captcha"><br><br>
<input type="hidden"name="num1" value="<?php echo $num1; ?>">
<input type="hidden"name="num2" value="<?php echo $num2; ?>">
<input type="submit"name="submit" value="submit"class="button">
</form>
</body>
</html>