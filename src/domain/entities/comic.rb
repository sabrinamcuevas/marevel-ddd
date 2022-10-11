class Comic < Infrastructure::Models::Comic
  has_many :characters
  belongs_to :series

  attr_accessor :comic_id, :serie_id, :title, :isbn, :description, :image_url, :page_count

  def initialize(params)
    @comic_id = params.fetch(:comic_id, nil),
    @serie_id = params.fetch(:serie_id, nil),
    @title = params.fetch(:title, nil),
    @isbn = params.fetch(:isbn, nil),
    @description = params.fetch(:description, nil),
    @image_url = params.fetch(:image_url, nil),
    @page_count = params.fetch(:page_count, nil)
  end
end
