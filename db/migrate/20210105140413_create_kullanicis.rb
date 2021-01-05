class CreateKullanicis < ActiveRecord::Migration[6.1]
  def change
    create_table :kullanicis do |t|
      t.string :ad
      t.string :soyad
      t.string :emial
      t.integer :telefon_numarası
      t.text :okudugunuz_okul
      t.text :calıstıgınız_is_yerleri

      t.timestamps
    end
  end
end
