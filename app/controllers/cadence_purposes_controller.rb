class CadencePurposesController < ApplicationController
  before_action :set_cadence_purpose, only: [:show, :edit, :update, :destroy]

  # GET /cadence_purposes
  # GET /cadence_purposes.json
  def index
    @cadence_purposes = CadencePurpose.all
  end

  # GET /cadence_purposes/1
  # GET /cadence_purposes/1.json
  def show
  end

  # GET /cadence_purposes/new
  def new
    @cadence_purpose = CadencePurpose.new
  end

  # GET /cadence_purposes/1/edit
  def edit
  end

  # POST /cadence_purposes
  # POST /cadence_purposes.json
  def create
    @cadence_purpose = CadencePurpose.new(cadence_purpose_params)

    respond_to do |format|
      if @cadence_purpose.save
        format.html { redirect_to @cadence_purpose, notice: 'Cadence purpose was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cadence_purpose }
      else
        format.html { render action: 'new' }
        format.json { render json: @cadence_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadence_purposes/1
  # PATCH/PUT /cadence_purposes/1.json
  def update
    respond_to do |format|
      if @cadence_purpose.update(cadence_purpose_params)
        format.html { redirect_to @cadence_purpose, notice: 'Cadence purpose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cadence_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadence_purposes/1
  # DELETE /cadence_purposes/1.json
  def destroy
    @cadence_purpose.destroy
    respond_to do |format|
      format.html { redirect_to cadence_purposes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadence_purpose
      @cadence_purpose = CadencePurpose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadence_purpose_params
      params.require(:cadence_purpose).permit(:name, :number)
    end
end
