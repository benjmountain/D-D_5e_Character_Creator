class AddStatsToCharacter < ActiveRecord::Migration[6.0]
  def change
    # Level and XP
    add_column :characters, :level, :integer, default: 1
    add_column :characters, :experience_points, :integer, default: 0

    # HP columns
    add_column :characters, :hit_points, :integer
    add_column :characters, :temp_hit_points, :integer
    add_column :characters, :hit_dice, :integer

    add_column :characters, :speed, :integer
    add_column :characters, :initiative, :integer
    add_column :characters, :inspiration, :boolean, default: false
    add_column :characters, :weight, :integer
    add_column :characters, :age, :integer

    # Base Stats
    add_column :characters, :strength, :integer
    add_column :characters, :dexterity, :integer
    add_column :characters, :constitution, :integer
    add_column :characters, :intelligence, :integer
    add_column :characters, :wisdom, :integer
    add_column :characters, :charisma, :integer
    add_column :characters, :proficiency_bonus, :integer, default: 2

    # Misc character information
    add_column :characters, :skills, :text # this will be serialized into a hash for each skill
    # this will be serialized into a hash for each of the character's features
    add_column :characters, :class_features, :text
    add_column :characters, :race_traits, :text # this will be serialized into a hash for each of the character's traits
    add_column :characters, :languages, :text # this will be serialized into an array of languages
  end
end
