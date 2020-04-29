class Character < ApplicationRecord

  validates :player_name, presence: true
  validates :name, presence: true
  validates :eyes, presence: true
  validates :hair, presence: true
  validates :skin, presence: true
  validates :backstory, length: { minimum: 50 }

  # dropdown selections
  RACES = %w(Dragonborn Dwarf Elf Gnome Half-Elf Half-Orc Halfling Human Tiefling)
  CLASSES = %w(Barbarian Bard Cleric Druid Fighter Monk Paladin Ranger Rogue Sorcerer Warlock Wizard)
  BACKGROUNDS = %w(Charlatan Criminal
Entertainer Folk Hero Guild Artisan Hermit Noble Outlander Sage Sailor Soldier Urchin)
  ALIGNMENTS = %w(Lawful-Good Neutral-Good Chaotic-Good
                  Lawful-Neutral True-Neutral Chaotic-Neutral
                  Lawful-Evil Neutral-Evil Chaotic-Evil)

  # fields with dropdowns
  validates :race, inclusion: { in: RACES }
  validates :character_class, inclusion: { in: CLASSES }
  validates :background, inclusion: { in: BACKGROUNDS }
  validates :alignment, inclusion: { in: ALIGNMENTS }

end