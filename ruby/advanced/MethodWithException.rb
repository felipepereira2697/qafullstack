#method with Exception handling

def add(n1,n2)
    n1+n2
rescue Exception => e
    puts e.message
end

add(10,'batata')