class LoadsController < ApplicationController
  before_action :set_load, only: [:show, :edit, :update, :destroy]

  # GET /loads
  # GET /loads.json
  def index
    @loads = Load.all
  end

  def chart
    @loads = Load.all

    @home = []
    @sun = []
    @ev = []
    @minus = []
    @soc = []

    @loads.each do |load|
      home = []
      sun = []
      ev = []
      minus = []
      soc = []
      home.push(load.date)
      sun.push(load.date)
      ev.push(load.date)
      minus.push(load.date)
      soc.push(load.date)
      home.push(load.home)
      sun.push(load.sun)
      ev.push(load.ev)
      minus.push(load.sun - load.home)
      soc.push(load.sun - load.home - load.ev)
      @home.push(home)
      @sun.push(sun)
      @ev.push(ev)
      @minus.push(minus)
      @soc.push(soc)
    end
  end

  # GET /loads/1
  # GET /loads/1.json
  def show
  end

  # GET /loads/new
  def new
    @load = Load.new
  end

  # GET /loads/1/edit
  def edit
  end

  # POST /loads
  # POST /loads.json
  def create
    @load = Load.new(load_params)

    respond_to do |format|
      if @load.save
        format.html { redirect_to @load, notice: 'Load was successfully created.' }
        format.json { render :show, status: :created, location: @load }
      else
        format.html { render :new }
        format.json { render json: @load.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loads/1
  # PATCH/PUT /loads/1.json
  def update
    respond_to do |format|
      if @load.update(load_params)
        format.html { redirect_to @load, notice: 'Load was successfully updated.' }
        format.json { render :show, status: :ok, location: @load }
      else
        format.html { render :edit }
        format.json { render json: @load.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loads/1
  # DELETE /loads/1.json
  def destroy
    @load.destroy
    respond_to do |format|
      format.html { redirect_to loads_url, notice: 'Load was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    notice = Load.import(params[:file])
    redirect_to '/loads', notice: notice
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load
      @load = Load.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def load_params
      params.require(:load).permit(:date, :home, :ev, :sun)
    end
end
