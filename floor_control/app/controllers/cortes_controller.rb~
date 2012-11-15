class CortesController < ApplicationController

  def show
    @corte = Corte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @corte }
    end
  end

end
