# app/decorators/post_decorator.rb
class PostDecorator < DelegateClass(Post)
  include ActiveadminPoroDecorator

end