class ImpresionesController < ApplicationController

  def show
    @impresion = Impresion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @impresion }
    end
  end

  def new
    @impresion = Impresion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @impresion }
    end
  end

  def create
    @impresion = Impresion.new(params[:impresion])

    respond_to do |format|
      if @impresion.save
        format.html { redirect_to @impresion, notice: 'Success' }
        format.json { render json: @impresion, status: :created, location: @impresion }
      else
        format.html { redirect_to @impresion.new, :alert => "error while creating the process" }
        format.json { render json: @impresion.errors, status: :unproccessable_entity }
      end
    end
  end

end
