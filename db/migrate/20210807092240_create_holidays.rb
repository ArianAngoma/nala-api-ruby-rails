class CreateHolidays < ActiveRecord::Migration[6.1]
  def change
    create_table :holidays do |t|
      t.string :name
      t.string :startDate
      t.string :endDate

      t.timestamps
    end
  end
end
