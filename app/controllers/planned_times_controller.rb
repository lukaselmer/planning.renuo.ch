class PlannedTimesController < ApplicationController
  # GET /planned_times
  # GET /planned_times.json
  def index
    @planned_times = PlannedTime.scoped.order("`when`")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @planned_times }
    end
  end

  # GET /planned_times/1
  # GET /planned_times/1.json
  def show
    @planned_time = PlannedTime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @planned_time }
    end
  end

  # GET /planned_times/new
  # GET /planned_times/new.json
  def new
    @planned_time = PlannedTime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @planned_time }
    end
  end

  # GET /planned_times/1/edit
  def edit
    @planned_time = PlannedTime.find(params[:id])
  end

  # POST /planned_times
  # POST /planned_times.json
  def create
    @planned_time = PlannedTime.new(params[:planned_time])

    respond_to do |format|
      if @planned_time.save
        format.html { redirect_to @planned_time, notice: 'Planned time was successfully created.' }
        format.json { render json: @planned_time, status: :created, location: @planned_time }
      else
        format.html { render action: "new" }
        format.json { render json: @planned_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /planned_times/1
  # PUT /planned_times/1.json
  def update
    @planned_time = PlannedTime.find(params[:id])

    respond_to do |format|
      if @planned_time.update_attributes(params[:planned_time])
        format.html { redirect_to @planned_time, notice: 'Planned time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @planned_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planned_times/1
  # DELETE /planned_times/1.json
  def destroy
    @planned_time = PlannedTime.find(params[:id])
    @planned_time.destroy

    respond_to do |format|
      format.html { redirect_to planned_times_url }
      format.json { head :no_content }
    end
  end
end
