<?php

$input = file_get_contents('addresses.txt');

$addresses = explode("\n", $input);

$output = [];

foreach($addresses as $address) {
    $output[$address] = $address;
}

$output = array_flip($output);

file_put_contents('output.txt', implode(', ', $output));
