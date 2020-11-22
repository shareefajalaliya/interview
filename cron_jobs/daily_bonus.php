<?php
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'https://fctguru.com/office/admin/cron_jobs/daily_bonus');
$store = curl_exec($ch);
curl_close($ch);
?>