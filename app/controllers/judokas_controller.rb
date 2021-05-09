class JudokasController < ApplicationController
  def index
    @judokas = Judoka.all
  end

  def show
    @judokas = Judoka.all
    @judoka = Judoka.find_by_uid!(params[:id])
  end
end
