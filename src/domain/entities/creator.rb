class Creator < Infrastructure::Models::Creator
  has_many :series

  attr_accessor :creator_id, :first_name, :last_name, :image_url

  def initialize(params)
    @creator_id = params.fetch(:creator_id, nil),
    @first_name = params.fetch(:first_name, nil),
    @last_name = params.fetch(:last_name, nil),
    @image_url = params.fetch(:image_url, nil)
  end
end
