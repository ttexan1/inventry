class LandingController < ApplicationController
  def index
    @categories = Category.all.includes(:products)
    @audio_text = AudioText.new
  end
end
