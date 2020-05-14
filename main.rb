# Basic Objectives:

# use classes
# the user chooses from a list of main dishes
# the user chooses 2 side dish items
# computer repeats users order
# computer totals lunch items and displays total

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

 def select_main_option
    puts "Main Dishes"
    puts "1) Pizza: $#{@prices[0][:pizza]}"
    puts "2) Chicken Fingers $#{@prices[1][:chicken]}"
    puts "3) Sandwhich $#{@prices[2][:sandwhich]}"
    puts "Enter a number to select and option"
    print ">"
    @main_dish = gets.chomp.to_i
 end 

 def select_main_dish
    case @main_dish
    when 1
        puts "you have selected Pizza"
        @order.push("Pizza")
        @cost += @prices[0][:pizza]
    when 2
        puts "you have selected Chicken Fingers"
        @order.push("Chicken Fingers")
        @cost += @prices[1][:chicken]
    when 3
        puts "you have selected Sandwhich"
        @order.push("Sandwhich")
        @cost += @prices[2][:sandwhich]
    end 
 end 

 def select_side_dish
    puts "Side Dishes"
    puts "1) Chips $#{@prices[3][:chips]}"
    puts "2) Carrots $#{@prices[4][:carrots]}"
    puts "3) Milk $#{@prices[5][:milk]}"
    puts "Enter a number to select and option"
    print ">"
    side_dish = gets.chomp.to_i

    case side_dish
    when 1
        puts "you have selected Chips"
        @order.push("Chips")
        @cost += @prices[3][:chips]
    when 2
        puts "you have selected Carrots"
        @order.push("Carrots")
        @cost += @prices[4][:carrots]
    when 3
        puts "you have selected Milk"
        @order.push("Milk")
        @cost += @prices[5][:milk]
    end 
 end 

 def total_cost
    p @order
    print "your total cost is:" 
    puts @cost
 end 

 select_main_option
select_main_dish
 select_side_dish
 select_side_dish
 total_cost
# Bonus Objectives:

# the user can choose as many "add-on" items as they want before getting total
# the user can clear their choices and start over
# the user has a wallet total they start with and their choices cannot exceed what they can pay for
# the program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
# main dishes and side items have descriptions with them and the user has an option to view the description /nutritional facts before they order (hint: think hashes)
# descriptions of food can have multiple options like nutritional facts, calories, fat content ect...(hint: think nested hashes)
# display to the user not only their total but the total fat content/calories / carbs / etc..