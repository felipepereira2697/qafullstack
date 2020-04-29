begin
    #Try  something
    file = File.open('./hey.txt')
    if file
        puts file.read
    end


rescue Exception => e
    #catch error
    puts e
    puts e.backtrace
end