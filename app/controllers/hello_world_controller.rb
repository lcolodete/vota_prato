class HelloWorldController < ApplicationController

	def index
		render :text => "<h2>Index</h2><br/>Hello World from Rails!"
	end

	def hello
		render :text => "<h2>Hello</h2><br/>Hello World"
	end
end
