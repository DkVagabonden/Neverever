<?php
session_start();
if (isset($_SESSION['username'])) {
    header("location:index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Mysql --->
    <?php // require "vendors/login/loginheader.php"; ?>
    <?php include("../mysql/Config.php"); ?>
    <?php include("../mysql/info.php"); ?>
    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="https://colorlib.com/polygon/gentelella/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
    
    <title><?php echo $page_title; ?></title>
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form class="form-signin" name="form1" method="post" action="includes/checklogin.php" type="text"]>
              <h1>Login</h1>
              <div>
                <input name="myusername" id="myusername" type="text" class="form-control" placeholder="Username" autofocus />
              </div>
              <div>
                <input name="mypassword" id="mypassword" type="password" class="form-control" placeholder="Password" />
              </div>
              <div>
                <button name="Submit" id="submit" class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>
                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-fire"></i> <?php echo "$page_name"; ?></h1>
                  <p>©2016 All Rights Reserved. <?php echo "$page_name"; ?> is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
              <div id="message"></div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>