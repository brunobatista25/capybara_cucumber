# Classe para mapear os elementos da pagina home
class HomePage < SitePrism::Page
  set_url 'Register.html'
  element :first_name, 'input[ng-model="FirstName"]'
  element :last_name, 'input[ng-model="LastName"]'
  element :address, 'textarea[ng-model="Adress"]'
  element :email_address, 'input[ng-model="EmailAdress"]'
  element :phone, 'input[ng-model="Phone"]'
  element :gender_male, 'input[value="Male"]'
  element :hobbies_movies, '#checkbox1'
  element :languages, '#msdd'
  element :arab_languages, '.ui-corner-all > li:nth-of-type(1)'
  element :select_country_field, '.select2-selection.select2-selection--single'
  element :auto_complete_field, '.select2-search__field'
  element :india, '#select2-country-results > li'
  element :password, 'input[ng-model="Password"]'
  element :confirm_password, 'input[ng-model="CPassword"]'
  element :button_submit_photo, '#imagesrc'
  element :button_submit, '#submitbtn'

  def fill_acoount(person)
    first_name.set person.first_name
    last_name.set person.last_name
    address.set person.street_name
    email_address.set person.email
    phone.set person.number
  end

  def select_gender
    gender_male.click
  end

  def select_hobbies
    hobbies_movies.click
  end

  def select_language
    languages.click
    arab_languages.click
  end

  def select_skills
    select 'Ruby', from: 'Skills'
  end

  def select_country(select_country_f)
    select 'Brunei', from: 'countries'
    select_country_field.click
    auto_complete_field.set select_country_f
    india.click
  end

  def select_birth
    select '1989', from: 'yearbox'
    select '12', from: 'Month'
    select '21', from: 'daybox'
  end

  def fill_password(password_f, confirm_password_f)
    password.set password_f
    confirm_password.set confirm_password_f
  end

  def submit
    button_submit.click
  end
end
