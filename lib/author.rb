class Author 
  
  attr_accessor :name, :author 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self 
  end
  
  def posts
    Post.all.select {|post| post.author = self}
  end
  
  def add_post_by_title(title)
   post = Post.new(title)
   add_post(title)
  end
  
  def self.post_count
    @post.all.count
  end
  
  
  
end