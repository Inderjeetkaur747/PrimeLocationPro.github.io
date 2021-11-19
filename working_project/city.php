<?php 

include_once("connection.php");

 session_start();
 if(!isset($_SESSION['id'])){
    echo "<script>window.location.href='login.php'</script>";
 }
if(!empty($_POST['add'])){
    $name= $_POST['name'];
    $description= $_POST['description'];
    $slug= $_POST['slug'];
      if(!empty($_FILES['image']['name'])){
        // echo "<pre>";
            // print_r($_FILES);
            // echo "</pre>";
        $img=$_FILES['image']['name'];
        $tmp_name=$_FILES['image']['tmp_name'];
        $path='upload/'.$img;
        move_uploaded_file($_FILES['image']['tmp_name'], $path);
      }

      $query="insert into city(name,description,slug,image)values('$name','$description','$slug','$path')";
      $result=mysqli_query($conn,$query);
}

?>

<html>
    <head>
        <title>Prime Locations</title>
        <link href="Primelocation.css" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">
            <header>
                <div class="Logo">
                    <img src="Logo.jpg" alt="240x240px Logo.jpg"/>
                </div><!--END OF LOGO--> 
                <div class="Prime">
                    <img src="Primelocation.jpg" alt="960x320px Primelocation.jpg"/>
                </div><!--END OF PRIME-->    
            </header><!--END OF HEADER-->
            <div id="banner">
                <img src="Banner2.jpg" alt="Banner1"/>
                <img src="Banner1.jpg" alt="Banner2"/>
                <img src="Banner.jpg" alt="Banner3"/>
            </div><!--END OF BANNER-->
            <?php include_once("header.php");?>
            <!--PROFILE START -->
            <div class="profile">
                <form method="POST" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td>
                            <h1>City Details</h1>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <p> Name</p>
                        </td>
                        <td>
                            <input type="text" name="name" placeholder="Enter Your Name"/>
                        </td>
                    </tr>
                
                    <tr>
                        <td>
                            <p>Description</p>   
                        </td>
                        <td>
                            <textarea rows="3" cols="30" name="description"placeholder="Enter Description"></textarea>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <p>Slug</p>
                        </td>
                        <td>
                            <input type="text" name="slug" Placeholder="Enter Slug"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <p>Image</p>
                        </td>
                        <td>
                            <input type="file" name="image" value="Upload Image"/>
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="Submit" name="add"/>

                            <!-- <input type="reset" value="Reset" name="reset"/> -->
                        </td>
                    </tr>
                </table>
                </form>
            </div><!--END OF PROFILE-->
            <!--PROFILE END-->
            <?php include_once("footer.php");?>
        </div><!--END OF WRAPPER-->     
    </body>
</html>