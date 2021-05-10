class JudokasController < ApplicationController
  def index
    @judokas = Judoka.all
  end

  def show
    @judokas = Judoka.all
    @judoka = Judoka.find_by_uid!(params[:id])
    @levels = Level.joins(:name).group('levels.name').all
    @categories = Category.joins(:name).group('categories.name').all
  end

end
