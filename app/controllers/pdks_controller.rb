class PdksController < ApplicationController
  before_action :set_pdk, only: [:show, :edit, :update, :destroy]

  # GET /pdks
  # GET /pdks.json
  def index
    @pdks = Pdk.all
  end

  # GET /pdks/1
  # GET /pdks/1.json
  def show
  end

  # GET /pdks/new
  def new
    @pdk = Pdk.new
  end

  # GET /pdks/1/edit
  def edit
  end

  # POST /pdks
  # POST /pdks.json
  def create
    @pdk = Pdk.new(pdk_params)

    respond_to do |format|
      if @pdk.save
        format.html { redirect_to @pdk, notice: 'Pdk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pdk }
      else
        format.html { render action: 'new' }
        format.json { render json: @pdk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pdks/1
  # PATCH/PUT /pdks/1.json
  def update
    respond_to do |format|
      if @pdk.update(pdk_params)
        format.html { redirect_to @pdk, notice: 'Pdk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pdk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdks/1
  # DELETE /pdks/1.json
  def destroy
    @pdk.destroy
    respond_to do |format|
      format.html { redirect_to pdks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdk
      @pdk = Pdk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pdk_params
      params.require(:pdk).permit(:name)
    end
end
