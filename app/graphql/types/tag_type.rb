Types::TagType = GraphQL::ObjectType.define do
  name "Tag"
  field :id, !types.ID
  field :name, !types.String
  field :taggings_count, !types.Int
end
