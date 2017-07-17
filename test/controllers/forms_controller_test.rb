require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get forms_url
    assert_response :success
  end

  test "should get new" do
    get new_form_url
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post forms_url, params: { form: { allow: @form.allow, benefits: @form.benefits, birth: @form.birth, caddress: @form.caddress, citizenship: @form.citizenship, current: @form.current, date: @form.date, desire: @form.desire, disciplinary: @form.disciplinary, duration: @form.duration, funding: @form.funding, grades: @form.grades, haddress: @form.haddress, image: @form.image, incident: @form.incident, income: @form.income, name1: @form.name1, name2: @form.name2, name3: @form.name3, name4: @form.name4, name5: @form.name5, name6: @form.name6, name7: @form.name7, name: @form.name, paddress: @form.paddress, pcontact: @form.pcontact, pname: @form.pname, reason: @form.reason, relationship1: @form.relationship1, relationship2: @form.relationship2, relationship3: @form.relationship3, relationship4: @form.relationship4, relationship5: @form.relationship5, relationship6: @form.relationship6, relationship7: @form.relationship7, scholarship: @form.scholarship, sn: @form.sn, sts: @form.sts, stslevel: @form.stslevel, year: @form.year } }
    end

    assert_redirected_to form_url(Form.last)
  end

  test "should show form" do
    get form_url(@form)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_url(@form)
    assert_response :success
  end

  test "should update form" do
    patch form_url(@form), params: { form: { allow: @form.allow, benefits: @form.benefits, birth: @form.birth, caddress: @form.caddress, citizenship: @form.citizenship, current: @form.current, date: @form.date, desire: @form.desire, disciplinary: @form.disciplinary, duration: @form.duration, funding: @form.funding, grades: @form.grades, haddress: @form.haddress, image: @form.image, incident: @form.incident, income: @form.income, name1: @form.name1, name2: @form.name2, name3: @form.name3, name4: @form.name4, name5: @form.name5, name6: @form.name6, name7: @form.name7, name: @form.name, paddress: @form.paddress, pcontact: @form.pcontact, pname: @form.pname, reason: @form.reason, relationship1: @form.relationship1, relationship2: @form.relationship2, relationship3: @form.relationship3, relationship4: @form.relationship4, relationship5: @form.relationship5, relationship6: @form.relationship6, relationship7: @form.relationship7, scholarship: @form.scholarship, sn: @form.sn, sts: @form.sts, stslevel: @form.stslevel, year: @form.year } }
    assert_redirected_to form_url(@form)
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete form_url(@form)
    end

    assert_redirected_to forms_url
  end
end
