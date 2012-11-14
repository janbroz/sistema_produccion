class RefiladosController < ApplicationController

  def show
    @refilado = Refilado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @refilado }
    end
  end

end
