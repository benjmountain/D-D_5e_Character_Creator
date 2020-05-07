class Character < ApplicationRecord
  # dropdown selections
  RACES = %w(Dragonborn Dwarf Elf Gnome Half-Elf Half-Orc Halfling Human Tiefling)
  CLASSES = %w(Barbarian Bard Cleric Druid Fighter Monk Paladin Ranger Rogue Sorcerer Warlock Wizard)
  BACKGROUNDS = %w(Charlatan Criminal
Entertainer Folk Hero Guild Artisan Hermit Noble Outlander Sage Sailor Soldier Urchin)
  ALIGNMENTS = %w(Lawful-Good Neutral-Good Chaotic-Good
                  Lawful-Neutral True-Neutral Chaotic-Neutral
                  Lawful-Evil Neutral-Evil Chaotic-Evil)

  validates :player_name, presence: true
  validates :name, presence: true, uniqueness: true
  validates :eyes, presence: true
  validates :hair, presence: true
  validates :skin, presence: true
  validates :weight, numericality: { only_integer: true, greater_than: 0 }
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :backstory, length: { minimum: 50 }

  # fields with dropdowns
  validates :race, inclusion: { in: RACES }
  validates :character_class, inclusion: { in: CLASSES }
  validates :background, inclusion: { in: BACKGROUNDS }
  validates :alignment, inclusion: { in: ALIGNMENTS }

  # serializer

end