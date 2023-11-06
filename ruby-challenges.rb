system("clear")
def l_b
    puts "\n|--- line *** break ---|\n\n"
end

# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington']

def sortHash hash 
    hash.values.to_a.flatten.sort
end


p sortHash us_states # output -> ["Arizona", "California", "Idaho", "Maine", "Nevada", "New Hampshire", "Oregon", "Rhode Island", "Washington"]

# Pseudo code:
# Prompt: Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays.
# Input: hash
# Output: array
    # *** Steps ***
        # 1. attach .values to the hash parameter -> (gains access the a hashes values)
        # 2. attach .to_a to hash parameter -> converts the hash to an array
        # 3. attached .flatten to hash parameter -> destructures nested arrays
        # 4. attches .sort to hash parameter -> sorts the array in ascending order
        # 5. the return is implicit

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

class Bike 
    attr_accessor :model, :wheels, :current_speed
    def initialize model = "Trek"
        @model = model
        @wheels = 2
        @current_speed = 0
    end

    def bike_info 
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end

    def pedal_faster speed
        if @current_speed < 0 
            @current_speed = 0
        else 
            @current_speed += speed
        end
    end

    def brake speed
      if @current_speed > 0 
        @current_speed -= speed

        if @current_speed <= 0 
            @current_speed = 0
        end
        @current_speed
      end
    end
end 

my_bike = Bike.new
l_b
puts my_bike.bike_info # output -> The Trek bike has 2 wheels and is going 0 mph.
l_b
puts my_bike.pedal_faster 10 # -> 10
puts my_bike.pedal_faster 18 # -> 28
puts my_bike.brake 5 # -> 23
puts my_bike.brake 25 # -> 0

# Pseudo code:
# Prompt: Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.
    #*** Steps ***
    # 1. create a class Bike
        # utilize attr_accessor -> gain access to getter and setter methods for instance variables
            # :model, :wheels, :current_speed
        # utilize def initialize -> set the initial values for instance variables
            # @model = model, @wheels = 2,  @current_speed = 0
    # 2. Contruct a method bike_info
        # utilizes instance variables to construct a informational message about the class
            # returns a string: The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph.
    
# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:

# 1. Construct two methods inside the class
        # Method 1: pedal_faster: 
            # 1. method takes in number parameter
            # 2. uses a conditional to evaluate if the instance variable @current_speed in a positive number
                # if the @current_speed is positive: add the number parameter to a @current_speed
            # 3 implicitly return @current_speed
        # Method 2: brake:
            # 1. method takes in a number parameter
              # 2. uses a conditional to evaluate if the @current_speed is a positive number
                # if the @current_speed is positive: substract the number parameter from @current_speed
                # if @current_speed is less than or equal to zero: @current_speed will equal zero
            # 2. implicitly return @current_speed
