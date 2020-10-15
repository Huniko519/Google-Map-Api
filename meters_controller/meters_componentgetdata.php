<?php

    include "config.php";

    $return_arr = array();
    $query_select = 'SELECT * FROM crm_opportunities WHERE cop_id = "'.$cop_id.'"';
    $result = mysqli_query($con,$query_select);
    
    while($row = mysqli_fetch_array($result)){
        
        $cop_name       = $row['cop_name'];
        $cop_country    = $row['cop_country'];
        $cop_county     = $row['cop_county'];
        $cop_state      = $row['cop_state']; 
        $cop_zip        = $row['cop_zip'];
        
        $return_arr[] = array("cop_name"     => $cop_name,
                            "cop_zip"        => $cop_zip,
                            "cop_country"    => $cop_country,
                            "cop_county"     => $cop_county,
                            "cop_state"      => $cop_state);
                        
        echo json_encode($return_arr);
        return;
    }