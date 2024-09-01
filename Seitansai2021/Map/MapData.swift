//
//  MapData.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/26.
//

import Foundation

var mapArray:[MapData] = makeData_map()

struct MapData: Hashable {
var id: Int
var classroom:String
var event:String
var location:String
var room:String
var description:String
var price:String
var image:String
}

func makeData_map()->[MapData]{
var dataArray:[MapData] = []
//1年生
    dataArray.append(MapData(id:1,classroom:"F1",event:"創作劇",location:"講堂",room:"",description:"球技大会で2冠という驚くべき成果を発揮したF1は、青丹祭でもかまさせていただきます!!!個性豊かな集団による(?)いざき先生プレゼンツ(?)の『三匹の小豚』の劇はどきどきわくわく爆笑がいっぱいです!見て損はさせません!!!ぜひ来てね~❣",price:"9:56~10:06",image:"F1"))
dataArray.append(MapData(id:2,classroom:"F2",event:"ダンス",location:"講堂",room:"",description:"どうもF2です。普段から賑やかなクラスが真面目にダンスをします。担任の上野慎太郎先生に率いられ、「やる時はやる」というかっこいい2組を是非見にきてください。",price:"11:02~11:12",image:"F2"))
dataArray.append(MapData(id:3,classroom:"F3",event:"創作劇",location:"講堂",room:"",description:"F3です。F3は、担任の松田T副担任の岡Tと、普段静かだけど楽しむ時はしっかり楽しむ40人の明るいクラスです。そんな私たちは、舞台発表で「ロミオとジュリエット」をします。個性あふれる演技をどうぞご覧ください。",price:"10:29~10:39",image:"F3"))
dataArray.append(MapData(id:4,classroom:"F4",event:"ダンス",location:"講堂",room:"",description:"F4といえばダンス！ダンスといえばF4！彼らは法蓮最後の伝説となる！！（予定）\n体育館の飾りつけも頑張りました。\nぜひ見ていってください",price:"9:55~10:05",image:"F4"))
dataArray.append(MapData(id:5,classroom:"F5",event:"創作劇",location:"講堂",room:"",description:"こんにちは！F5です。門口盛雄先生率いる私たち5組は屋上からの横断幕を担当しています。また、ステージ発表では劇をします。どちらもセンス溢れる私たちの最高傑作となっているので、ぜひ楽しんでいってください！！",price:"10:40~10:50",image:"F5"))
dataArray.append(MapData(id:6,classroom:"F6",event:"創作劇",location:"講堂",room:"",description:"オレら劇するシンデレラ！我らF6セントレア♪よろッ！オレらの演技はシャンデリア✨ヘィ！IKEAで買うのはインテリア💺うえ〜い！\n僕たちF6は「シンデレラ」の劇をします。「セントレア」というのは中部国際空港という意味ですが、「我らは学校の中心だ！」という意味で使っています。「シャンデリア」は「みんなを灯す」という意味です。よろしくお願いします！",price:"10:51~11:01",image:"F6"))
dataArray.append(MapData(id:7,classroom:"F7",event:"創作劇",location:"講堂",room:"",description:"私たちのクラスは戸瀬母ちゃん（先生）のもと、男女仲良くにぎやかに過ごしています。優しい子が多い７組！！\nそんな私たちは踊り、歌、劇と様々なことに挑戦します！最高の思い出になるよう全力を尽くします！ぜひ見に来て下さい。",price:"10:18~10:28",image:"F7"))
dataArray.append(MapData(id:8,classroom:"F8",event:"近年の振り返り",location:"講堂",room:"",description:"F8は、先生たちのボケにまったくといっていいほど反応しませんが、みんな仲が良く、とても雰囲気の良いクラスです！舞台発表では、近年の振り返りを、装飾は光の庭を担当します。ぜひ、御覧ください！！",price:"9:25~9:35",image:"F8"))
dataArray.append(MapData(id:9,classroom:"F9",event:"創作劇",location:"講堂",room:"",description:"どーも！F9です！\nF9はbaby faceでかわいい大川先生と明るくpowerfulな長谷川先生を中心に個性豊かな男子ととてもにぎやかな女子で毎日楽しくやっています。そんな私たちは舞台発表でアラジンをします。コミカルな要素も含んでいるので楽しんでいただけると思います！",price:"10:07~10:17",image:"F9"))
//２年生
dataArray.append(MapData(id:10,classroom:"J1",event:"マッチング迷路",location:"仮校舎A棟-3",room:"J1教室",description:"今年のJ1は「マッチング迷路」です!同じカードを持った男子と女子が別々の入口からスタートし、迷路内でペアを見つけて、一緒にゴールを目指す、新感覚アトラクションです!あなたも、運命の相手とマッチングできるかも..♡",price:"",image:"J1"))
dataArray.append(MapData(id:11,classroom:"J2",event:"フォトスポット&人探しゲーム",location:"仮校舎A棟-3",room:"J2教室",description:"J2はフォトスポットと人探しゲームをやります!フォトスポットの方は、インスタ映えするような仕掛けを作ってお待ちしております!人探しゲームは、コスプレをした人を校内で見つけてもらいます!豪華な景品も!?",price:"",image:"J2"))
dataArray.append(MapData(id:12,classroom:"J3",event:"フィーリングカップル",location:"本館2階",room:"会議室",description:"私たちJ3は奈高1の元気さと仲の良さを誇っています。そんな私たちは会議室でフィーリングカップルをします。毎年大盛況のフィーリングカップルを奈高1元気な私たちがやるとどこまで盛り上がるのか...ぜひその目でお確かめ下さい!",price:"",image:"J3"))
dataArray.append(MapData(id:13,classroom:"J4",event:"運命の人",location:"仮校舎A棟-2",room:"J4教室",description:"J4には、毎日元気に楽しく暮らす個性豊かなメンバーがそろっています!行事の際には写真を撮りました!いえい!そんな我々が青丹祭で行う「運命の人」は奈高生全員がドキドキできるものになっています!お楽しみに!",price:"",image:"J4"))
dataArray.append(MapData(id:14,classroom:"J5",event:"気配斬り",location:"仮校舎A棟-2",room:"J5教室",description:"皆さんご存知の某テレビ番組で紹介された「気配斬り」が体験できちゃうよ!!五感を研ぎ澄ましてゲームに挑もう!うまくいけば景品もがっぽり!?我こそはという挑戦者はJ5まで来てね!!",price:"",image:"J5"))
dataArray.append(MapData(id:15,classroom:"J6",event:"お化け屋敷",location:"仮校舎A棟-2",room:"J6教室",description:"青丹祭当日、J6の教室の様子が奇妙であった。教室の中に入ったものは皆こう言う「呪われている。」と。そこで奈良高校生徒に、このJ6の教室の呪いについて調べてもらいたい。我々は教室で待っている。2年6組一同",price:"",image:"J6"))
dataArray.append(MapData(id:16,classroom:"J7",event:"Loveベガス007♡ ~そこに愛はあるんか~",location:"仮校舎A棟-2",room:"J7教室",description:"やめて!ディーラーのイカサマでロイヤルストレートフラッシュを決められたら、城之内の財布まで燃え尽きちゃう!お願い、負けないで城之内!あんたが今ここで散財したら、友達や恋人との約束はどうなっちゃうの?チップはまだ残ってる、ここを耐えればまた青春できるんだから!次回「城之内死す」デュエルスタンバイ!!",price:"",image:"J7"))
dataArray.append(MapData(id:17,classroom:"J8",event:"キッキングスナイパー",location:"仮校舎A棟-1",room:"J8教室",description:"我らがJ8は白衣の戦士、奈高のドクターXこと井上真奈美と教師陣でおそらく一番人生をenjoyしているであろう有馬一頼率いる、笑顔の絶えない素晴らしいクラスです。私達はキッキングスナイパーをします。私達と一緒に日々の勉強等で溜まったストレスを一蹴しましょう!",price:"",image:"J8"))
dataArray.append(MapData(id:18,classroom:"J9",event:"謎解き",location:"仮校舎A棟-1",room:"J9教室",description:"え?青丹祭で一番楽しいところ?そりゃあJ9の謎解きかな。青丹祭ってわちゃわちゃ騒ぐのも楽しいけど、その中でゆったり謎解きするのもまた格別なんだよな〰。まだ行ってないの!?絶対行ったほうがいいよ!(※個人の感想です。",price:"",image:"J9"))
//３年生
dataArray.append(MapData(id:19,classroom:"S1",event:"肉まん",location:"食堂前",room:"",description:"私たちS1は肉まんを販売します。ほかほかで美味しい肉まんを食べて青丹祭を楽しんでください!肉まんの他にもあんまん、ピザマン、などたくさんの種類を用意しています。是非、食べに来てください!要最高的文化節吧♡",price:"200円/1個",image:"S1"))
dataArray.append(MapData(id:20,classroom:"S2",event:"パン",location:"旧体育館南側",room:"",description:"様々なレパートリーのある輝かしいパン達、熱意、愛情、情熱を込めてパンを君に売ってくれる美男美女の売り子たち。さぁ、もう体がうずうずしてきただろう?もう勝手に体がパン屋の前に来ちゃってるだろう?皆さんもぜひ、お一ついかがですか!",price:"150円/1個",image:"S2"))
dataArray.append(MapData(id:21,classroom:"S3",event:"ワッフル",location:"旧体育館南側",room:"",description:"そういえば最近、はちみつにハマってて、蜂の巣に、はちみつを取りにいったんですYo!!そしたら...So!ワッフルだったんだよ~ん!あ~いとぅいまてーん。",price:"100円/1個",image:"S3"))
dataArray.append(MapData(id:22,classroom:"S4",event:"ペアシュークリーム",location:"旧昇降口前",room:"",description:"S4で販売しているペアシュークリームはいかがですか??これを食べればフランス旅行の気分を味わえちゃいます!!小腹がすいたらぜひ来てください☆☆☆☆",price:"150円/1個",image:"S4"))
dataArray.append(MapData(id:23,classroom:"S5",event:"ハンバーガー",location:"旧昇降口前",room:"",description:"S5では39人で力を合わせてご飯とお肉が食欲をそそる、ライスバーガーを販売します。青丹祭の楽しい一時のお供に、やみつきになる、新しい味をぜひご賞味下さい!",price:"150円/1個",image:"S5"))
dataArray.append(MapData(id:24,classroom:"S6",event:"クレープ",location:"正面玄関南側",room:"",description:"私たち3の6はクレープを販売します!クレープの味はショコラクランチ、イチゴ、メープルプリン、キャラメルバナナの4種類です!見た目もかわいいし、味は確実においしいので一度だけでも食べに来てください!もちろん他の味も食べに来て下さると嬉しいです!!",price:"200円/1個",image:"S6"))
dataArray.append(MapData(id:25,classroom:"S7",event:"アイス",location:"食堂前",room:"",description:"S7です。私たちはアイスを販売します。\n・バリエーション豊か\n・皆さんが好きそうなアイスをとりそろえました。青丹祭のお供にぜひいかがでしょうか。あなたの好きなアイスがきっと見つかるはずです。",price:"150円/1個",image:"S7"))
dataArray.append(MapData(id:26,classroom:"S8",event:"バームクーヘン",location:"正面玄関南側",room:"",description:"S8のバームクーヘン!ふわふわの生地に、しっとりとした甘さ。手が止まりません。無限に食べられます。また、気分を変えたいときは別のテイストを楽しむことができます。是非、食べに来てください!",price:"200円/1個",image:"S8"))
dataArray.append(MapData(id:27,classroom:"S9",event:"おにぎり",location:"正面玄関南側",room:"",description:"屯食とは、白米と海苔と詰め物よりえし、いにしえからの日本の伝統やうなる食ひ物なり。米粒おのおの光あひていと旨し。お腹空かばこれ食ひて文化なる祭りを楽しまむ。",price:"100円/1個",image:"S9"))
//部活動
dataArray.append(MapData(id:28,classroom:"数学研究会",event:"自作問題",location:"新館",room:"S5教室",description:"数学研究会では、部員たちが作成した問題の中から、選び抜いたものを出題します。数研の自作問題といっても身構える必要はありません。数学の得手、不得手は問わないので、数学に興味のある人は是非来てください!",price:"",image:"数学研究会"))
dataArray.append(MapData(id:29,classroom:"小倉百人一首かるた部",event:"かるた体験",location:"新館",room:"第5講義室",description:"小倉百人一首かるた部では、部員との札とり対決「かるた部からの挑戦状~その1枚は譲れない~」を行います!袴を着たかわいい部員に会えるかも...?ぜひかるた部を体験しに来てください♪",price:"",image:"小倉百人一首かるた部"))
dataArray.append(MapData(id:30,classroom:"物理部",event:"実験ショー",location:"新館",room:"S4教室",description:"ド迫力の物理実験が見れるチャンス!テレビでみたことあるかも...?なものをはじめとして、様々なものをお楽しみいただけます!ぜひ、足をお運びください!",price:"",image:"物理部"))
dataArray.append(MapData(id:31,classroom:"茶道部",event:"お点前ショー",location:"セミナーハウス",room:"1階",description:"こんにちは、茶道部です。私たち茶道部はセミナーハウス1Fでお点前を披露します。和の雰囲気を味わうことができるので、少しでも興味のある方はぜひ見に来てください!",price:"",image:"茶道部"))
dataArray.append(MapData(id:32,classroom:"華道部",event:"作品展示",location:"セミナーハウス",room:"2階",description:"部員一人一人が心を込めて生けたお花を展示します。華やかな癒しの空間をぜひ楽しみに来てください!",price:"",image:"華道部"))
dataArray.append(MapData(id:33,classroom:"文芸部",event:"部誌展示",location:"仮校舎A棟-2",room:"S6教室",description:"文芸部では「自鳴琴」「万華鏡」「漫葉集」を無料で配布します。教室では過去に発行した部誌も展示していますので、ぜひお立ち寄りください。",price:"",image:"文芸部"))

dataArray.append(MapData(id:34,classroom:"ESS部",event:"絵本・宝探し",location:"仮校舎A棟-2",room:"S7教室",description:"私たちは普段英語でディベートを行ったり、ALTの先生と楽しくレッスンをしています。青丹祭では絵本の展示や台湾との交流の際に使用予定のプレゼンのビデオを放映します。ぜひ、見に来てください。",price:"",image:"ESS部"))
dataArray.append(MapData(id:35,classroom:"写真部",event:"作品展示",location:"仮校舎A棟-2",room:"S8",description:"部員が撮影した写真を展示します!写真に興味がある人もそうでない人も、ぜひ一度足をお運びください!",price:"",image:"写真部tenji"))
dataArray.append(MapData(id:36,classroom:"ロボット研究会",event:"作品展示",location:"仮校舎A棟-2",room:"S9",description:"私たちは青丹祭の力を信じて此処迄やって来ました。青丹祭は分断された世界市民の絆を醸成し、世界を一つにし、我々が此の未曾有の災害に打ち克ったことを証明する機会と戌ります。青丹祭は完全に安心安全であります。",price:"",image:"ロボット研究会"))
dataArray.append(MapData(id:37,classroom:"地学部",event:"作品展示",location:"仮校舎A棟-3",room:"F4教室",description:"12星座についてのポスターや、太陽系の惑星のリアルな模型などを展示しています。「刺さる人には刺さる、空好きの空好きによる空好きのための地学部展示」みなさんぜひ刺さりに来てください",price:"",image:"地学部"))
dataArray.append(MapData(id:38,classroom:"鐵道愛好会",event:"作品展示",location:"仮校舎A棟-3",room:"F5教室",description:"鐡道愛好会では部活内で作った鐡道模型を展示します。完成度のあまり高い出来ではないですが、ぜひ自由に見ていってください。",price:"",image:"鐵道愛好会"))
    dataArray.append(MapData(id:39,classroom:"美術部",event:"作品展示",location:"仮校舎B棟",room:"美術室",description:"美術部員の作品がたくさん展示してあります。コンクール用の大きな作品から日々の練習の小さな絵、石膏デッサンまで様々です。ぜひ見に来て下さい。",price:"",image:"美術部tenji"))
    dataArray.append(MapData(id:40,classroom:"書道部",event:"作品展示",location:"仮校舎B棟",room:"書道室",description:"書道部では、個人の作品と合同作品を展示しています。白と黒の織りなす世界を楽しんでみませんか?部員の本気の作品を、ぜひ見に来てください!",price:"",image:"書道部tenji"))
    dataArray.append(MapData(id:41,classroom:"囲碁・将棋部",event:"囲碁・将棋体験",location:"仮校舎B棟",room:"第4講義室",description:"将棋、囲碁、どうぶつ将棋の体験を行っています。少しでも興味がある人はぜひ来てみてください。",price:"",image:"囲碁・将棋部"))
    dataArray.append(MapData(id:43,classroom:"化学部",event:"実験ショー",location:"仮校舎B棟",room:"化学実験室",description:"化学部です。化学部では、B棟1F化学実験室にて、様々な化学実験の展示を行います。普段触れる機会の無い特別な体験をしませんか。是非お越しください。化学部一同お待ちしております。",price:"",image:"化学部tenji"))
    dataArray.append(MapData(id:44,classroom:"家庭クラブ",event:"作品展示",location:"仮校舎B棟",room:"被服室",description:"奈良高校家庭クラブです。1年家庭基礎の授業で製作した「刺し子のコースター」と夏休みの課題で取り組んだ「ホームプロジェクト」を展示します。どうぞご覧ください。",price:"",image:"家庭クラブ"))
    dataArray.append(MapData(id:42,classroom:"水泳競技部",event:"シンクロショー",location:"プール",room:"",description:"今年もやります!水泳競技部によるシンクロショー!ウォーターボーイズの熟成された霜降りの筋肉はまさにA5ランク!美しいボディが奈高OCEANで宙を舞います。きれいな人魚も見れるかも。みんな見に来てね~♪",price:"",image:"水泳競技部"))
dataArray.append(MapData(id:45,classroom:"生物部",event:"作品販売",location:"本館1階",room:"生物室",description:"今年も例年通りDNAストラップとハッカ油を販売します。お待ちしています。是非お越しください",price:"DNAストラップ 150円/1個\nハッカ油 200円/1個",image:"生物部"))
    dataArray.append(MapData(id:46,classroom:"化学部",event:"作品販売",location:"仮校舎B棟",room:"化学実験室",description:"化学部です。化学部では、B棟1階化学実験室にて、とんぼ玉と結晶の販売を行います。とんぼ球も結晶も手作りの一点もの、世界に2つとありません。是非お越しください。化学部一同お待ちしております。",price:"トンボ玉 150円/1個\n結晶(ビスマス)350円/1個",image:"化学部mogi"))
    dataArray.append(MapData(id:47,classroom:"書道部",event:"作品販売",location:"仮校舎B棟",room:"書道室",description:"書道部では、うちわとしおりを販売しています!暑い日のおともに、読書のおともに、いかがですか?書道室でまってます!!",price:"うちわ 300円/1枚\nしおり 50円/1枚",image:"書道部mogi"))
 dataArray.append(MapData(id:48,classroom:"美術部",event:"作品販売",location:"仮校舎B棟",room:"美術室",description:"仮校舎B棟2階美術室にてプラバンのキーホルダー、ブローチ、ポストカード販売しております!今年限定の手作り商品でクオリティーの高いものばかり!売り切れる前にぜひ来て下さい!",price:"ブローチ 150円/1個\nプラ板キーホルダー 100円/1個\nポストカード 50円/1枚",image:"美術部mogi"))
    dataArray.append(MapData(id:49,classroom:"写真部",event:"作品販売",location:"仮校舎A棟-2",room:"S8",description:"写真部は写真の展示に加え、今年は、奈良高校の校舎を撮影したポストカードとプリクラの販売を行います。法蓮校舎最後の青丹祭の思い出に、ぜひ、いかがでしょうか?",price:"ポストカード 50円/1個\nチェキ撮影 100円/1回",image:"写真部mogi"))
    dataArray.append(MapData(id:50,classroom:"バレーボール部",event:"エアホッケー",location:"仮校舎A棟-3",room:"J3",description:"今年のバレー部はエアホッケーをします!ゲームセンターの楽しみを青丹祭で味わいませんか?待ってます♡♡",price:"150円/1回",image:"バレーボール部"))
    dataArray.append(MapData(id:51,classroom:"料理部",event:"チーズケーキバー",location:"正面玄関南側",room:"",description:"ベルギー産チョコレートでコーティングされた、ひんやり濃厚なチーズケーキバーです!ぜひご賞味ください♪",price:"150円/1個",image:"料理部"))
dataArray.append(MapData(id:52,classroom:"バスケットボール部",event:"ピニャータ割り",location:"運動場①",room:"",description:"バスケットボール部はピニャータをします!!ピニャータをわることができると景品を手に入れることができるので、ぜひ挑戦しにきてください",price:"100円/1回",image:"バスケットボール部"))
dataArray.append(MapData(id:53,classroom:"水泳競技部",event:"スーパーボール救い",location:"運動場②",room:"",description:"ここは水泳部の住処、プール。ここで事件が起きた。スーパーボールがおぼれたのだ。スーパーボールを救え!超スーパーボール救い!一つでも多く救って英雄になろう。君の挑戦を待っている。",price:"50円/1回",image:"水泳競技部"))
dataArray.append(MapData(id:54,classroom:"硬式テニス部",event:"ヨーヨー釣り",location:"運動場③",room:"",description:"硬式テニス部は、毎年恒例のヨーヨー釣りしか勝たん!場所はグラウンドです。釣らない後悔より釣る後悔!魅力あふれる部員一同お待ちしております!",price:"100円/1回",image:"硬式テニス部"))
dataArray.append(MapData(id:55,classroom:"ソフトテニス部",event:"的あて",location:"運動場④",room:"",description:"ソフトテニス部です。的当てをやっています。的めがけてテニスボールを投げてもらいます。日常のストレスをぶつけても良し、気になるあの子の気を惹いても良し、コロナ対策もバッチシです。豪華な景品も用意しています。",price:"100円/3回",image:"ソフトテニス部"))
dataArray.append(MapData(id:56,classroom:"卓球部",event:"きんちゃく当て",location:"運動場⑤",room:"",description:"卓球部は奈良高のあの“きんちゃく(袋)”射的をします!体育で練習した卓球の技術でピンポン玉をきんちゃく(袋)に当てて景品をGETしましょう!",price:"100円/1回",image:"卓球部"))
dataArray.append(MapData(id:57,classroom:"陸上競技部",event:"金魚すくい",location:"運動場⑥",room:"",description:"ついにやってきました青丹祭に今年も陸上部は夏にピッタリな金魚すくいをします。ぜひ一度足を運んでみてはいかがですか?部員一同お待ちしております!!",price:"100円/1回",image:"陸上競技部"))
dataArray.append(MapData(id:58,classroom:"ハンドボール部",event:"ストラックアウト",location:"運動場⑦",room:"",description:"今年もハンドボール部はストラックアウトを実施します!値段も安く挑戦しやすいので、どんどん参加してください!ハンドボール部みんなで待っています!",price:"50円/4回\n100円/10回",image:"ハンドボール部"))
dataArray.append(MapData(id:59,classroom:"弓道部",event:"弓道体験",location:"新館前",room:"",description:"こんにちは。弓道部です!大好評につき今年もやっちゃいます、弓道体験!的を射抜く爽快感をあなたも味わってみませんか?豪華(?)景品もあるのでぜひお気軽に弓道場まで!",price:"100円/5回",image:"弓道部"))
    dataArray.append(MapData(id:60,classroom:"野球部",event:"バッティングセンター",location:"運動場⑧",room:"",description:"こんにちは、野球部です。野球部は例年通り、バッティングセンターを行います。コロナでたまったストレスを思う存分発散してください!バッティングした後には嬉しい景品もあるかも?ぜひぜひ、バッティングセンターにお越しください!",price:"50円/1回",image:"野球部"))
dataArray.append(MapData(id:61,classroom:"アーチェリー部",event:"アーチェリー体験",location:"A棟-1前",room:"",description:"アーチェリー部はアーチェリー体験をします!1回の挑戦で5本射ることができます!結果に関わらず、全員に景品があります!!高得点だったら豪華景品も?!どんな人でも気軽に楽しめるので、ぜひお越しください。",price:"50円/4回",image:"アーチェリー部"))
    dataArray.append(MapData(id:62,classroom:"総務委員会",event:"グッズ販売",location:"図書室前",room:"",description:"総務委員会は庶務委員と共に、法蓮校舎の最後の年を記念して奈高のオリジナルデザインのボールペンとファイルを販売します。購入して思い出を作ろう!",price:"ボールペン 150円/1個\nファイル 200円/1枚",image:"総務委員会"))
    
    return dataArray
}

