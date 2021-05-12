class JudokasController < ApplicationController
  before_action :authenticate_judoka!  

  def index
    @judokas = Judoka.all
  end

  def show
    @judokas = Judoka.all
    @judoka = Judoka.find(params[:id])
  end

  # @judoka = current_judokas ? Judokas.find(params[:id]) : current_judokas 
  # @sensei = current_senseis ? Senseis.find(params[:id]) : current_senseis 
  # if current_judokas?
    
  # else

  # end

end
