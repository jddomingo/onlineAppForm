class PeopleController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
	end

	def new
		@person = Person.new()
	end

	def create
		@person = Person.new(person_params)

		@person.save
		if @person.valid? == false
			flash[:error] = @person.errors
			render :template => 'people/new'
		else
			redirect_to @person
		end


	end

	def show
		@person = Person.find(params[:id])
		@pdf = render_to_string pdf: "onlineAppForm.pdf", template: 'people/show', encoding: "UTF-8", 
						   page_size:'Letter',
						   dpi:300,
						   margin: {
						   	top: 25.4,
						   	bottom: 25.4,
						   	left: 25.4,
						   	right: 25.4},
						   disposition: 'attachment'
		send_data @pdf, :filename => @person.sn+"SForm.pdf", :type => "application/pdf", disposition: 'attachment'
	end


	private
	  def person_params
	    params.require(:person).permit(:name, :sn, :birth, :citizenship, :caddress, :haddress, :contact, :pname, :pcontact, :paddress, :desire, :year, :current, :degree, :grades, :sts, :stslevel, :income, :scholarship, :funding, :benefits, :duration, :allow, :incident, :disciplinary, :reason, :name_confirmation, :date)
	  end
end
