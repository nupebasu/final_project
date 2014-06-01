class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.integer :user_id
      t.string :subject
      t.integer :accession
      t.text :diagnosis
      t.string :image
      t.text :clinical_history
      t.boolean :date
      t.integer :category_id
      t.integer :body_part_id

      t.timestamps

    end
  end
end
