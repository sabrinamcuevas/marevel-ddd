class CreateSeriesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|
      t.belongs_to :creator
      t.bigint 'serie_id'
      t.string 'title'
      t.text 'description'
      t.integer 'start_year'
      t.integer 'end_year'
      t.string 'image_url'
      t.string 'rating'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end
  end
end
