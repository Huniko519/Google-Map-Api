<?php
    include "config.php";
    
    $sql_delete = 'DELETE FROM pv_meters WHERE pvb_id = "'.$_REQUEST["id"].'"';
    if (mysqli_query($con, $sql_delete)) {
      echo "Record delete successfully";
    } else {
      echo "Error delete record: " . mysqli_error($con);
    }
    
    mysqli_close($con);