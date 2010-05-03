class WritingController < ApplicationController
  def text
    @poems_by_month = Post.find_all_by_category_id("1", :order => "timestamp DESC").group_by { |post| post.timestamp.strftime("%B %Y") }
  end

  def poem
    #@poems = Post.find_all_by_category_id("2")
    @poems_by_month = Post.find_all_by_category_id("2", :order => "timestamp DESC").group_by { |post| post.timestamp.strftime("%B %Y") }
  end

  def else
    @poems_by_month = Post.find_all_by_category_id("3", :order => "timestamp DESC").group_by { |post| post.timestamp.strftime("%B %Y") }
  end

  def misc
    @poems_by_month = Post.find_all_by_category_id("4", :order => "timestamp DESC").group_by { |post| post.timestamp.strftime("%B %Y") }
  end
  
  def index
    @last_post = Post.last
  end
  
  def about
    @about = 1 # For different header
  end
  
  def view
    @post = Post.find_by_id(params[:id])
  end

end
