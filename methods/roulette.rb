class Roulette
  def method_missing name, *args
    person = name.to_s.capitalize
    # can not declare number inside block because it will
    # fall out of scope in the last line
    number = 0
    3.times do
      number = rand(10) + 1
      puts "#{number}"
    end
    "#{person} got a #{number}"
  end
end

round1 = Roulette.new
puts round1.minh
