module ApplicationHelper
    def get_name_url(controller)
        url = ''
        if controller.present?
            if controller == 'posts'
                url = 'Página Inicial'
            end    
        end    
        url
    end    
end
