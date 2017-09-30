require_relative 'post.rb'

class Author
  attr_accessor :name, :posts
  @@post_count = 0
  
  def initialize(name)
    @posts = []
    @name = name
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count

  end

end
