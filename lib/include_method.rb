module ActionController
  class Base
    before_filter :_get_current_user

    def _get_current_user
    end

    def self.before_filter *names, &blk
      super *names, &blk
      ActionController::Base.set_callback(:process_action, :_get_current_user)
    end

  end
end

