<?php

declare(strict_types=1);

ini_set('memory_limit', '-1');

$a = range(1, 10_000_000);
$b = range(1, 10_000_000);

for ($i = 0; $i < count($a); ++$i) {
    $a[$i] += $b[$i];
}

echo "last element = {$a[count($a) - 1]}";
