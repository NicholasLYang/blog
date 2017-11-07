Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # queries are just represented as fields
  field :createArticle, function: Resolvers::CreateArticle.new
  field :createComment, function: Resolvers::CreateComment.new
  field :createUser, function: Resolvers::CreateUser.new
end
