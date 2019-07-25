class ApplicationController < ActionController::Base

  def contact
      @contact = Contact.new
    end
end
