class PeopleController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
		redirect_to 'new'
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
		#@pdf stores the pdf generated with necessary details found in Person
		@pdf = render_to_string pdf: "onlineAppForm.pdf",
							    template: 'people/show', #Template HTML for pdf
							    encoding: "UTF-8", 
							    page_size:'Letter', #Page Size
						   		dpi:300, #
						   		margin: {
						   			top: 25.4,
								   	bottom: 25.4,
								   	left: 25.4,
								   	right: 25.4},
						   		disposition: 'attachment'
		#Downloads the generated pdf with the specified filename.
		send_data @pdf, :filename => @person.sn+"ScholarshipForm.pdf", :type => "application/pdf", disposition: 'attachment'
		return    
		redirect_to :back

	end

	private
	  def person_params
	    params.require(:person).permit(:name, :sn, :birth, :citizenship, :caddress, :haddress, :contact, :pname, :pcontact, :paddress, :desire, :year, :current, :degree, :grades, :sts, :stslevel, :income, :scholarship, :funding, :benefits, :duration, :allow, :incident, :disciplinary, :reason, :name_confirmation, :date, :name1, :age1, :relationship1, :occupation1, :living1, :marital1, :name2, :age2, :relationship2, :occupation2, :living2, :marital2, :name3, :age3, :relationship3, :occupation3, :living3, :marital3, :name4, :age4, :relationship4, :occupation4, :living4, :marital4, :name5, :age5, :relationship5, :occupation5, :living5, :marital5, :name6, :age6, :relationship6, :occupation6, :living6, :marital6, :name7, :age7, :relationship7, :occupation7, :living7, :marital7, :image)
	  end
end
