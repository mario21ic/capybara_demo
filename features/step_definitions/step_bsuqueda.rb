Dado /^que estoy en la pagina de google$/ do
    visit 'http://google.com/advanced_search?hl=en'
end


Cuando /^busco "([^"]*)"$/ do |consulta|
    fill_in 'as_q', :with => consulta
    click_button 'Search'
end

Entonces /^puedo entrar en su pagina oficial "([^"]*)"$/ do |resultados_esperados|
    results = all('cite').map { |el| el.text }
    results.should include resultados_esperados
    visit(resultados_esperados)
end

Entonces /^puedo encontrar la documentacion en el link "([^"]*)"$/ do |resultados_esperados|
    click_link(resultados_esperados)
end
