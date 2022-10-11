require './src/domain/repository/creator_repository'

module Domain
  module Services
    class CreatorService
      def initialize(creator:)
        @creator = creator
      end

      def call
        ::Domain::Repository::CreatorRepository.new(creator: @creator).call
      end
    end
  end
end
