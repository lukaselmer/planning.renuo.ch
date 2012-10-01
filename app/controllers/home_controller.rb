class HomeController < ApplicationController
  def dashboard
    @planned_times = PlannedTime.all
  end
end
