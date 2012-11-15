class PlegadosController < ApplicationController

  def show
    @plegado = Plegado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plegado }
    end
  end

  def new
    @plegado = Plegado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plegado }
    end
  end

  def create
    @plegado = Plegado.new(params[:plegado])

    respond_to do |format|
      if @plegado.save
        format.html { redirect_to @plegado, notice: 'Success' }
        format.json { render json: @plegado, status: :created, location: @plegado }
      else
        format.html { redirect_to @plegado.new, :alert => "error while creating the process" }
        format.json { render json: @plegado.errors, status: :unproccessable_entity }
      end
    end
  end

end
