class JudoTestController < ApplicationController
  def index
    @judo_test = JudoTest.all
  end

  def show
  end
end
