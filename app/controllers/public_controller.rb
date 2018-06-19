class PublicController < ApplicationController

  def show
    @posts = Post.all rescue nil

  end

  def posts_handler
      @posts = Post.all  rescue nil
  end



end
