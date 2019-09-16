class ApplicationController < ActionController::Base

  def contact
      @contact = Contact.new
    end

    def set_seguro
      @seguro = Seguro.friendly.find(params[:id])
    end
end
