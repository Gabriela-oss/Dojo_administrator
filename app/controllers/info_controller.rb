class InfoController < ApplicationController
  def info
  end

  def lobby
  end

  def graphics
    @levels = Level.joins(:name).group('levels.name').all
    @categories = Category.joins(:name).group('categories.name').all
  end
end