class CreateTagDetails < ActiveRecord::Migration
  def change
    create_table :tag_details do |t|
      t.references :tag, index: true
      t.references :post, index: true
      t.string :junk

      t.timestamps
    end
  end
end
