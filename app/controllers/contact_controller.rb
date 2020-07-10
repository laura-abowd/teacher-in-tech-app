# Controller-Action

class ContactController < ApplicationController

  def index
    @contact = Contact.new(params[:contact])
  end

   def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver
      flash[:notice] = "Mesage has been sent!"
      redirect_to root_path
    else
      flash[:alert] = 'Cannot send message. Please enter valid input fields.'
      redirect_to root_path
    end
  end
end
