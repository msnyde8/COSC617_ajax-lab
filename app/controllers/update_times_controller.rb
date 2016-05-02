class UpdateTimesController < ApplicationController
  # GET /update_times
  # GET /update_times.json
  def index
    @time = Time.now
#    @update_times = UpdateTime.all
  end

  # GET /update_times/new
  def new
    @time = Time.now

    respond_to do |format|
      format.html {redirect_to update_times_url, notice: 'Time was successfully updated'}
      format.json { head :no_content }
      format.js { render :layout => false}
    end
  end
end
