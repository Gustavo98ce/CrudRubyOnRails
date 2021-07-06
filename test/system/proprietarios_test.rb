require "application_system_test_case"

class ProprietariosTest < ApplicationSystemTestCase
  setup do
    @proprietario = proprietarios(:one)
  end

  test "visiting the index" do
    visit proprietarios_url
    assert_selector "h1", text: "Proprietarios"
  end

  test "creating a Proprietario" do
    visit proprietarios_url
    click_on "New Proprietario"

    fill_in "Cpf cnpj", with: @proprietario.cpf_cnpj
    fill_in "Endereco", with: @proprietario.endereco
    fill_in "Nome", with: @proprietario.nome
    click_on "Create Proprietario"

    assert_text "Proprietario was successfully created"
    click_on "Back"
  end

  test "updating a Proprietario" do
    visit proprietarios_url
    click_on "Edit", match: :first

    fill_in "Cpf cnpj", with: @proprietario.cpf_cnpj
    fill_in "Endereco", with: @proprietario.endereco
    fill_in "Nome", with: @proprietario.nome
    click_on "Update Proprietario"

    assert_text "Proprietario was successfully updated"
    click_on "Back"
  end

  test "destroying a Proprietario" do
    visit proprietarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proprietario was successfully destroyed"
  end
end
