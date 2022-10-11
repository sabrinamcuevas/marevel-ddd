class CreateComicsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :comics do |t|
      t.belongs_to :serie
      t.bigint 'comic_id'
      t.string 'title'
      t.text 'description'
      t.string 'image_url'
      t.string 'isbn'
      t.integer 'page_count'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end
  end
end
