class StipplesController < ApplicationController
  before_action :set_stipple, only: [:show, :edit, :update, :destroy]

  # GET /stipples
  # GET /stipples.json
  def index
    @stipples = Stipple.all
  end

  # GET /stipples/1
  # GET /stipples/1.json
  def show
  end

  # GET /stipples/new
  def new
    @stipple = Stipple.new
  end

  # GET /stipples/1/edit
  def edit
  end

  # POST /stipples
  # POST /stipples.json
  def create
    @stipple = Stipple.new(stipple_params)

    respond_to do |format|
      if @stipple.save
        format.html { redirect_to @stipple, notice: 'Stipple was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stipple }
      else
        format.html { render action: 'new' }
        format.json { render json: @stipple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stipples/1
  # PATCH/PUT /stipples/1.json
  def update
    respond_to do |format|
      if @stipple.update(stipple_params)
        format.html { redirect_to @stipple, notice: 'Stipple was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stipple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stipples/1
  # DELETE /stipples/1.json
  def destroy
    @stipple.destroy
    respond_to do |format|
      format.html { redirect_to stipples_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stipple
      @stipple = Stipple.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stipple_params
      params.require(:stipple).permit(:name, :pattern)
    end
end
