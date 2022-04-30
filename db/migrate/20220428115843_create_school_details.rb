class CreateSchoolDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :school_details do |t|
      t.string :teacher
      t.string :school
      t.date :school_year

      t.timestamps
    end
  end
end
