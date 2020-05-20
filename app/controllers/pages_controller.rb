# Controller-Action

class PagesController < ApplicationController


  def home
   @contact = Contact.new(params[:contact])
  end

  def tutoring
  end

  def resources
  end
end
