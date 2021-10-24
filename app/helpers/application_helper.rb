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
end
