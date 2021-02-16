class ChatroomController < ApplicationController
    before_action  :require_user
    
    # Rendering home page
    def index
        @message = Message.new
        @messages = Message.all
    end



end