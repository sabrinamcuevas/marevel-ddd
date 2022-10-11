class CreateCreatorsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :creators do |t|
      t.bigint 'creator_id'
      t.string 'first_name'
      t.string 'last_name'
      t.string 'image_url'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end
  end
end
