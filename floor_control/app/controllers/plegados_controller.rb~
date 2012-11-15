class PlegadosController < ApplicationController

  def show
    @plegado = Plegado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plegado }
    end
  end

end
