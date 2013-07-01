class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.boolean :enabled
      t.integer :difficulty
      t.integer :category_id
      t.text :img_url
      t.text :first_name
      t.text :last_name
      t.text :stage_name
      t.text :band_name
      t.integer :title_id
      t.integer :question_id
      t.text :fun_fact
      t.boolean :fun_fact_enabled
      t.text :wiki
      t.boolean :wiki_enabled
      t.integer :number_in_category
      t.integer :number_in_all

      t.timestamps
    end
  end
end
