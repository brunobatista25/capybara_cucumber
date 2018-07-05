require 'fileutils'

# modulo com um metodo para tirar foto e imbutir a foto no relatorio
# gerado pelo cucumber.
module Helper
  def tirar_foto(nome_arquivo, resultado)
    caminho_da_pasta = "results/screenshots/test_#{resultado}"
    foto = "#{caminho_da_pasta}/#{nome_arquivo}.png"
    page.save_screenshot(foto)
    embed(foto, 'image/png', 'Clique aqui')
  end
end
