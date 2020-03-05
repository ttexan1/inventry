# == Schema Information
#
# Table name: audio_texts
#
#  id         :bigint           not null, primary key
#  memo       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AudioText < ApplicationRecord
  def analyze
    # memo = "2こ3こ49本940まい"
    numbers = []
    loop do
      num = memo.slice!(/\d+/)
      break if !num
      numbers.push(num)
    end
    numbers
  end
end
