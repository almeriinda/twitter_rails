module ApplicationHelper
    def get_name_url(controller)
        url = ''
        if controller.present?
            if controller == 'posts'
                url = 'Página Inicial'
            elsif controller == 'profiles'
                url = 'Usuários'    
            end    
        end    
        url
    end    

    def get_form_follower(controller, user_profile, user_logged)
        url_form = [] 
        if user_profile.present?
            follower =  Follower.where(user_id: user_profile, follower_user_id: user_logged)
            if follower.present?
                url_form = ['/followers/update', 'put', 'Seguindo...']    
            else 
                url_form = ['/followers/create', 'post', 'Seguir']
            end    
        end    
        url_form
    end 
    
    def get_notifications_user(current_user)
        count_follower = Follower.where(user_id: current_user.id).size
    end
end
