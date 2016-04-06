class ChatController < ApplicationController
  def index
    @sessions = Session.all
    @chats = Chattext.all
  end
  def create
    Chattext.new(chattext_params).save
    redirect_to action: 'index'
  end
  def destroy
    Chattext.find(params[:id]).destroy
    redirect_to action: 'index'
  end
  def chattext_params
    params.require(:chattext).permit(:sender, :text, :datatime_static)
  end
  def select
    @session = Session.find(params[:id])
    redirect_to action: 'index'
  end
end
