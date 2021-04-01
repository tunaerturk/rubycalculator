def getNumbers(workingArray)
    
      puts "Please enter the numbers you'd like me to use. Type 'done' when you're finished."
      nextnum = 0
      
        while nextnum != "done"
          nextnum = gets.chomp!
            if nextnum == "done"
              puts "Calculating!"
            elsif nextnum != "0" && nextnum.to_i == 0
              
              puts "That's not a number."
              nextnum = "done"
              
           else
              workingArray << nextnum.to_i
              
          end
        end
    end
    
    def add(workingArray)
      
      sum = 0
     
      workingArray.each {|num| sum += num}
      
        puts "Your sum is #{sum}"
    end
    
    def subtract(workingArray)
      
      dif = 0 + workingArray[0] + workingArray[0]
      
      workingArray.each {|num| dif -= num}
      
      puts "Your difference is #{dif}"
    end
    
    def multiply(workingArray)
      prod = 1
      
      workingArray.each {|num| prod *= num}
     
      puts "Your product is #{prod}"
    end
    
    def divide(workingArray)
      quot = 1 * workingArray[0] * workingArray[0]
      
      workingArray.each {|num| quot /= num }
      
      puts "Your quotient is #{quot}"
    end
    
    
    puts "Welcome to Calculator."
    puts "Would you like to calculate something?"
    puts "y/n"
    firstIn = gets.chomp!.downcase
    
    if firstIn == "n"
    
      puts "That's too bad. Bye!"
    end
    if firstIn != "n" && firstIn != "y"
    
      puts "I don't get it. Shutting down."
    end
    
    while firstIn == "y"
    
    
    workingArray = [] 
    
    puts "What operation would you like to perform?"
    puts "Your options are: Add, Subtract, Multiply, Divide, Exponent, Square Root"
    puts "Please enter your choice:"
    choice = gets.chomp!.downcase
    
    
    case choice
    when "exponent"
    
      puts "Please enter the initial value (the one we'll be raising to a power)."
      starting_num = gets.chomp!
      
    
      if starting_num != "0" && starting_num.to_i == 0
      
        puts "Hey, that's not a number."
      else
        starting_num = starting_num.to_i
        
        puts "Please enter the power you'd like to raise it to."
        
        power = gets.chomp!
        if power != "0" && power.to_i == 0
          puts "Hey, that's not a number."
        else
          power = power.to_i
          exp = starting_num ** power
          puts "Your exponent is #{exp}"
        end
      end
    
    when "square root"
      puts "Please enter the number you'd like to find the square root of."
      to_square = gets.chomp!
      if to_square != "0" && to_square.to_i == 0
          puts "Hey, that's not a number."
      else
        to_square = to_square.to_i
        sqr = to_square ** (0.5)
        puts "Your square root is #{sqr}"
      end
    
    
    when "add"
      getNumbers(workingArray)
      
      add(workingArray)
    
    when "subtract"
      getNumbers(workingArray)
      
      subtract(workingArray)
    
    when "multiply"
      getNumbers(workingArray)
      
      multiply(workingArray)
    
    when "divide"
      getNumbers(workingArray)
      
      divide(workingArray)
    
    else
      puts "That's not an option."
    end
    
    puts "Would you like to calculate something else?"
    
    puts "y/n"
    firstIn = gets.chomp.downcase
    
    
    if firstIn == "n"
    
      puts "k bye!"
    end
    
    if firstIn != "n" && firstIn != "y"
    
      puts "I don't get it. Shutting down."
    end
    
    end
