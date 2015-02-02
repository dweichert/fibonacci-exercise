repeat with i from 0 to 19
  log fibo(i)
end repeat

on fibo(n)
  if (n = 0) then
    return 0
  else if (n = 1) then
    return 1
  else
    return fibo(n-1) + fibo(n-2)
  end if
end fibo
