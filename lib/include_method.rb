module ActionController
  class Base
    before_filter :get_current_user

    def get_current_user
      puts "######## 1"
    end

    def self.before_filter *names, &blk
      super *names, &blk
      ActionController::Base.set_callback(:process_action, :get_current_user)
    end

  end
end

