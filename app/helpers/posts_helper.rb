module PostsHelper

  def nested_post_path(post)
  "/" + (post.ancestors + [post]).map(&:to_param).join("/")
  end

  
end
