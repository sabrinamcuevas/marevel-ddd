module Domain
  module Repository

    def create(converter, entity, id = {})
      model = converter.to_model(entity, id)
      model.save! if model.id.nil?
      converter.to_entity(model)
    end
  end
end