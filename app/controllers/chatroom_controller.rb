class ChatroomController < ApplicationController

    # Rendering home page
    def index
        
        @messages = Message.all

    end

end