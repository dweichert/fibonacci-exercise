use strict;

sub fibo {
  my $n = shift;
  if ($n < 2) {
    return $n;
  } else {
    return fibo($n-1) + fibo($n-2);
  }
}

my $i = 0;
do { print fibo($i++) . "\n";
} until ($i == 20)
