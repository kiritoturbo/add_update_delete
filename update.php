<?php
include 'connect.php';
$id = $_GET['Id'];
if (isset($_POST['submit'])) {
  $name = $_POST['name'];
  $email = $_POST['email'];
  $mobile = $_POST['mobile'];
  $password = $_POST['password'];

  $sql = "update `ttuser` SET Name='$name', Email='$email', Mobile='$mobile', Password='$password' where Id=$id";
  $result = mysqli_query($conn, $sql);
  if ($result) {
    echo "Sửa thành công";
    //   header('location:display.php');
  } else {
    die(mysqli_error($conn));
  }
}
?>



<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>crud operation</title>
</head>

<body>
  <div class="container my-5">
    <form method="post">
      <div class="mb-3">
        <label>Name</label>
        <input type="text" class="form-control" placeholder="Enter your name" name="name" autocomplete="off">
      </div>
      <div class="mb-3">
        <label>Email</label>
        <input type="text" class="form-control" placeholder="Enter your email" name="email" autocomplete="off">
      </div>
      <div class="mb-3">
        <label>Mobile</label>
        <input type="text" class="form-control" placeholder="Enter your mobile number" name="mobile" autocomplete="off">
      </div>
      <div class="mb-3">
        <label>Password</label>
        <input type="password" class="form-control" placeholder="Enter your password" name="password" autocomplete="off">
      </div>

      <button type="submit" class="btn btn-primary" name="submit">Update</button>
    </form>
  </div>
</body>

</html>