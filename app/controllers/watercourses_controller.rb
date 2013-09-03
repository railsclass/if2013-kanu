class WatercoursesController < ApplicationController
  before_action :set_watercourse, only: [:show, :edit, :update, :destroy]

  # GET /watercourses
  # GET /watercourses.json
  def index
    @watercourses = Watercourse.all
  end

  # GET /watercourses/1
  # GET /watercourses/1.json
  def show
  end

  # GET /watercourses/new
  def new
    @watercourse = Watercourse.new
  end

  # GET /watercourses/1/edit
  def edit
  end

  # POST /watercourses
  # POST /watercourses.json
  def create
    @watercourse = Watercourse.new(watercourse_params)

    respond_to do |format|
      if @watercourse.save
        format.html { redirect_to @watercourse, notice: 'Watercourse was successfully created.' }
        format.json { render action: 'show', status: :created, location: @watercourse }
      else
        format.html { render action: 'new' }
        format.json { render json: @watercourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watercourses/1
  # PATCH/PUT /watercourses/1.json
  def update
    respond_to do |format|
      if @watercourse.update(watercourse_params)
        format.html { redirect_to @watercourse, notice: 'Watercourse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @watercourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watercourses/1
  # DELETE /watercourses/1.json
  def destroy
    @watercourse.destroy
    respond_to do |format|
      format.html { redirect_to watercourses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watercourse
      @watercourse = Watercourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watercourse_params
      params.require(:watercourse).permit(:name)
    end
end
