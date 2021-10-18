class InvalidError < StandardError
  def initialize(message)
    super(message)
  end
end

class Greeter

  def greet(name)
    begin
      if name != ''
        p "hello #{name}"
      else
        raise InvalidError.new('Cannot greet without a name!')
      end
    rescue InvalidError => e
      p "Error: #{e.message}"
    end
  end

end

greeter = Greeter.new
greeter.greet('Eugene')