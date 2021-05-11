class InfoController < ApplicationController
  def info
    @dojos = Dojo.all
    @judokas = Judoka.all
    @senseis = Sensei.all
  end

  def lobby
  end

  def graphics
    @levels = Level.joins(:name).group('levels.name').all
    @categories = Category.joins(:name).group('categories.name').all
  end
end