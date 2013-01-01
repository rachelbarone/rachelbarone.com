class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.save
      MessageMailer.new_message(@message).deliver!
      MessageMailer.confirmation(@message).deliver!

      flash[:notices] = ["Your message has been sent!"]
      redirect_to root_url
    else
      flash[:errors] = @message.errors.full_messages
      render :new
    end
  end
end
