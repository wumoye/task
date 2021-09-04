def task

    puts "please input name"
    input_name = gets.chomp

    if %r!@[A-Z][A-Z][A-Z]! =~ input_name

        name = input_name

    else
        puts "not much"
        name = "null"
    end
    puts "please input telephone number"
    input_telephone = gets.chomp

    if %r!\A0[5-9]0-\d{4}-\d{4}\z|\A0\d{3}-\d{3}-\d{3}\z|\A0\d{2}-\d{3}-\d{4}\z! =~ input_telephone
        telephone = input_telephone
    else
        puts "not much"
        telephone = "null"
    end
    puts "please input postal code"
    input_postal = gets.chomp
    if %r!\d{3}-\d{4}|\d{7}! =~ input_postal
        postal = input_postal
    else
        puts "not much"
        postal = "null"
    end
    puts "please input email"
    input_email= gets.chomp
    if /[\w+-.$#%!]+@[\w|+|-|_|$|#|%].+[\w|+|-|_|$|#|%]/ =~ input_email
        email = input_email
    else
        puts "not much"
        email = "null"
    end
    puts puts "name:" + name
    puts "telephone number:" + telephone
    puts "postal code:" + postal
    puts "email:" + email
end

task