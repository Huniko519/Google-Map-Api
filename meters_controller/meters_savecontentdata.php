<?php

    include "config.php";
    
    $sql_update = 'UPDATE pv_meters SET pvb_meterDescription ="'.$_REQUEST["meterdescription"].'", pvb_panelBoxAmps ="'.$_REQUEST["panelboxamps"].'", pvb_meterNumber ="'.$_REQUEST["meternumber"].'", pvb_voltage ="'.$_REQUEST["voltage"].'", pvb_phase ="'.$_REQUEST["phase"].'", pvb_interconnectNotes ="'.$_REQUEST["interconnectnotes"].'" WHERE pvb_id = "'.$_REQUEST["id"].'"';

    if (mysqli_query($con, $sql_update)) {
      echo "Record updated successfully";
    } else {
      echo "Error updating record: " . mysqli_error($con);
    }
    
    mysqli_close($con);