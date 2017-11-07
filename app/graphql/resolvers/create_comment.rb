class Resolvers::CreateComment < GraphQL::Function
  # arguments passed as "args"
  argument :body, !types.String
  argument :user_id, !types.ID
  argument :article_id, !types.ID

  # return type from the mutation
  type Types::CommentType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, ctx)
    Comment.create!(
      article_id: args[:article_id],
      body: args[:body],
      user_id: args[:user_id]
    )
  end
end
