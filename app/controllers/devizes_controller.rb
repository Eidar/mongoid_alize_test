class DevizesController < ApplicationController
  before_action :set_devize, only: [:show, :edit, :update, :destroy]

  # GET /devizes
  # GET /devizes.json
  def index
    @devizes = Devize.all
  end

  # GET /devizes/1
  # GET /devizes/1.json
  def show
  end

  # GET /devizes/new
  def new
    @devize = Devize.new
  end

  # GET /devizes/1/edit
  def edit
  end

  # POST /devizes
  # POST /devizes.json
  def create
    @devize = Devize.new(devize_params)

    respond_to do |format|
      if @devize.save
        format.html { redirect_to @devize, notice: 'Devize was successfully created.' }
        format.json { render :show, status: :created, location: @devize }
      else
        format.html { render :new }
        format.json { render json: @devize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devizes/1
  # PATCH/PUT /devizes/1.json
  def update
    respond_to do |format|
      if @devize.update(devize_params)
        format.html { redirect_to @devize, notice: 'Devize was successfully updated.' }
        format.json { render :show, status: :ok, location: @devize }
      else
        format.html { render :edit }
        format.json { render json: @devize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devizes/1
  # DELETE /devizes/1.json
  def destroy
    @devize.destroy
    respond_to do |format|
      format.html { redirect_to devizes_url, notice: 'Devize was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devize
      @devize = Devize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devize_params
      params.require(:devize).permit(:valute_id)
    end
end
