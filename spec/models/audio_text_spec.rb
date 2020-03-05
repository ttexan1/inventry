# == Schema Information
#
# Table name: audio_texts
#
#  id         :bigint           not null, primary key
#  memo       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe AudioText, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
