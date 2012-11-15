class CortesController < ApplicationController

  def show
    @corte = Corte.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @corte }
    end
  end

  def new
    @corte = Corte.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @corte }
    end
  end

  def create
    @corte = Corte.new(params[:corte])

    respond_to do |format|
      if @corte.save
        format.html { redirect_to @corte, notice: 'Success' }
        format.json { render json: @corte, status: :created, location: @corte }
      else
        format.html { redirect_to @corte.new, :alert => "error while creating the process" }
        format.json { render json: @corte.errors, status: :unproccessable_entity }
      end
    end
  end

end
