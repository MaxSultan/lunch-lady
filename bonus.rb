require_relative 'get_info'

class Customer
    include Information
    def initialize(name, budget)
        @name = name
        @budget = budget
        @order = []
        @prices = [
        {pizza: 2.50},
        {chicken: 3.00},
        {sandwhich: 2.00},
        {chips: 1.00},
        {carrots: 0.50},
        {milk: 1.00}
        ]   
        @cost = 0
        @description = {
        pizza: {description: "Pizza is a savory dish of Italian origin, consisting of a usually round, 
        flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various 
        other ingredients", 
        nutrition: {calories: 285, carbs: 35.7, fat: 10.4, protein: 12.2}},
        chicken: {description: "Chicken strips are strips of white meat that are then breaded and fried 
        in penut oil ", 
        nutrition: {calories: 240, carbs: 21, fat: 13, protein: 13}},
        sandwhich: {description: "A sandwhich is vegetables, sliced cheese or meat, placed on or between 
        slices of bread", 
        nutrition: {calories: 361, carbs: 32.5, fat: 16.7, protein: 19.3}},
        chips: {description: "Chips are thin slices of potato that have been either deep fried or baked 
        until crunchy", 
        nutrition: {calories: 160, carbs: 15, fat: 10, protein: 2}},
        carrots: {description: "Carrots are a tapering orange-colored root eaten as a vegetable", 
        nutrition: {calories: 41, carbs: 9.6, fat: 0, protein: 1}},
        milk: {description: "Milk is an opaque white fluid rich in fat and 
        protein, secreted by female mammals for the nourishment of 
        their young", 
        nutrition: {calories: 285, carbs: 35.7, fat: 10.4, protein: 12.2}}
        }

        @total_calories = 0
        @total_carbs = 0
        @total_fat = 0
        @total_protein = 0
        @finished = false
    end 

    def select_main_option
        puts "Main Dishes"
        puts "1) Pizza: $#{@prices[0][:pizza]}" + '0'
        puts "2) Chicken Fingers: $#{@prices[1][:chicken]}" + '0'
        puts "3) Sandwhich: $#{@prices[2][:sandwhich]}" + '0'
        puts "4) Get food information"
        puts "5) Start Over"
        puts "Enter a number to select and option"
        print ">"
        @main_dish = gets.chomp.to_i

        case @main_dish
        when 1
            puts "you have selected Pizza"
            @order.push("Pizza")
            @cost += @prices[0][:pizza]
            @total_calories += @description[:pizza][:nutrition][:calories]
            @total_carbs += @description[:pizza][:nutrition][:carbs]
            @total_fat += @description[:pizza][:nutrition][:fat]
            @total_protein += @description[:pizza][:nutrition][:protein]
        when 2
            puts "you have selected Chicken Fingers"
            @order.push("Chicken Fingers")
            @cost += @prices[1][:chicken]
            @total_calories += @description[:chicken][:nutrition][:calories]
            @total_carbs += @description[:chicken][:nutrition][:carbs]
            @total_fat += @description[:chicken][:nutrition][:fat]
            @total_protein += @description[:chicken][:nutrition][:protein]
        when 3
            puts "you have selected Sandwhich"
            @order.push("Sandwhich")
            @cost += @prices[2][:sandwhich]
            @total_calories += @description[:sandwhich][:nutrition][:calories]
            @total_carbs += @description[:sandwhich][:nutrition][:carbs]
            @total_fat += @description[:sandwhich][:nutrition][:fat]
            @total_protein += @description[:sandwhich][:nutrition][:protein]
        when 4
            get_main_info
        when 5
            @order = []
            @cost = 0
            @total_calories = 0
            @total_carbs = 0
            @total_fat = 0
            @total_protein = 0
            select_main_option
        end 
        select_side_dish
    end 

    def select_side_dish
        puts
        puts "Side Dishes"
        puts "1) Chips: $#{@prices[3][:chips]}" + '0'
        puts "2) Carrots: $#{@prices[4][:carrots]}" + '0'
        puts "3) Milk: $#{@prices[5][:milk]}" + '0'
        puts "4) Get description of food"
        puts "5) Start over"
        puts "Enter a number to select and option"
        print ">"
        @side_dish = gets.chomp.to_i

        case @side_dish
        when 1
            puts "you have selected Chips"
            @order.push("Chips")
            @cost += @prices[3][:chips]
            @total_calories += @description[:chips][:nutrition][:calories]
            @total_carbs += @description[:chips][:nutrition][:carbs]
            @total_fat += @description[:chips][:nutrition][:fat]
            @total_protein += @description[:chips][:nutrition][:protein]
        when 2
            puts "you have selected Carrots"
            @order.push("Carrots")
            @cost += @prices[4][:carrots]
            @total_calories += @description[:carrots][:nutrition][:calories]
            @total_carbs += @description[:carrots][:nutrition][:carbs]
            @total_fat += @description[:carrots][:nutrition][:fat]
            @total_protein += @description[:carrots][:nutrition][:protein]
        when 3
            puts "you have selected Milk"
            @order.push("Milk")
            @cost += @prices[5][:milk]
            @total_calories += @description[:milk][:nutrition][:calories]
            @total_carbs += @description[:milk][:nutrition][:carbs]
            @total_fat += @description[:milk][:nutrition][:fat]
            @total_protein += @description[:milk][:nutrition][:protein]
        when 4 
            side_dish_info
        when 5
            @order = []
            @cost = 0
            @total_calories = 0
            @total_carbs = 0
            @total_fat = 0
            @total_protein = 0
            select_main_option
        end 
    end 

    def order_more
        puts
        puts "Would you like to order more sides?"
        puts "1) Yes, I would like to order more side items"
        puts "2) No, I would like to get my total and exit"
        puts "3) Start Over"
        print '>'
        @more_selector = gets.chomp.to_i

        case @more_selector
        when 1
            select_side_dish
            order_more
        when 2
            order_info
        when 3
            @order = []
            @cost = 0
            @total_calories = 0
            @total_carbs = 0
            @total_fat = 0
            @total_protein = 0
            select_main_option
        end 
    end 

    def order_info
        puts 
        puts "You have selected the main dish #{@order[0]}"
        if @order.size >= 3
        puts "with the side dishes #{@order[1]} and #{@order[2]}"
        elsif @order.size > 3 
            "with the side dishes #{@order[1]} , #{@order[2]} , #{@order[3]}"
        end 
        print "your total cost is: " 
        puts '$' + @cost.to_s + '0'
        print "your total number of calories is: "
        puts @total_calories.to_s + 'cal'
        print "your total amount of carbs is: "
        puts @total_carbs.to_s + 'g'
        print "your total amount of fat is: "
        puts @total_fat.to_s + 'g'
        print "your total amount of protein is: "
        puts @total_protein.to_s + 'g'
    end 

    if @main_dish.to_s == 'QUIT'
        @finished = true 
        exit
    elsif @more_selector.to_s == 'QUIT'
        @finished = true 
        exit
    elsif @side_dish.to_s == 'QUIT'
        @finished = true 
        exit
    end 
end 


puts "Hey im Gretchen, whats your name?"
print '>'
cust_name = gets.chomp.to_s
puts "What is your budget for today?"
budget = gets.chomp.to_i

cust1 = Customer.new(cust_name, budget)
cust1.select_main_option
cust1.order_more

# Bonus Objectives:

# work in progress (displaying the order at the end is trick with this one)---the user can choose as many "add-on" items as they want before getting total 
# (not started) the user has a wallet total they start with and their choices cannot exceed what they can pay for
# (not started) the program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
