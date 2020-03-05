# == Schema Information
#
# Table name: audio_texts
#
#  id         :bigint           not null, primary key
#  memo       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :audio_text do
    memo { "MyText" }
  end
end
