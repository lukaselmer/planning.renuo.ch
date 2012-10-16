class HomeController < ApplicationController
  def dashboard
    @items = []
    @items += PlannedTime.all
    @items += Milestone.all
    @items.sort! do |a, b|
      x = a.when <=> b.when
      x = -(a.class.name <=> b.class.name) if x == 0
      x = a.user.to_s <=> b.user.to_s if x == 0 && a.is_a?(PlannedTime) && b.is_a?(PlannedTime)
      x = a.hours <=> b.hours if x == 0
      x
    end
#    @items = @items.sort_by &:hours
#    @items = @items.sort_by {|o| o.class.to_s}
#    @items = @items.sort_by &:when
  end
end
