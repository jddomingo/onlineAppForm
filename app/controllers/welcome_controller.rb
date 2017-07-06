class WelcomeController < ApplicationController
  def index
  		
  end


  def create
  		@pdf = render_to_string pdf: "onlineAppForm.pdf", template: 'welcome/sample', encoding: "UTF-8", 
						   page_size:'Letter',
						   dpi:300,
						   margin: {
						   	top: 25.4,
						   	bottom: 25.4,
						   	left: 25.4,
						   	right: 25.4},
						   disposition: 'attachment'

		save_path = Rails.root.join('pdfs', 'sample.pdf')
		File.open(save_path, 'wb') do |file|
			file << @pdf
		end
  end


  def sample
  		@pdf = render_to_string pdf: "onlineAppForm.pdf", template: 'welcome/sample', encoding: "UTF-8", 
						   page_size:'Letter',
						   dpi:300,
						   margin: {
						   	top: 25.4,
						   	bottom: 25.4,
						   	left: 25.4,
						   	right: 25.4},
						   disposition: 'attachment'

		save_path = Rails.root.join('pdfs', 'sample.pdf')
		File.open(save_path, 'wb') do |file|
			file << @pdf
		end
	
  end
  def appForm
  end

  def download
  end
  def prawnTest
  	prawn = params['myform']['comments']
  end
end
