class PostsController < ApplicationController
    def new
        @post = Post.new
        @post.place_id = params["place_id"]
    end

    def create
        values = params["post"]
        @post = Post.new(values)
        @post.save
        redirect_to "/places/#{@post.place_id}"
    end
    
end
