class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token  
  def index
  end
  def sample
	pdf = render_to_string pdf: "foo", template: 'welcome/sample', encoding: "UTF-8", 
						   page_size:'Letter',
						   dpi:300,
						   margin: {
						   	top: 25.4,
						   	bottom: 25.4,
						   	left: 25.4,
						   	right: 25.4}
	save_path = Rails.root.join('pdfs', 'google.pdf')
	File.open(save_path, 'wb') do |file|
		file << pdf
	end
  end
  def appForm
  end
  def prawnTest
  	prawn = params['myform']['comments']
  end
end
