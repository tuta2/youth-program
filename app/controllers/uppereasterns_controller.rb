class UppereasternsController < ApplicationController
  before_action :set_uppereastern, only: %i[ show edit update destroy ]

  # GET /uppereasterns or /uppereasterns.json
  def index
    @uppereasterns = Uppereastern.all
  end

  # GET /uppereasterns/1 or /uppereasterns/1.json
  def show
  end

  # GET /uppereasterns/new
  def new
    @uppereastern = Uppereastern.new
  end

  # GET /uppereasterns/1/edit
  def edit
  end

  # POST /uppereasterns or /uppereasterns.json
  def create
    @uppereastern = Uppereastern.new(uppereastern_params)

    respond_to do |format|
      if @uppereastern.save
        format.html { redirect_to uppereastern_url(@uppereastern), notice: "Uppereastern was successfully created." }
        format.json { render :show, status: :created, location: @uppereastern }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @uppereastern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uppereasterns/1 or /uppereasterns/1.json
  def update
    respond_to do |format|
      if @uppereastern.update(uppereastern_params)
        format.html { redirect_to uppereastern_url(@uppereastern), notice: "Uppereastern was successfully updated." }
        format.json { render :show, status: :ok, location: @uppereastern }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @uppereastern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uppereasterns/1 or /uppereasterns/1.json
  def destroy
    @uppereastern.destroy

    respond_to do |format|
      format.html { redirect_to uppereasterns_url, notice: "Uppereastern was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uppereastern
      @uppereastern = Uppereastern.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uppereastern_params
      params.fetch(:uppereastern, {})
    end
end
