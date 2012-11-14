class ImpresionesController < ApplicationController

  def show
    @impresion = Impresion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @impresion }
    end
  end

end
