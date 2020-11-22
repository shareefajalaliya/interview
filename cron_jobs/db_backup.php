<?php
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'https://fctguru.com/office/backup/create_backup');
$store = curl_exec($ch);
curl_close($ch);
?>