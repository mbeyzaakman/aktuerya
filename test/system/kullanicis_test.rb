require "application_system_test_case"

class KullanicisTest < ApplicationSystemTestCase
  setup do
    @kullanici = kullanicis(:one)
  end

  test "visiting the index" do
    visit kullanicis_url
    assert_selector "h1", text: "Kullanicis"
  end

  test "creating a Kullanici" do
    visit kullanicis_url
    click_on "New Kullanici"

    fill_in "Ad", with: @kullanici.ad
    fill_in "Calıstıgınız is yerleri", with: @kullanici.calıstıgınız_is_yerleri
    fill_in "Emial", with: @kullanici.emial
    fill_in "Okudugunuz okul", with: @kullanici.okudugunuz_okul
    fill_in "Soyad", with: @kullanici.soyad
    fill_in "Telefon numarası", with: @kullanici.telefon_numarası
    click_on "Create Kullanici"

    assert_text "Kullanici was successfully created"
    click_on "Back"
  end

  test "updating a Kullanici" do
    visit kullanicis_url
    click_on "Edit", match: :first

    fill_in "Ad", with: @kullanici.ad
    fill_in "Calıstıgınız is yerleri", with: @kullanici.calıstıgınız_is_yerleri
    fill_in "Emial", with: @kullanici.emial
    fill_in "Okudugunuz okul", with: @kullanici.okudugunuz_okul
    fill_in "Soyad", with: @kullanici.soyad
    fill_in "Telefon numarası", with: @kullanici.telefon_numarası
    click_on "Update Kullanici"

    assert_text "Kullanici was successfully updated"
    click_on "Back"
  end

  test "destroying a Kullanici" do
    visit kullanicis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kullanici was successfully destroyed"
  end
end
