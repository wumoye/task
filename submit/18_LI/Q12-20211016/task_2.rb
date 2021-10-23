def my_fun(name)
  begin
    raise 'InvalidError' if name.empty?

    puts "hello #{name}"
  rescue Exception => e
    puts e.message
  end
end
