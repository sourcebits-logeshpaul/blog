class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.references :user, index: true

      t.timestamps
    end
  end
end
