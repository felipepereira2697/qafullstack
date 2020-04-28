#Ruby understands that the last code instruction is the return
def say_hello(name)
    puts 'Hello, '+name
end

say_hello('Felipe')

def add(v1, v2)
    value = v1+v2
    return value
end

puts add(10,4)