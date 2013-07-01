class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.boolean :enabled
      t.text :title

      t.timestamps
    end
  end
end
