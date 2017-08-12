class Computer
  def initialize computer_id, data_source
    @id = computer_id
    @data_source = data_source
  end

  def get gear
    info = @data_source.send "get_#{gear}_info", @id
    price = @data_source.send "get_#{gear}_price", @id
    result = "#{gear.capitalize}: #{info}, #{price}"
    return "* #{result}" if price > 99
    result
  end
end
