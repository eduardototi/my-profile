class MessagesController < ApplicationController
    
    skip_before_action :authenticate_user!, only: [ :new, :create ]

    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)
        if @message.save
          flash[:success] = "Contato enviado com sucesso"
          redirect_to root_path
        else
          flash[:error] = "Contato não enviado"
          render 'new'
        end
    end
    
    private

    def message_params
        params.require(:message).permit(:name, :phone, :contact, :message)
    end
    
end
