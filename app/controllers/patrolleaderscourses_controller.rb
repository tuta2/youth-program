class PatrolleaderscoursesController < ApplicationController
  before_action :set_patrolleaderscourse, only: %i[ show edit update destroy ]

  # GET /patrolleaderscourses or /patrolleaderscourses.json
  def index
    @patrolleaderscourses = Patrolleaderscourse.all
  end

  # GET /patrolleaderscourses/1 or /patrolleaderscourses/1.json
  def show
  end

  # GET /patrolleaderscourses/new
  def new
    @patrolleaderscourse = Patrolleaderscourse.new
  end

  # GET /patrolleaderscourses/1/edit
  def edit
  end

  # POST /patrolleaderscourses or /patrolleaderscourses.json
  def create
    @patrolleaderscourse = Patrolleaderscourse.new(patrolleaderscourse_params)

    respond_to do |format|
      if @patrolleaderscourse.save
        format.html { redirect_to patrolleaderscourse_url(@patrolleaderscourse), notice: "Patrolleaderscourse was successfully created." }
        format.json { render :show, status: :created, location: @patrolleaderscourse }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patrolleaderscourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patrolleaderscourses/1 or /patrolleaderscourses/1.json
  def update
    respond_to do |format|
      if @patrolleaderscourse.update(patrolleaderscourse_params)
        format.html { redirect_to patrolleaderscourse_url(@patrolleaderscourse), notice: "Patrolleaderscourse was successfully updated." }
        format.json { render :show, status: :ok, location: @patrolleaderscourse }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patrolleaderscourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patrolleaderscourses/1 or /patrolleaderscourses/1.json
  def destroy
    @patrolleaderscourse.destroy

    respond_to do |format|
      format.html { redirect_to patrolleaderscourses_url, notice: "Patrolleaderscourse was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patrolleaderscourse
      @patrolleaderscourse = Patrolleaderscourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patrolleaderscourse_params
      params.fetch(:patrolleaderscourse, {})
    end
end
