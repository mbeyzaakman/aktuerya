require "test_helper"

class KullanicisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kullanici = kullanicis(:one)
  end

  test "should get index" do
    get kullanicis_url
    assert_response :success
  end

  test "should get new" do
    get new_kullanici_url
    assert_response :success
  end

  test "should create kullanici" do
    assert_difference('Kullanici.count') do
      post kullanicis_url, params: { kullanici: { ad: @kullanici.ad, calıstıgınız_is_yerleri: @kullanici.calıstıgınız_is_yerleri, emial: @kullanici.emial, okudugunuz_okul: @kullanici.okudugunuz_okul, soyad: @kullanici.soyad, telefon_numarası: @kullanici.telefon_numarası } }
    end

    assert_redirected_to kullanici_url(Kullanici.last)
  end

  test "should show kullanici" do
    get kullanici_url(@kullanici)
    assert_response :success
  end

  test "should get edit" do
    get edit_kullanici_url(@kullanici)
    assert_response :success
  end

  test "should update kullanici" do
    patch kullanici_url(@kullanici), params: { kullanici: { ad: @kullanici.ad, calıstıgınız_is_yerleri: @kullanici.calıstıgınız_is_yerleri, emial: @kullanici.emial, okudugunuz_okul: @kullanici.okudugunuz_okul, soyad: @kullanici.soyad, telefon_numarası: @kullanici.telefon_numarası } }
    assert_redirected_to kullanici_url(@kullanici)
  end

  test "should destroy kullanici" do
    assert_difference('Kullanici.count', -1) do
      delete kullanici_url(@kullanici)
    end

    assert_redirected_to kullanicis_url
  end
end
