module PostsHelper

    def get_image_user(profile, position)
        img = ''
        if position == 'img_user'
            img = profile.image.present? ? profile.image : '/assets/img/user2-160x160.png'
        elsif position == 'front_user'    
            img = profile.front_cover.present? ? profile.front_cover : '/assets/img/user2-160x160.png'
        end    
        img
    end      
end
