class ContactController < ApplicationController

	layout 'standard_contact'
	
	def index
		@contact = Contact.all
	end


	def new
	end


	def create
		@contact = Contact.new(params.require(:article).permit(:name, :email, :subject, :message))

		if @contact.save
			redirect_to @contact
		else
			render 'new'
		end
	end


	def show
		@contact = Contact.find(params[:id])
	end


end
