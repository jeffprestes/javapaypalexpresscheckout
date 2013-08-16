<?php

include "paypal-auth.php";

//if the code parameter is available, the user has gone through the auth process
if (isset($_GET['code']))   {
    
    //initialize a new PayPal Access instance
    $ppaccess = new PayPalAccess();
    
    //make request to exchange code for an access token
    $token = $ppaccess->get_access_token();
    //echo "<h1>Token</h1>";
    //echo "<pre>" . print_r($token) . "</pre>";
    
    //use access token to get user profile
    $profile = $ppaccess->get_profile();
    //echo "<h1>User Profile</h1>";
    //print_r($profile);
    //echo $profile->name;
    //echo $profile->email;
    
    //echo "<script>window.top('http://php-ppbrasil.rhcloud.com/peixe/homelogado.php?nome=" . $profile->name . "&email=" . $profile->email . "');</script>";
    
}
?>
<script>
    var jan = window.opener.top;
    //alert(window.opener.location.href());
    jan.location.href='http://php-ppbrasil.rhcloud.com/peixe/homelogado.php?nome=<?=$profile->name ?>&email=<?=$profile->email?>';
    window.close();
</script>