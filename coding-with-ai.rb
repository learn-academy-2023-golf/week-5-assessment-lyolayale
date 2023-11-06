# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  result[vote.downcase] += 1
  result
end

p totals
                              #*************************
                              # *** Code Explanation *** 
                              #*************************

# ** 1. "taco_votes" creates a list (array) of tacos that people have voted on
# ** 2. .redcuce is utilized -> a method for adding up numbers
# ** 3. Hash.new(0) is utilized with the .reduce -> creates a default counting list, where the count for each type of taco is the interger 0
# ** 4. create a 'do block' -> call back 'function' or 'method' 
      # 'result': represents each taco in the array
      # 'vote': represents how many time each taco appears in the array
      # 'result[vote.downcase] +=1': represents converting every element in the 'taco_votes' array to lowercase and incrementing the vote variable by one each time the element is appears in the 'taco_votes' array.
      # At the end of the block, returning 'result' -> Holds the updated count of each taco type
# ** 5. Returning 'totals' -> Holds the value of the total count of each type of taco, how many times the taco ('result') appears in the array. This data is conveyed in the form of a hash.