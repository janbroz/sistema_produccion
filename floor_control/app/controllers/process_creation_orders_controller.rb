class ProcessCreationOrdersController < ApplicationController

  def show
    @process_creation_order = ProcessCreationOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @process_creation_order }
    end
  end

  def new
    @processCreationOrder = ProcessCreationOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @processCreationOrder }
    end
  end

  def create
    @processCreationOrder = ProcessCreationOrder.new(params[:processCreationOrder])

    respond_to do |format|
      if @processCreationOrder.save
        format.html { redirect_to @processCreationOrder, notice: 'Success' }
        format.json { render json: @processCreationOrder, status: :created, location: @processCreationOrder }
      else
        format.html { redirect_to @processCreationOrder.new, :alert => "error while creating the process" }
        format.json { render json: @processCreationOrder.errors, status: :unproccessable_entity }
      end
    end
  end

end
