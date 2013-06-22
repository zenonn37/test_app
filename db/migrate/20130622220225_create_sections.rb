class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :page
      t.string "name"
      t.integer "position"
      t.boolean "visiable", :default => false
      t.string "content-type"
      t.text "content" 
      t.timestamps
    end
    add_index("sections","page_id")
  end
end
