class Robot
attr_accessor :name, :height

  def initialize(name)
    @name = name
    @height = 10
  end

  def say_hi
    puts "Hi!"
  end

  def say_name
    puts "My name is #{@name}"
  end
end

class BendingUnit < Robot
  def bend(object_to_bend)
    puts "Bend #{object_to_bend}"
  end
end

class ActorUnit < Robot
  def change_name(new_name)
    @name = new_name
  end
end


roboto = Robot.new("The Destructonator")
roboto.say_hi
roboto.say_name
