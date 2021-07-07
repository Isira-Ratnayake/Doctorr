<?php
/*
    Acesses database and selects the database user
*/
    //if $db_user_id is 1 user is set to patient
    if($db_user_id === 1){
        $username = 'user_patient';
        $password = 'pass_patient';
    }
    //if $db_user_id is 2 user is set to doctor
    else if($db_user_id === 2){
        $username = 'user_doctor';
        $password = 'pass_doctor';
    }
    try{
        //creates $database as a database object of the PDO class
        $database = new PDO('mysql:host=localhost;dbname=doctorrdb',$username,$password);
    }catch (PDOException $except) { //Handles exceptions thrown by try block
        $error_msg = $except->getMessage(); //Retrieves the error message of the expetion raised
        header("Location: ./error404.php?errorMsg=$error_msg"); //Calls for Error404 page to handle error
    }
?>