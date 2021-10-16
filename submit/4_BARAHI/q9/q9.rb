class User 

    attr_accessor :name

    def initialize(name,phoneNumber,email,postalCode)
        @name = name
        @phoneNumber = phoneNumber
        @postalCode = postalCode
        @email = email

    end


    def display
        p "Name: #{@name}"
        p "Phone Number: #{@phoneNumber}"
        p "Postal Code: Postal Code: #{@postalCode}"
        p "Email: #{@email}"
    end



    def name

    p "Name:"
    while @name == ""
    nameInput = gets.chomp
    if %r!@[A-Z][A-Z][A-Z]! =~ nameInput
    @name = nameInput
    else
        @name = ""
        p "enter again be sure to add @ and remember to write everything in caps"
    end
    end
    
    end



    def phoneNumber

        p "Phone Number:"
        while @phoneNumber == ""
        phoneNumberInput = gets.chomp
        if %r!\A0[5-9]0-\d{4}-\d{4}\z|\A0\d{3}-\d{3}-\d{3}\z|\A0\d{2}-\d{3}-\d{4}\z! =~ phoneNumberInput
        @phoneNumber = phoneNumberInput
        else
            @number = ""
            p "Please enter the number again remember to set it to xxx-xxxx-xxxx or xxxx-xxx-xxx or xxx-xxx-xxxx format"
        end    
    end
    end
    
    
    
    
    def postalCode

        p "Postal Code:"
        while @postalCode == ""
            postalInput = gets.chomp
            if %r!\d{3}-\d{4}|\d{7}! =~ postalInput
            @postalCode = postalInput
        else
            @postalCode = ""
            p "The postal code you entered is not valid remember that postal codes have to be 7digit"
        end
    end
    end


    

    def email


    p "Email:"
    while @email == ""
    emailInput = gets.chomp
    if /[\w+-.$#%!]+@[\w|+|-|_|$|#|%].+[\w|+|-|_|$|#|%]/ =~ emailInput
        @email = emailInput
    else
        emailInput = ""
        p "Please enter your email again remember emails have to have a @ and a . "
    end
    end

    end


end


def createUser
    name = ""
    phoneNumber = ""
    postalCode = ""
    email = ""
    
    user = User.new(name,phoneNumber,postalCode,email)
    user.name
    user.phoneNumber
    user.postalCode
    user.email
    
    user.display
    
end

createUser