class CreateMentors < ActiveRecord::Migration[5.2]
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :img
      t.integer :peas
    end
  end
end
