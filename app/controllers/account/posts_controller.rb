class Account::PostsController < ApplicationController
    before_action :authenticate_user!

    def index
        @posts = current_user.posts
    end

    def edit
        @group = Group.find(params[:group_id])
        @post.group = @group
        @post = Post.find(params[:id])
    end

    def destroy
        @post = current_user.post
        @post.detroy
        redirect_to group_post_path(@group)
    end
end
