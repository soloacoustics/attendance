class CreateAtts < ActiveRecord::Migration[5.2]
  def change
    create_table :atts do |t|
      t.integer :date
      t.string :work_from
      t.string :work_to
      t.string :break_from
      t.string :break_to
      t.text :description

      t.timestamps
    end
  end
end
