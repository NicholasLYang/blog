Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # queries are just represented as fields
  field :createArticle, function: Resolvers::CreateArticle.new
end
