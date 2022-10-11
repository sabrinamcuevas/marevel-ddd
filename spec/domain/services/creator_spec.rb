require 'spec_helper'
require './src/domain/services/creator_service'

RSpec.describe ::Domain::Category::Services::CreatorService, :services, :creator do
  let(:repository)            { ::Domain::Repository::CreatorRepository }
  let(:repository_instance)   { instance_double('::Domain::Repository::CreatorRepository') }
  let(:creator_entity)        { spy }

  context 'When is trying to create a creator' do
    before do
      allow(repository).to receive(:new).with(creator: creator_entity).and_return(repository_instance)
      allow(repository_instance).to receive(:call)
      described_class.new(creator: creator_entity).call
    end

    it 'delegates to repository' do
      expect(repository).to have_received(:new).with(creator: creator_entity)
      expect(repository_instance).to have_received(:call)
    end
  end
end
