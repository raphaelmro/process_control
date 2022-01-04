class CreateLawsuits < ActiveRecord::Migration[7.0]
  def change
    create_table :lawsuits do |t|
      t.string :lawsuit_number
      t.string :collection
      t.integer :deadline_days
      t.date :aware_date
      t.date :deadline_date
      t.boolean :done

      t.timestamps
    end
  end
end
