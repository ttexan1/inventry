class CreateAudioTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :audio_texts do |t|
      t.text :memo

      t.timestamps
    end
  end
end
