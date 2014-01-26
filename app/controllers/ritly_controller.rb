class RitlyController < ApplicationController
	def index
	end

	def create
		new_ritly = params.require(:ritly).permit(:link)
		ritly = Url.find_by(link: new_ritly["link"])
		if ritly == nil
			new_ritly['random_string'] = SecureRandom.urlsafe_base64(10)
			ritly = Url.create(new_ritly)
		end
		redirect_to show_path(ritly)
	end

	def show
		id = params[:id]
		@ritly = Url.find(id)
	end




end
