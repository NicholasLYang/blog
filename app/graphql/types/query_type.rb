Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # queries are just represented as fields
  field :allArticles, !types[Types::ArticleType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Article.all }
  end
end
