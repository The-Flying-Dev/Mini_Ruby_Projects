class BankAccount

  attr_reader :name, :balance, :pin 

  # method to set values
  # balance has a default value
  def initialize(name, balance=1000, pincode)
    @name = name
    @balance = balance
    @pincode = pincode
  end

  def total_balance(pin)
    # checks if the provided pin is correct 
    puts pin == @pincode ? "Balance is $#{balance}." : invalid_pin    
  end

  def withdraw(pin, amount)
    # checks if the provided pin is correct 
    if pin == @pincode
      @balance -= amount
      puts "Withdrew #{amount}, balance is $#{@balance}"
    else  
      invalid_pin
    end
  end

  def deposit(pin, amount)
    # checks if the provided pin is correct 
    if pin == @pincode
      @balance += amount 
      puts "Deposited #{amount}, balance is $#{@balance}"
    else  
      invalid_pin
    end
  end


  private 

  def invalid_pin
    return "Access denied: Invalid pin"
  end

end


puts "Hello and welcome to the Ruby Atm!"
puts "Please enter your username!"

# get user input and assign it to username variable
username = gets.chomp

puts "Hello - #{username}"
puts "Now - enter your starting balance"

# get user input and assign it to startingBalance variable
# stored as an integer
startingBalance = gets.chomp.to_i
puts "Your starting balance will be #{startingBalance}"

# get user input and assign it to userPin
# stored as an integer
puts "Enter your PIN"
userPin = gets.chomp.to_i
puts "Your PIN will be #{userPin}"

puts "Lets create your account!"

# creating user object of the BankAccount class
user_account = BankAccount.new(username, startingBalance, userPin)

puts "Account created!"

# creating a new boolean variable, setting to true by default
check = true

# while loop to ensure that the user stays within the menu unless the user quits
while check == true
    puts "Welcome to the main menu. Enter a command!"
    puts"(D)isplay balance"
    puts "(W)ithdraw balance"
    puts "De(P)osit"
    puts "(Q)uit"
    choice = gets.chomp

    # case statement used to create multiple choice menu
    case choice
    when 'D'
        # stored as an integer
        puts "Enter your pin to view your balance!"
        pinInput = gets.chomp.to_i
        puts user_account.total_balance(pinInput)
    when 'W'
        puts "Enter your pin!"
        pinInput = gets.chomp.to_i
        puts "Enter how much you want to withdraw"
        # stored as an integer
        withdrawAmount = gets.chomp.to_i
        puts user_account.withdraw(pinInput, withdrawAmount)
    when 'P'
        puts "Enter your pin!"
        pinInput = gets.chomp.to_i
        puts "Enter how much you want to deposit!"
        # stored as an integer
        depositInput = gets.chomp.to_i
        puts user_account.deposit(pinInput, depositInput)
    when 'Q'
        check = false
        puts "Bye!"
    # else for catching errors
    else
        puts "Error!"
    end
end
