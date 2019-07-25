class SeguroscontactsController < ApplicationController

  def new
    @seguroscontact = Seguroscontact.new
  end

  def create

     @seguroscontact = Seguroscontact.new(params[:seguroscontact])
     @seguroscontact.request = request
        if @seguroscontact.deliver
          flash.now[:error] = nil
        else
          flash.now[:error] = "Erro"
          render :new
        end
  end

end
