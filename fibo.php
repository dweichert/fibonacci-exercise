<?php

function fibo($n) {
    return 2>$n ? $n : fibo($n-1) + fibo($n-2);
}

for ($i = 0; $i < 20; $i++) {
    echo fibo($i++) . "\n";
}
