class Serie < Infrastructure::Models::Serie
  has_many :comics
  belongs_to :creator

  attr_accessor :serie_id, :creator_id, :title, :description, :start_year, :end_year, :image_url, :rating

  def initialize(params)
    @serie_id = params.fetch(:serie_id, nil),
    @creator_id = params.fetch(:creator_id, nil),
    @title = params.fetch(:title, nil),
    @description = params.fetch(:description, nil),
    @start_year = params.fetch(:start_year, nil),
    @end_year = params.fetch(:end_year, nil),
    @image_url = params.fetch(:image_url, nil),
    @rating = params.fetch(:rating, nil)
  end
end
