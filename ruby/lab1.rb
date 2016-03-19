#Exercises 1
puts "--------------------#Exercises 1-----------------------------"
stringVal=  "The quite brown fox jumps over the lazy dog"
puts "Normal : " +  stringVal
puts "Reverse : " +  stringVal.reverse
puts "Capitalize : " + stringVal.capitalize
puts "Coute : " + stringVal.length.to_s
puts "Add first 10 char : " + stringVal[0..9] + "Muhaiman Heng"
puts "Add first 50 char : " + stringVal[0..19] + "Muhaiman Heng"
puts "Datermine the 5 : " + stringVal[4]

#Exercises 2
puts "--------------------#Exercises 2-----------------------------"
begin
    puts "Hi, my name ruby!"
    puts "Whate is you name?"
    name = gets.chomp
    puts "Hi #{name} greate to meet you"

    puts "Do you want Answer other Question?"
    askOther = gets.chomp
  if askOther == 'Y' then
      puts "How old are you?"
      age =gets.chomp
      puts "#{age}  year old"
      puts "Where do you like?"
      like = gets.chomp
      puts "i like #{like}"
      puts "Whete is youe job?"
      job = gets.chomp
      puts "my job is #{job} "
  end 
    
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'

#Exercises 3
puts "--------------------#Exercises 3-----------------------------"
arr3 =%w[a b c d e f]
puts "Retrive the 3 : " + arr3[1..3].to_s
puts "Retrieve the first two element : " + arr3[0..1].to_s
puts "Retrieve the last element : " + arr3.last
arr3.delete('c')
puts "Delete the duplicate 'c' : " + arr3.to_s 
puts "Generate a new string which is the first 20 character of the input string : Exercises 1 "
arr3 << 'g'
puts "Add the character 'g' to the end of the array : " + arr3.to_s 


#Exercises 4
puts "--------------------#Exercises 4-----------------------------"
sum41 = 0
1.upto(100) do  |num|
  sum41 += num
end
puts "Sum the number from 1 to 100 : " + sum41.to_s
arr42 = %w[a b c d e f g h i j]
3.times do |num|
   arr42.delete_at(0)
   puts "Deletet #{num} : " + arr42.to_s
end
#Exercises 5
puts "--------------------#Exercises 5-----------------------------"
puts "Print every charater from A-K : "
'A'.upto('K') do |charVal|
  puts charVal
end
puts "Print all multiples of 7 up to 140 (use a rang) : "
multi52 = 1
7.upto(140) do  |num|
  multi52 *= num
  puts multi52
end
#Exercises 6
puts "--------------------#Exercises 6-----------------------------"
bank6 = { "Jane Doe" => 10100, "Jim Doe" => 6000 }
puts "Print all the name and bank balances on the screen. : "
bank6.each do |key, value|
    puts "#{key}:#{value}"
end

sum62 = 0
bank6.each do |key, value|
  sum62 += value
end
puts "Everyone want to pool their money to buy a car, how much do they have : #{sum62}"

#Exercises 7
puts "--------------------#Exercises 7-----------------------------"
userArr7 = [{:name => "Hitesh" , :email => "Hitesh@nida.co.th",:address => "address"} ,
            {:name => "John" , :email => "John@nida.co.th",:address => "address"} ,
            {:name => "Anil" , :email => "Anil@nida.co.th",:address => "address"} ]
           
puts "Search for a user by their name : " 
puts userArr7.find {|x| x[:name] == "Hitesh"}
puts "Print the email address of that user : "
 userArr7.each { |key| puts key[:email] }
#Exercises 8
puts "--------------------#Exercises 8-----------------------------"
def divideInteger(int1,int2)
  int1 / int2
end
puts "Write a method to divide an integer by another integer : " +  divideInteger(20,5).to_s

#Exercises 9
puts "--------------------#Exercises 9-----------------------------"
def add2number(num1,num2)
   num1.to_i + num2.to_i
end
puts "Add 2 number : " + add2number(2,6).to_s
def multiply3number(num1,num2,num3)
  num1.to_i * num2.to_i  *  num3.to_i
end
puts "Multiply 3 numbers : " + multiply3number(2,2,2).to_s
def returnTemperature
  23
end
puts "Return a string with an interpolate value : #{returnTemperature} "
def descriptionTemperature
    if returnTemperature < 20
          return "cool"
    elsif returnTemperature > 30
          return "hot" 
    else
        return "narmal"
    end
end
puts "Return a description of the temperature provided : #{descriptionTemperature}" 
#Exercises 10
puts "--------------------#Exercises 10-----------------------------"
def calculator(num1 , opr , num2)
  case opr
     when "+" then num1.to_i + num2.to_i
     when "-" then num1.to_i - num2.to_i
     when "*" then num1.to_i * num2.to_i
     when "/" then num1.to_i / num2.to_i
     when "^" then num1.to_i ** num2.to_i
     else "Unknown"
  end
end
puts "Return calculator 2+5 : #{calculator(2,"+",5)}" 
puts "Return calculator 2-5 : #{calculator(2,"-",5)}" 
puts "Return calculator 2/5 : #{calculator(2,"/",5)}"
puts "Return calculator 2^5 : #{calculator(2,"^",5)}"  
#Exercises 11
puts "--------------------#Exercises 11-----------------------------"
def rangBetween(floatNumber)
  if floatNumber >= 1.00 && floatNumber < 1.50
    return " #{floatNumber} is between 1.00 And 1.50 "
  elsif floatNumber >= 1.50 && floatNumber <= 1.99
    return " #{floatNumber} is between 1.50 And 1.99 "
  else
    return " #{floatNumber} Error "
  end
end
puts "Range float Number between two Number :   #{rangBetween(1.7)}"
puts "Range float Number between two Number :   #{rangBetween(1.4)}"
#Exercises 12
puts "--------------------#Exercises 12-----------------------------"
hash12 = {"john" => 100 , "bed" => 45,"bob" => 90} 
puts "Sort a hash key in descending order : "
puts hash12.keys.sort.reverse 

#Exercises 13
puts "--------------------#Exercises 13-----------------------------"
class Users
  def initialize(name,email,age)
      @name = name
      @email =email
      @age = age
  end
  
  def say_birthday
      "Happy Birthday  #{@age}"
  end
  
  def to_s
    "My name : #{@name} age : #{@age}  emai: #{@email}"
  end
 
  def age
     @age
  end
  
  def age=(age)
     @age = age
  end
end
puts "Create Users Class that has name ,email and age : "
test_users = Users.new('test','test@test.co.th',1)
puts test_users
test_users.age=12
puts test_users
puts test_users.say_birthday

#Exercises 14
puts "--------------------#Exercises 14-----------------------------"
class Users14
  
  attr_accessor :age
  
  def initialize(name,email,age)
      @name = name
      @email =email
      @age = age
  end
  
  def say_birthday
      "Happy Birthday  #{@age}"
  end
  
  def to_s
    "My name : #{@name} age : #{@age}  emai: #{@email}"
  end
  
end
puts "replace the getter and setter in the previous execise with att_accessor code : "
test_users14 = Users14.new('test','test@test.co.th',1)
puts test_users14
test_users14.age=12
puts test_users14
puts test_users14.say_birthday
