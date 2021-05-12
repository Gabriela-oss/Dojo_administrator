class JudokasController < ApplicationController
  before_action :authenticate_judoka!  

  def index
    @judokas = Judoka.all
  end

  def show
    @judokas = Judoka.all
    @judoka = Judoka.find(params[:id])
  end

end
