class Character < Infrastructure::Models::Character
  belongs_to :comics

  attr_accessor :character_id, :comic_id, :name, :description, :image_url

  def initialize(params)
    @character_id = params.fetch(:character_id, nil)
    @comic_id = params.fetch(:comic_id, nil)
    @name = params.fetch(:name, nil)
    @description = params.fetch(:description, nil)
    @image_url = params.fetch(:image_url, nil)
  end
end
