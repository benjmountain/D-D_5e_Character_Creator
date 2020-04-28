class Character < ApplicationRecord

  validates :player_name, presence: true
  validates :name, presence: true

  RACES = %w(Dragonborn Dwarf Elf Gnome Half-Elf Half-Orc Halfling Human Tiefling)

  CLASSES = %w(Barbarian Bard Cleric Druid Fighter Monk Paladin Ranger Rogue Sorcerer Warlock Wizard)

  # validates :race, inclusion: { in: RACES }
  # validates :class, inclusion: { in: CLASSES }

end
