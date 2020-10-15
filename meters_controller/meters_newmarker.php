<?php
    include "config.php";

    $lat = $_REQUEST["lat"];
    $lon = $_REQUEST["lon"];
  
    $sql_insert = 'INSERT INTO pv_meters (pvb_utilityId, pvb_rateId, pvb_alternativeRateId, pvb_recommendRateChange, pvb_meterDescription, pvb_panelBoxAmps, pvb_meterNumber, pvb_opportunityId, pvb_janKwh, pvb_febKwh, pvb_marKwh, pvb_aprKwh, pvb_mayKwh, pvb_junKwh, pvb_julKwh, pvb_augKwh, pvb_sepKwh, pvb_octKwh, pvb_novKwh, pvb_decKwh, pvb_lastUpdate, pvb_lastUpdateBy, pvb_voltage, pvb_phase, pvb_interconnectNotes, pvb_parcelIdentification, pvb_lat, pvb_lon, pvb_type, pvb_parentMeter, pvb_billBeforeSolar, pvb_billAfterSolar, pvb_billAfterSolarAlternativeRate, pvb_targetBillReduction, pvb_alternativeRateId2, pvb_alternativeRateId3, pvb_alternativeRateId4, pvb_expectedChangeInConsumption) values ("10000","10000","10000","10000","10000","10000","10000","5","10000","10000","10000","10000","10000","10000","10000","10000","10000","10000","10000","10000","10000","10000","10000","10000","10000","10000","'.$lat.'","'.$lon.'","10000","10000","10000.00","10000.00","10000.00","10000","10000","10000","10000","10.00")';

    if (mysqli_query($con, $sql_insert)) {
        $query_select_1 = "SELECT * FROM pv_meters WHERE pvb_opportunityId = '".$cop_id."' ORDER BY pvb_id";
        $result = mysqli_query($con, $query_select_1);
        $n_id = 0;
        while($row = mysqli_fetch_array($result)){
            $n_id = $n_id + 1;
        }

        $query_select_2 = "SELECT * FROM pv_meters ORDER BY pvb_id DESC LIMIT 1";
        $result = mysqli_query($con, $query_select_2);

        while($row = mysqli_fetch_array($result)){
            echo  $n_id ."||". $row["pvb_id"];
            return;
        }

    } else {
       echo "Error inserting record: " . mysqli_error($con);
    }
    
    mysqli_close($con);