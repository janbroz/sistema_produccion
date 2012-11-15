class RefiladosController < ApplicationController

  def show
    @refilado = Refilado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @refilado }
    end
  end

  def new
    @refilado = Refilado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @refilado }
    end
  end

  def create
    @refilado = Refilado.new(params[:refilado])

    respond_to do |format|
      if @refilado.save
        format.html { redirect_to @refilado, notice: 'Success' }
        format.json { render json: @refilado, status: :created, location: @refilado }
      else
        format.html { redirect_to @refilado.new, :alert => "error while creating the process" }
        format.json { render json: @refilado.errors, status: :unproccessable_entity }
      end
    end
  end

end
