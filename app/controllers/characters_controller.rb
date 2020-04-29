class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to @character
    else
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    if @character.update(character_params)
      redirect_to @character
    else
      render :edit
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

end

private

def character_params
  params.require(:character).permit(:player_name, :name, :character_class, :race, :eyes, :skin, :hair,
              :background, :alignment, :ideals, :bonds, :flaws, :personality_traits, :backstory)
end