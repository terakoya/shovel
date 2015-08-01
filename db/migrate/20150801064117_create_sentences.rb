class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.text :text, null: false
      t.timestamps
    end
  end
end
