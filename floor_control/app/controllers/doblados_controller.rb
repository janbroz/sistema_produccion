class DobladosController < ApplicationController

  def show
    @doblado = Doblado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doblado }
    end
  end

end
