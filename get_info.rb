
module Information
    
    def get_main_info
    puts "what food would you like information about?"
            puts "1) Pizza"
            puts "2) Chicken Fingers"
            puts "3) Sandwhich"
            print '>'
            info_selector = gets.chomp.to_i
        case info_selector
        when 1 
            puts "What would you link to know about Pizza?"
            puts "1) General description"
            puts "2) Nutritional Information"
            print '>'
            info = gets.chomp.to_i
            case info
            when 1
                puts @description[:pizza][:description]
            when 2
                puts "Pizza has #{@description[:pizza][:nutrition][:calories]} calories, 
                #{@description[:pizza][:nutrition][:carbs]}g of carbs, 
                #{@description[:pizza][:nutrition][:fat]}g of fat, 
                and #{@description[:pizza][:nutrition][:protein]}g of protein"
            end 
        when 2
            puts "What would you link to know about Chicken Fingers?"
            puts "1) General description"
            puts "2) Nutritional Information"
            print '>'
            info = gets.chomp.to_i
                case info
                when 1
                    puts @description[:chicken][:description]
                when 2
                    puts "Chicken Fingers have #{@description[:chicken][:nutrition][:calories]} calories, 
                #{@description[:chicken][:nutrition][:carbs]}g of carbs, 
                #{@description[:chicken][:nutrition][:fat]}g of fat, 
                and #{@description[:chicken][:nutrition][:protein]}g of protein"
                end 
        when 3
            puts "What would you link to know about Sandwhiches?"
            puts "1) General description"
            puts "2) Nutritional Information"
            print '>'
            info = gets.chomp.to_i
                case info
                when 1
                    puts @description[:sandwhich][:description]
                when 2
                    puts "Sandwhiches have #{@description[:sandwhich][:nutrition][:calories]} calories, 
                    #{@description[:sandwhich][:nutrition][:carbs]}g of carbs, 
                    #{@description[:sandwhich][:nutrition][:fat]}g of fat, 
                    and #{@description[:sandwhich][:nutrition][:protein]}g of protein"
                end 
        end 
        select_main_option
    end 

    def side_dish_info
        puts "what food would you like information about?"
            puts "1) Chips"
            puts "2) Carrots"
            puts "3) Milk"
            print '>'
            info_selector = gets.chomp.to_i

            case info_selector
            when 1 
                puts "What would you link to know about Chips?"
                puts "1) General description"
                puts "2) Nutritional Information"
                print '>'
                info = gets.chomp.to_i
                case info
                when 1
                    puts @description[:chips][:description]
                when 2
                    puts "Sandwhiches have #{@description[:chips][:nutrition][:calories]} calories, 
                    #{@description[:chips][:nutrition][:carbs]}g of carbs, 
                    #{@description[:chips][:nutrition][:fat]}g of fat, 
                    and #{@description[:chips][:nutrition][:protein]}g of protein"
                end 
            when 2
                puts "What would you link to know about Carrots?"
                puts "1) General description"
                puts "2) Nutritional Information"
                print '>'
                info = gets.chomp.to_i
                case info
                when 1
                    puts @description[:carrots][:description]
                when 2
                    puts "Sandwhiches have #{@description[:carrots][:nutrition][:calories]} calories, 
                    #{@description[:carrots][:nutrition][:carbs]}g of carbs, 
                    #{@description[:carrots][:nutrition][:fat]}g of fat, 
                    and #{@description[:carrots][:nutrition][:protein]}g of protein"
                end 
            when 3
                puts "What would you link to know about Milk?"
                puts "1) General description"
                puts "2) Nutritional Information"
                print '>'
                info = gets.chomp.to_i
                case info
                when 1
                    puts @description[:milk][:description]
                when 2
                    puts "Sandwhiches have #{@description[:milk][:nutrition][:calories]} calories, 
                    #{@description[:milk][:nutrition][:carbs]}g of carbs, 
                    #{@description[:milk][:nutrition][:fat]}g of fat, 
                    and #{@description[:milk][:nutrition][:protein]}g of protein"
                end 
                
            end
        select_side_dish 
    end 
end 