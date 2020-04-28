class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :player_name

      # background specific info
      t.string :name
      t.string :background
      t.string :class
      t.string :alignment
      t.string :ideals
      t.string :personality_traits
      t.string :bonds
      t.string :flaws

      # physical characteristics
      t.string :race
      t.string :eyes
      t.string :hair
      t.string :skin

      t.text :backstory

      t.timestamps
    end
  end
end
