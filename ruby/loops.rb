def loopNTimes(n)
    n.times do |i|
        puts 'Hey, ' + i.to_s + ' times'
    end
end

loopNTimes(4)

def forNTimes
    for item in 0...11
        puts 'Potato, ' + item.to_s
    end
end

forNTimes