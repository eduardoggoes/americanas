describe "Comprar" do
  it "moto G6" do
    #Parte que realiza o login
    find("#h_usr-link").hover
    click_link "Entrar"
    find("#email-input").set "isabelle_carol_paz@testedextra.com"
    find("#password-input").set "$3nh@d3T3s73"
    click_button "Continuar"

    #Realiza a busca do produto
    find("#h_search-input").set "Moto G6"
    find("#h_search-btn").click
    all(:css, 'div[class="col__StyledCol-sc-1snw5v3-0 epVkvq src__ColGridItem-sc-122lblh-0 bvfSKS"]')[0].click
    find("#buy-button").click
    find("#btn-continue").click
    find("#icon-plus").click

    # expect(find(".usr-nick")).to have_content "Isabelle"
    expect(find(".summary-total").text).to be < "R$ 5000,00"
    expect(find(".summary-totalInstallments").text).to eql "em até 10x sem juros"
    #expect(find(".summary-totalInstallments").text).to eql "em até 12x sem juros"
  end
end
