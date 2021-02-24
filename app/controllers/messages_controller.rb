class MessagesController < ApplicationController

    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)
        if @message.save
          flash[:success] = "Contato enviado com sucesso"
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
