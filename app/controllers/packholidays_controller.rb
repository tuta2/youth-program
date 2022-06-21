class PackholidaysController < ApplicationController
  before_action :set_packholiday, only: %i[ show edit update destroy ]

  # GET /packholidays or /packholidays.json
  def index
    @packholidays = Packholiday.all
  end

  # GET /packholidays/1 or /packholidays/1.json
  def show
  end

  # GET /packholidays/new
  def new
    @packholiday = Packholiday.new
  end

  # GET /packholidays/1/edit
  def edit
  end

  # POST /packholidays or /packholidays.json
  def create
    @packholiday = Packholiday.new(packholiday_params)

    respond_to do |format|
      if @packholiday.save
        format.html { redirect_to packholiday_url(@packholiday), notice: "Packholiday was successfully created." }
        format.json { render :show, status: :created, location: @packholiday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @packholiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /packholidays/1 or /packholidays/1.json
  def update
    respond_to do |format|
      if @packholiday.update(packholiday_params)
        format.html { redirect_to packholiday_url(@packholiday), notice: "Packholiday was successfully updated." }
        format.json { render :show, status: :ok, location: @packholiday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @packholiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packholidays/1 or /packholidays/1.json
  def destroy
    @packholiday.destroy

    respond_to do |format|
      format.html { redirect_to packholidays_url, notice: "Packholiday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_packholiday
      @packholiday = Packholiday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def packholiday_params
      params.fetch(:packholiday, {})
    end
end
