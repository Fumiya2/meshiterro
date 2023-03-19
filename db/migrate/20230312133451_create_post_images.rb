class PostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
     
      t.timestamps
      t.string "shop_name"
      t.srting "title"
      t.string "body"
    end
  end
end
