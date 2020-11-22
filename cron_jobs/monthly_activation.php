<?php
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'https://fctguru.com/office/admin/cron_jobs/monthly_activation');
$store = curl_exec($ch);
curl_close($ch);
?>