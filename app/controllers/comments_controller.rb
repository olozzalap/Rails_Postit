class CommentsController < ApplicationController
	def index
		@post = Post.find(params[:post_id])
		@comments = Comment.where(post_id: params[:post_id])
		render 'posts/show'
	end
	def show
		@post = Post.find(params[:post_id])
		@comments = Comment.where(post_id: params[:post_id], id: params[:id])
		render 'posts/show'
	end
	def new
		@post = Post.find(params[:post_id])
		@comments = Comment.where(post_id: params[:post_id])
		@new_comment = true
		render 'posts/show'
	end
	def create
		Comment.create(comment: params[:comment], post_id: params[:post_id])
		redirect_to "/posts/#{params[:post_id]}/comments"
	end
	def edit
		@edit_comment = true
		@post = Post.find(params[:post_id])
		@comments = Comment.where(post_id: params[:post_id], id: params[:id])
		render 'posts/show'
	end
	def update
		@comment = Comment.find(params[:id])
		@comment.update_attributes(comment: params[:comment])
		redirect_to "/posts/#{params[:post_id]}/comments"
	end
end