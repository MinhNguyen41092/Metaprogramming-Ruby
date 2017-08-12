# refactor computer class v2

class Computer
  def initialize computer_id, data_source
    @id = computer_id
    @data_source = data_source
  end

  def method_missing name
    #use default method_missing if data source does not have the method
    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send "get_#{name}_info", @id
    price = @data_source.send "get_#{name}_price", @id
    result = "#{name.upperCase}: #{info}, #{price}"
    return if price > 99
    result
  end

  # call respond_to? on method will return false
  # override respond_to_missing? to make it return true
  # always to this when override method_missing
  def respond_to_missing? method, include_private = false
    @data_source.respond_to? "get_#{method}_info" || super
  end
end

computer = Computer.new id, data_source
# call method_missing because there is no mouse method in class
# if data source has mouse, get info and price
# return result
computer.mouse
