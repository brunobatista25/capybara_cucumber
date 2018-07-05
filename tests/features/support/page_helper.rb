# Modulos para chamar as classes instanciadas
module Pages
  def user_page
    @user_page ||= UserPage.new
  end
end
