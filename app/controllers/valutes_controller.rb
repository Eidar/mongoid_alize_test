require_relative 'concerns/hnbApiService.rb'

class ValutesController < ApplicationController
  before_action :set_valute, only: [:show, :edit, :update, :destroy]

    
  def hnbApi
    @hnbApiService = HnbApiService.new
    render json: @hnbApiService.update
  end 

  # GET /valutes
  # GET /valutes.json
  def index
    @valutes = Valute.all
  end

  # GET /valutes/1
  # GET /valutes/1.json
  def show
  end

  # GET /valutes/new
  def new
    @valute = Valute.new
  end

  # GET /valutes/1/edit
  def edit
  end

  # POST /valutes
  # POST /valutes.json
  def create
    @valute = Valute.new(valute_params)

    respond_to do |format|
      if @valute.save
        format.html { redirect_to @valute, notice: 'Valute was successfully created.' }
        format.json { render :show, status: :created, location: @valute }
      else
        format.html { render :new }
        format.json { render json: @valute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valutes/1
  # PATCH/PUT /valutes/1.json
  def update
    respond_to do |format|
      if @valute.update(valute_params)
        format.html { redirect_to @valute, notice: 'Valute was successfully updated.' }
        format.json { render :show, status: :ok, location: @valute }
      else
        format.html { render :edit }
        format.json { render json: @valute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valutes/1
  # DELETE /valutes/1.json
  def destroy
    @valute.destroy
    respond_to do |format|
      format.html { redirect_to valutes_url, notice: 'Valute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valute
      @valute = Valute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valute_params
      params.fetch(:valute, {})
    end
end
