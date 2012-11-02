class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def materialsZone
    @mats = Material.all
  end

  def productionOrdersZone
    @prodOrd = ProductionOrder.all
  end

  def usersZone
    @usrs = User.all
  end

end
