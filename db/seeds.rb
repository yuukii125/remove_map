# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Salon.create!( [{user_id: 1, name: "全身脱毛サロン恋肌　長崎店", address: "長崎県長崎市万屋町6-40 Vivacity 観光通り2F", phone_number: "095-821-0118"},
              {user_id: 1, name: "脱毛サロンSTLASSH　福岡天神店", address: "福岡県福岡市中央区大名２丁目１−５７ Ｃ・Ｓビル 5階", phone_number: "092-406-6575"},
              {user_id: 1, name: "福岡天神店メンズセルフ脱毛サロンMr.", address: "福岡県福岡市中央区大名１丁目１−７ GEST22ビル 4F", phone_number: "092-781-2333"},
              {user_id: 1, name: "エステティックTBC　天神店", address: "福岡県福岡市中央区天神２丁目４−１１ パシフィーク天神 2F", phone_number: "092-722-2411"},
              {user_id: 1, name: "全身脱毛サロン恋肌　福岡天神店", address: "福岡県福岡市中央区大名１丁目１２−４９ バルビゾン 102 4F", phone_number: "092-405-7873"},
              {user_id: 1, name: "全身脱毛サロン　キレイモ　福岡天神店", address: "福岡県福岡市中央区大名２丁目１−５３ BPRスクエア天神大名2F", phone_number: "0120-444-680"},
              {user_id: 1, name: "エルムクリニック京都院", address: "京都府京都市下京区寺町通四条下る貞安前之町５９４岡本鏡店ビル４F", phone_number: "075-353-1854"},
              {user_id: 1, name: "ゴリラクリニック 京都烏丸院", address: "京都府京都市中京区七観音町６３７ インターワンプレイス烏丸ビル３Ｆ", phone_number: "0120-987-118"},
              {user_id: 1, name: "愛島クリニック", address: "沖縄県石垣市真栄里１０８－７", phone_number: "0980-88-1212"},
              {user_id: 1, name: "札幌さくらビューティークリニック 旭川院", address: "北海道旭川市１条通６-78-1 クリスタルビル4階", phone_number: "0166-85-7676"},
              {user_id: 1, name: "さっぽろ美容クリニック 大通院", address: "北海道札幌市中央区南１条西７－１２－５　大通パークサイドビル５Ｆ", phone_number: "011-204-6066"},
              {user_id: 1, name: "松原皮ふ科・形成外科", address: "東京都目黒区自由が丘３－１０－６", phone_number: "03-5726-8122"},
              {user_id: 1, name: "シロノクリニック 銀座", address: "東京都中央区銀座2-2-2ヒューリック西銀座ビル4F", phone_number: "0120-997-474"},
              {user_id: 1, name: "中島皮フ科", address: "東京都北区赤羽２－２３－２　１Ｆ", phone_number: "03-3598-2823"},
              {user_id: 1, name: "ゴリラクリニック 池袋院", address: "東京都豊島区東池袋１－３０－６　セイコーサンシャインビル１２　７Ｆ", phone_number: "0120-987-118"},
              {user_id: 1, name: "秋葉原中央クリニック", address: "東京都千代田区神田佐久間町２－２０番地　翔和秋葉原ビル２Ｆ", phone_number: "0120-119-877"},
              {user_id: 1, name: "東京中央美容外科 新宿東口院", address: "東京都新宿区歌舞伎町１―２７―５歌舞伎町ＡＰＭビル７Ｆ", phone_number: "0120-814-971"},
              {user_id: 1, name: "高須クリニック 東京院", address: "東京都港区赤坂２-１４-２７ 国際新赤坂ビル東館１２F", phone_number: "0120-558-725"},
              {user_id: 1, name: "エミナルクリニック 川崎院", address: "神奈川県川崎市川崎区砂子２－６－２　三恵ビル　８Ｆ", phone_number: "044-276-8351"},
              {user_id: 1, name: "ジェニークリニック 横浜院", address: "神奈川県横浜市西区北幸１丁目１－８ エキニア横浜ビル７Ｆ", phone_number: "0120-774-224"},
              {user_id: 1, name: "渋谷美容外科クリニック 横浜院", address: "神奈川県横浜市西区南幸２－１１－１　横浜ＭＳビル７Ｆ", phone_number: "0120-154-282"},
              {user_id: 1, name: "あらおクリニック", address: "神奈川県横浜市青葉区しらとり台１―７　ヴァンテアン１Ｆ", phone_number: "045-983-4116"},
              {user_id: 1, name: "横浜マリアクリニック", address: "神奈川県横浜市西区高島２－１９－２横浜神谷ビル４Ｆ", phone_number: "0120-851-929"},
              {user_id: 1, name: "えいご皮フ科 四日市院", address: "三重県三重郡菰野町潤田１１８７－４", phone_number: "059-391-0363"},
              {user_id: 1, name: "広島中央クリニック", address: "広島県広島市中区銀山町１－１１フジスカイビル５Ｆ", phone_number: "0120-088-430"},
              {user_id: 1, name: "ドーズ美容外科 長崎院", address: "長崎県長崎市浜町８－１１　ＹＴビル４Ｆ", phone_number: "095-818-5510"},
              {user_id: 1, name: "鹿児島三井中央クリニック", address: "鹿児島県鹿児島市山下町9－１チャイムズビル６Ｆ", phone_number: "0120-077-614"},
              {user_id: 1, name: "まつなが形成外科・皮ふ科", address: "長崎県長崎市銅座町４−１４", phone_number: "095-820-0321"}
            ])
