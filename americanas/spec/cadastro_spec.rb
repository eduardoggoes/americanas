describe "Cadastrar" do
  it "usuário com e-mail existente" do
    find("#h_usr-link").hover
    click_link "Cliente novo? Cadastrar"
    find("#email-input").set "teste@hotmail.com"
    find("#password-input").set "$3nh@d3T3s73"
    find("#cpf-input").set "84122425646"
    find("#name-input").set "Isabelle Caroline da Paz"
    find("#birthday-input").set "12/02/1957"
    choose("gender_F", allow_label_click: true)
    find("#phone-input").set "4195992746834"
    click_button "Criar seu cadastro"

    expect(find(".inputGroup-error")).to have_content "E-mail já cadastrado"
  end

  it "usuário com senha fraca" do
    find("#h_usr-link").hover
    click_link "Cliente novo? Cadastrar"
    find("#email-input").set "teste@hotmail.com"
    find("#password-input").set "12"
    find("#cpf-input").set "84122425646"
    find("#name-input").set "Isabelle Caroline da Paz"
    find("#birthday-input").set "12/02/1957"
    choose("gender_F", allow_label_click: true)
    find("#phone-input").set "4195992746834"
    click_button "Criar seu cadastro"

    expect(find(".passwordWrapper-msg")).to have_content "fraca"
    expect(find(".inputGroup-error")).to have_content "Senha precisa ter entre 6 a 50 caracteres."
  end

  it "usuário com CPF inválido" do
    find("#h_usr-link").hover
    click_link "Cliente novo? Cadastrar"
    find("#email-input").set "teste@hotmail.com"
    find("#password-input").set "$3nh@d3T3s73"
    find("#cpf-input").set "11111111111"
    find("#name-input").set "Isabelle Caroline da Paz"
    find("#birthday-input").set "12/02/1957"
    choose("gender_F", allow_label_click: true)
    find("#phone-input").set "4195992746834"
    click_button "Criar seu cadastro"

    expect(find(".inputGroup-error")).to have_content "CPF inválido."
  end

  it "usuário com sucesso" do
    find("#h_usr-link").hover
    click_link "Cliente novo? Cadastrar"
    find("#email-input").set "isabelle_carol_paz@testedextra.com"
    find("#password-input").set "$3nh@d3T3s73"
    find("#cpf-input").set "84122425646"
    find("#name-input").set "Isabelle Caroline da Paz"
    find("#birthday-input").set "12/02/1957"
    choose("gender_F", allow_label_click: true)
    find("#phone-input").set "4195992746834"
    click_button "Criar seu cadastro"

    expect(find(".usr-nick")).to have_content "Isabelle"
  end
end
