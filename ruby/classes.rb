#Everything is an object here on Ruby
class Player
    attr_accessor :name
    def play
        puts 'Cruyff is playing'
    end

end

cruyff = Player.new
cruyff.name = 'Yohan'
puts cruyff.class
cruyff.play
puts cruyff.name
