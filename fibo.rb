def fibo(n)
    case n
    when 0
        return 0
    when 1
        return 1
    else
        return fibo(n-1) + fibo(n-2)
    end
end

i = 0
until i == 20
    puts fibo(i)
    i += 1
end
