class DobladosController < ApplicationController

  def show
    @doblado = Doblado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doblado }
    end
  end

  def new
    @doblado = Doblado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doblado }
    end
  end

  def create
    @doblado = Doblado.new(params[:doblado])

    respond_to do |format|
      if @doblado.save
        format.html { redirect_to @doblado, notice: 'Success' }
        format.json { render json: @doblado, status: :created, location: @doblado }
      else
        format.html { redirect_to @doblado.new, :alert => "error while creating the process" }
        format.json { render json: @doblado.errors, status: :unproccessable_entity }
      end
    end
  end

end
