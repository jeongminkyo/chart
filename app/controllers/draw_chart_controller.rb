class DrawChartController < ApplicationController

  def index
    @draw_chart = DrawChart.all




    respond_to do |format|
      format.html
    end
  end
  
  def new
    
  end
  
  def create
    
  end
end
