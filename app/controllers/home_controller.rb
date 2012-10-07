class HomeController < ApplicationController
  def dashboard
    @items = []
    @items += PlannedTime.all
    @items += Milestone.all
    @items.order_by :when
  end
end
