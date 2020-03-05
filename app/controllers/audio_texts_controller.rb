class AudioTextsController < ApplicationController
  permits :memo
  def create(audio_text)
    @audio = AudioText.new(audio_text)
    if @audio.save
      @numbers = @audio.analyze
      @products = Product.all.order(category_id: :asc).order(id: :asc)
      # update = @products.first.updated_at
      @products.each do |product|
        break if @numbers.length == 0
        # next if product.updated_at >= update
        # update = product.updated_at
        product.update(quantity: @numbers.shift)
      end
      redirect_to root_path
    end
  end
end
