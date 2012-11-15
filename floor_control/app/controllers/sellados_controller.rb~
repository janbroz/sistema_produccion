class SelladosController < ApplicationController

  def show
    @sellado = Sellado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sellado }
    end
  end

end
