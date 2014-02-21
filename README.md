group_records
============
Tested with Rails 4.0.0 and Ruby 1.9.3.

Use this gem to group ActiveRecord::Relation objects by Month or Year.

PS - You must have a created_at column in the database table to use this gem. 

This gem provides two methods which returns hash having keys as month or year and value as array of all the objects for that month or year.

 1. group_by_month
 2. group_by_year

Example Usage -

class PostsController < ApplicationController

  def index
    @posts = Post.all
    @posts_months = @posts.group_by_month
  end
end

viewing @posts_months in rails console - 

{"January 2014"=>[#<Post id: 8, title: "sample">]}

