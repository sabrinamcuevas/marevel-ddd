class CreateCharactersTable < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.belongs_to :comic
      t.bigint 'character_id'
      t.string 'name'
      t.text 'description'
      t.string 'image_url'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end
  end
end
