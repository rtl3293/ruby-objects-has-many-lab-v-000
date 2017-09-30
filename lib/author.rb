require_relative 'post.rb'

class Author
  attr_accessor :name, :posts

  def initialize(name)
    @posts = []
    @name = name
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
end
