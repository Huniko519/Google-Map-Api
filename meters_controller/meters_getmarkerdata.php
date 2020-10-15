<?php

    include "config.php";

    $return_arr = array();

    $query_select = 'SELECT * FROM pv_meters WHERE pvb_id = "'.$_REQUEST["id"].'" ORDER BY pvb_id';

    $result = mysqli_query($con,$query_select);

    while($row = mysqli_fetch_array($result)){
        
        $return_arr[] = array("name"    => $row['pvb_meterDescription'],
                        "number"        => $row['pvb_meterNumber'],
                        "amps"          => $row['pvb_panelBoxAmps'],
                        "voltage"       => $row['pvb_voltage'],
                        "phase"         => $row['pvb_phase'],
                        "notes"         => $row['pvb_interconnectNotes']);
    }
    echo json_encode($return_arr);