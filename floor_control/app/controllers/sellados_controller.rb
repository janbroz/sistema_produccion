class SelladosController < ApplicationController

  def show
    @sellado = Sellado.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sellado }
    end
  end

  def new
    @sellado = Sellado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sellado }
    end
  end

  def create
    @sellado = Sellado.new(params[:sellado])

    respond_to do |format|
      if @sellado.save
        format.html { redirect_to @sellado, notice: 'Success' }
        format.json { render json: @sellado, status: :created, location: @sellado }
      else
        format.html { redirect_to @sellado.new, :alert => "error while creating the process" }
        format.json { render json: @sellado.errors, status: :unproccessable_entity }
      end
    end
  end

end
