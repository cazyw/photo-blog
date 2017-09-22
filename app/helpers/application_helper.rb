module ApplicationHelper
    def alert_for(flash_type)
    {
        :success => 'alert-success',
        :error => 'alert-danger',
        :alert => 'alert-warning',
        :notice => 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end


    # Returns the current logged in user if any
    def current_user?(user)
        user == current_user
    end


end
