class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.boolean :enabled
      t.text :title

      t.timestamps
    end
  end
end
