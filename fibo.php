<?php

function fibo($n) {
    switch ($n)
    {
        case 0:
            return 0;
        case 1:
            return 1;
        default:
            return fibo($n-1) + fibo($n-2);
    }
}

$i = 0;
while ($i < 20)
{
    echo fibo($i++) . "\n";
}
