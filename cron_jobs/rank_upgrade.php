<?php
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'https://fctguru.com/office/admin/cron_jobs/rank_upgrade');
$store = curl_exec($ch);
curl_close($ch);
?>