class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]

  # GET /forms
  # GET /forms.json
  def index
    @forms = Form.all
    delete_public
  end

  # GET /forms/1
  # GET /forms/1.json
  def show
  end

  # GET /forms/new
  def new
    @form = Form.new
  end

  # GET /forms/1/edit
  def edit
  end

  # POST /forms
  # POST /forms.json
  def create
    @form = Form.new(form_params)

    respond_to do |format|
      if @form.save
        format.html { redirect_to @form }
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to @form }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download
    @form = Form.last
    #@pdf stores the pdf generated with necessary details found in form
    @pdf = render_to_string pdf: "onlineAppForm.pdf",
                  template: 'forms/final', #Template HTML for pdf
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
    send_data @pdf, :filename => @form.sn+"ScholarshipForm.pdf", :type => "application/pdf", disposition: 'attachment'
  end

  def delete_public
    FileUtils.rm_rf(Dir.glob(Rails.root + 'public/uploads/*'))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.require(:form).permit(:name, :sn, :birth, :citizenship, :caddress, :haddress, :pcontact, :paddress, :pname, :desire, :year, :current, :grades, :sts, :image, :stslevel, :income, :scholarship, :funding, :benefits, :duration, :incident, :disciplinary, :reason, :date, :allow, :name1, :name2, :name3, :name4, :name5, :name6, :name7, :relationship1, :relationship2, :relationship3, :relationship4, :relationship5, :relationship6, :relationship7)
    end
end
