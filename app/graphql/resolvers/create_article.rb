class Resolvers::CreateArticle < GraphQL::Function
  # arguments passed as "args"
  argument :title, !types.String
  argument :body, !types.String
  argument :user_id, !types.ID

  # return type from the mutation
  type Types::ArticleType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, ctx)
    Article.create!(
      title: args[:title],
      body: args[:body],
      user_id: args[:user_id]
    )
  end
end
