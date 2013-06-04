class ChangeTable < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.remove :name
      t.remove :grade
      
      t.integer :gakusyubango
      t.integer :gakunen
      t.string :kuarsu
      t.string :kanzi
      t.string :kana
      t.string :myozi
      t.integer :seireki
      t.integer :nenreisansyutuyou
      t.integer :nenrei
      t.integer :seigetu
      t.string :yuzaid
      t.string :emailadoresu
      t.integer :yuubinbangou
      t.string :zyusyo
      t.integer :denwa_zitaku
      t.integer :denwa_keitai
      t.string :kozinemairuadoresu
      t.string :gakkoumei
      t.string :gakubumei
      t.string :bunri
      t.integer :sotugyounendo
      t.string :sinsotu
      t.string :kinmusaki
      t.string :kinmusakizyuusyo
      t.string :syuugyoukikan
      t.string :tyoukirisyuu
      t.string :risyuukikan
      t.string :gakuseki
      t.string :kyuugakukikan
      t.integer :nyuugakunengappi
      t.integer :syuuryouyoteibi
      t.string :kokuseki
      t.string :zairyuusikaku
      t.string :hurikaeiraisyo
      t.string :zenkigenmenn
      t.string :koukigennmen
      t.string :kubun
      t.string :bikou
      t.string :kanzisimei
      t.string :kanasimei
      t.string :hosyounin_yuubinbangou
      t.integer :zyuusyo
      t.string :denwabangou
      t.integer :zokugarakubun
      t.string :zenki
      t.string :kouki
      t.string :tantou
      t.string :nyuusi
      t.integer :zyukennnendo
      t.integer :zyukenbangou
      t.integer :itkisotisiki
      t.integer :syouronbun
      t.integer :purezentesyon
      t.integer :mensetu
      t.integer :goukeiten
      t.string :umu
      t.string :hanteiriyuu
    end
  end
end

