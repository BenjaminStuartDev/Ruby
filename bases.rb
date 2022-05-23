def main
    p dec_to_b5(22)
end

def dec_to_b5(num)
    base5 = []
    while num.positive?
        base5 << (num % 5)
        num = (num / 5).floor
    end
    base5.reverse!.join.to_i
end
main
