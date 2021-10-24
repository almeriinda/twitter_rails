class Profile < ApplicationRecord  
    self.table_name = "users"   

    def self.get_list(params)
        list = ''
        if params.keys.select{|p| p == "profile"}.compact != []
            list = Profile.where("name ilike '%#{params[:profile][:user_name]}%'")
        end
        list    
    end    
end
  