require 'spec_helper'

describe ActionController::Base, :type => :controller do
  it 'should respond_to get_current_user' do
    ActionController::Base.new.respond_to?(:_get_current_user).should be_true
  end

  it 'should put :get_current_user in the of chain filter' do
    ActionController::Base.before_filter :some_other_method
    ActionController::Base._process_action_callbacks.map(&:filter).should == [:some_other_method, :_get_current_user]
  end
end

