require_relative 'helper.rb'

World(Helper)

# metodo para alterar o nome da screnshot
# e direcionar se o teste falhou ou nao
After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  scenario_name = scenario_name.delete(',', '')
  scenario_name = scenario_name.delete('(', '')
  scenario_name = scenario_name.delete(')', '')
  scenario_name = scenario_name.delete('#', '')

  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
end
