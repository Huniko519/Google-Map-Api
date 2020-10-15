<?php
    include "config.php";
    
    $sql_update = 'UPDATE pv_meters SET pvb_lat="'.$_REQUEST["lat"].'", pvb_lon="'.$_REQUEST["lon"].'" WHERE pvb_id = "'.$_REQUEST["id"].'"';

    if (mysqli_query($con, $sql_update)) {
      echo "Record updated successfully";
    } else {
      echo "Error updating record: " . mysqli_error($con);
    }
    
    mysqli_close($con);