class PredictChartsController < ApplicationController
  before_action :set_predict_chart, only: [:show, :edit, :update, :destroy]

  # GET /predict_charts
  # GET /predict_charts.json
  def index
    @predict_charts = PredictChart.all
  end

  # GET /predict_charts/1
  # GET /predict_charts/1.json
  def show
  end

  # GET /predict_charts/new
  def new
    @predict_chart = PredictChart.new
  end

  # GET /predict_charts/1/edit
  def edit
  end

  # POST /predict_charts
  # POST /predict_charts.json
  def create
    @predict_chart = PredictChart.new(predict_chart_params)

    respond_to do |format|
      if @predict_chart.save
        format.html { redirect_to @predict_chart, notice: 'Predict chart was successfully created.' }
        format.json { render :show, status: :created, location: @predict_chart }
      else
        format.html { render :new }
        format.json { render json: @predict_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predict_charts/1
  # PATCH/PUT /predict_charts/1.json
  def update
    respond_to do |format|
      if @predict_chart.update(predict_chart_params)
        format.html { redirect_to @predict_chart, notice: 'Predict chart was successfully updated.' }
        format.json { render :show, status: :ok, location: @predict_chart }
      else
        format.html { render :edit }
        format.json { render json: @predict_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predict_charts/1
  # DELETE /predict_charts/1.json
  def destroy
    @predict_chart.destroy
    respond_to do |format|
      format.html { redirect_to predict_charts_url, notice: 'Predict chart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_predict_chart
      @predict_chart = PredictChart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def predict_chart_params
      params.fetch(:predict_chart, {})
    end
end
