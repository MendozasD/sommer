class PagesController < ApplicationController
  def home
  end

  def schauspieler
    @actor = Actor.all
    # @actor = Actor.all.order(year: :desc)
  end

  def regisseur
    @director = Director.all
  end

  def texter
    @writer = Writer.all
  end

  def steckbrief
  end

  def kontakt
  end
end
