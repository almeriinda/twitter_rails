module PostsHelper

    def get_image_user(profile, position)
        img = ''
        if position == 'img_user'
            img = profile.image rescue '/assets/img/user2-160x160.png'
        elsif position == 'front_user'    
            img = profile.front_cover rescue '/assets/img/user2-160x160.png'
        end    
        img
    end      
end
