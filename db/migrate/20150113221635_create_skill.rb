class CreateSkill < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
    end
  end
end