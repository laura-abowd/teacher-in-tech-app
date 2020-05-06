# Controller-Action

class PagesController < ApplicationController

  def home
   @contact = Contact.new(params[:contact])
  end

  def tutorials
  end

end
