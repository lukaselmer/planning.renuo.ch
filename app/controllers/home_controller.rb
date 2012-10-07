class HomeController < ApplicationController
  def dashboard
    @items = []
    @items += PlannedTime.all
    @items += Milestone.all
    @items.sort_by &:when
  end
end
