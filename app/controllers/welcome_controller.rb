class WelcomeController < ApplicationController
  def index
  end
  def sample
	respond_to do |format|
		format.html
		format.json
		format.pdf {render template:'welcome/appForm', 
						   pdf: 'foo',
						   page_size:'Letter',
						   dpi:300,
						   margin: {
						   	top: 25.4,
						   	bottom: 25.4,
						   	left: 25.4,
						   	right: 25.4}
					}
	end
  end
  def appForm
  end 
end
