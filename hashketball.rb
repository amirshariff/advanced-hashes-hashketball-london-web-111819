require 'pp'
def game_hash()
    game_hash = { :home => {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => [{ :player_name =>"Alan Anderson", :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists=> 12 , :steals => 3, :blocks => 1, :slam_dunks => 1 }, { :player_name =>"Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12 , :steals => 12, :blocks => 12, :slam_dunks => 7 }, { :player_name =>"Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10 , :steals => 3, :blocks => 1, :slam_dunks => 15 }, { :player_name =>"Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6 , :steals => 3, :blocks => 8, :slam_dunks => 5 }, { :player_name =>"Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2 , :steals => 4, :blocks => 11, :slam_dunks => 1 }] }, :away => {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => [{ :player_name =>"Jeff Adrien", :number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1 , :steals => 2, :blocks => 7, :slam_dunks => 2 }, { :player_name =>"Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7 , :steals => 22, :blocks => 15, :slam_dunks => 10 }, { :player_name =>"DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12 , :steals => 4, :blocks => 5, :slam_dunks => 5 }, { :player_name =>"Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2 , :steals => 1, :blocks => 1, :slam_dunks => 0 }, { :player_name =>"Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12 , :steals => 7, :blocks => 5, :slam_dunks => 12 } ] }   }

   return game_hash
    
end

def num_points_scored(player_name)
    game_hash
    game_hash.each do |key, value|
        value.each do |key2, value2|
            if key2 == :players
              #p "I am here!"
                value2.each do |key3|
                    if key3[:player_name] == player_name
                        return key3[:points]
                    end
                end
                
            end
        end
    end
                  
end



def shoe_size(player_name)
    game_hash
    game_hash.each do |key, value|
        value.each do |key2, value2|
            if key2 == :players
                value2.each do |key3|
                    if key3[:player_name] == player_name
                        return key3[:shoe]
                    end
                end
                
            end
        end
    end 
             
end



 #function that display the team's color when you enter the team's name

 def team_colors(team_Name)
    game_hash
    game_hash.each do |key, value|
        if value[:team_name] == team_Name
            return value[:colors]
        end
    end
                
 end



 

#function that display the team names

def team_names()
    team_Names = Array.new
    game_hash
    team_Names << game_hash[:home][:team_name]
    team_Names << game_hash[:away][:team_name]
   return team_Names
end


 
 
 

  #function that display the team's jersey numbers when you enter the team's name

  def player_numbers(team_Name)  
    player_Numbers = Array.new
    game_hash
    game_hash.each do |key, value|
        value.each do |key2, value2|
            if value[:team_name] == team_Name && key2 == :players
                value2.each do |n|
                    player_Numbers << n[:number]
                end
            end
        end
       
        
     end
  
 return player_Numbers
                   
 end
 
 def player_stats(player_name)
    game_hash
    game_hash.each do |key, value|
        value.each do |key2, value2|
            if key2 == :players
                value2.each do |key3|
                        return key3
                    end
            end
        end
    end 
             
end
 
 
 p player_stats("Jeff Adrien")
#p team_names()
#p shoe_size("Alan Anderson")
#p num_points_scored("Alan Anderson")
#p team_colors("Brooklyn Nets")
#p shoe_size("Mason Plumlee")
#pp game_hash