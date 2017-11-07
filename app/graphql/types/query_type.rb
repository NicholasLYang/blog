Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # queries are just represented as fields
  field :articles, !types[Types::ArticleType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Article.all }
  end

  field :article do
    type Types::ArticleType
    argument :id, !types.ID
    description "Find an article by ID"
    resolve ->(obj, args, ctx) { Article.find(args["id"])}
  end

  field :users, !types[Types::UserType] do
    resolve ->(obj, args, ctx) { User.all }
  end

  field :user do
    type Types::UserType
    argument :id, !types.ID
    description "Find a user by ID"
    resolve ->(obj, args, ctx) { User.find(args["id"])}
  end


end
