//
//  EventData.swift
//  laugh bunkasai
//
//  Created by 神戸颯斗 on 2021/04/17.
//

import Foundation

var eventArray:[eventData] = makeData()



struct eventData: Hashable{
    var id: Int
    var Time:String
    var title: String
    var description: String
    var description1: String
}

func makeData()->[eventData] {
    var dataArray:[eventData] = []
    
    dataArray.append(eventData(id:2, Time: "10:00",title:"吹奏楽部",description: "演奏",description1: "私たち吹奏楽部は 今回、YouTube11億回再生のBTS「Dynamite」をはじめ吹奏楽の定番、ディズニーのメドレーなどを演奏します。盛り上がれる曲がたくさんあるので、ぜひ聞きに来てください。"))
    dataArray.append(eventData(id:3, Time: "10:45",title:"ギターマンドリン部",description: "演奏",description1: "こんにちは!ギターマンドリン部です。私たちは1年生も加わり毎日賑やかに楽しく活動し ています。今回「HANABI」、「ひまわりの約束」などみなさんの知っている曲をたくさん演奏するのでぜひ聞きに来てください!"))
    dataArray.append(eventData(id:4, Time: "11:10",title:"邦楽部",description: "演奏",description1: "今回、米津玄師の「打ち上げ花火」Lisaの「炎」嵐の「カイト」この3曲を演奏します!お筝に興味がある人、心を落ち着けたい人、文化祭の雰囲気にのまれて疲れた人ぜひ来て下さい!"))
    dataArray.append(eventData(id:5, Time: "11:22",title:"コーラス部",description: "コーラス",description1: "こんにちは、コーラス部です!今年も講堂で皆さんにすてきなハーモニーをお届けします、ぜひ聞きに来て下さい!そして、人数が本当に少ないので、新入部員もお待ちしております!"))
    dataArray.append(eventData(id:6, Time: "11:44",title:"ダンス部",description: "ダンス",description1: "私たちダンス部はこの青丹祭での舞台が1~3年生でおどる最初で最後の舞台なので、私たちもこの発表を楽しみに練習してきました。また、さまざまなジャンルのダンスを披露するので、たくさんの方々に楽しんでいただけるステージとなっています。ぜひ見に来て下さい!"))
    dataArray.append(eventData(id:7, Time: "12:16",title:"探求音楽",description: "合唱・合奏",description1: "僕達は音楽好きの3年生です。「鷗」の混声四部合唱と「パイレーツ・オブ・カリビアン」の器楽合奏を行います。合唱は美しく、合奏は迫力ある演奏を皆さんにお届けできるように発表を行います。ぜひ僕たちの音楽を聴きに来て下さい!"))
    dataArray.append(eventData(id:8, Time: "12:36",title:"軽音楽部",description: "演奏",description1: "今年もライブやりますよっ🔥 出演バンドは\n12:36~ The Blood Oranges\n12:51~ ル・マンド\n13:08~ The Polar Bears\n13:25~ Crispy Panda\n13:45~ More and More の5つです♪ぜひ来てください!みんなでもりあがっていきまひょ!!"))
    dataArray.append(eventData(id:9, Time: "14:00",title:"Cheese Avöid",description: "軽音楽",description1: ""))
    dataArray.append(eventData(id:10, Time: "14:15",title:"It's a peace of cake",description: "軽音楽",description1: ""))
    dataArray.append(eventData(id:11, Time: "14:30",title:"ミラノ風ドリア",description: "軽音楽",description1: ""))
    dataArray.append(eventData(id:13, Time: "9:05",title:"NEX",description: "軽音楽",description1: ""))
    dataArray.append(eventData(id:14, Time: "9:25",title:"F8",description: "近年の振り返り",description1: "F8は、先生たちのボケにまったくといっていいほど反応しませんが、みんな仲が良く、とても雰囲気の良いクラスです！舞台発表では、近年の振り返りを、装飾は光の庭を担当します。ぜひ、御覧ください！！"))
    dataArray.append(eventData(id:15, Time: "9:45",title:"F4",description: "ダンス",description1: "F4といえばダンス！ダンスといえばF4！彼らは法蓮最後の伝説となる！！（予定）\n体育館の飾りつけも頑張りました。\nぜひ見ていってください"))
    dataArray.append(eventData(id:16, Time: "9:56",title:"F1",description: "創作劇",description1: "球技大会で2冠という驚くべき成果を発揮したF1は、青丹祭でもかまさせていただきます!!!個性豊かな集団による(?)いざき先生プレゼンツ(?)の『三匹の小豚』の劇はどきどきわくわく爆笑がいっぱいです!見て損はさせません!!!ぜひ来てね~❣"))
    dataArray.append(eventData(id:17, Time: "10:07",title:"F9",description: "創作劇",description1: "どーも！F9です！\nF9はbaby faceでかわいい大川先生と明るくpowerfulな長谷川先生を中心に個性豊かな男子ととてもにぎやかな女子で毎日楽しくやっています。そんな私たちは舞台発表でアラジンをします。コミカルな要素も含んでいるので楽しんでいただけると思います！"))
    dataArray.append(eventData(id:18, Time: "10:18",title:"F7",description: "創作劇",description1: "私たちのクラスは戸瀬母ちゃん（先生）のもと、男女仲良くにぎやかに過ごしています。優しい子が多い７組！！\nそんな私たちは踊り、歌、劇と様々なことに挑戦します！最高の思い出になるよう全力を尽くします！ぜひ見に来て下さい。"))
   
    dataArray.append(eventData(id:19, Time: "10:29",title:"F3",description: "創作劇",description1: "F3です。F3は、担任の松田T副担任の岡Tと、普段静かだけど楽しむ時はしっかり楽しむ40人の明るいクラスです。そんな私たちは、舞台発表で「ロミオとジュリエット」をします。個性あふれる演技をどうぞご覧ください。"))
    dataArray.append(eventData(id:20, Time: "10:40",title:"F5",description: "創作劇",description1: "こんにちは！F5です。門口盛雄先生率いる私たち5組は屋上からの横断幕を担当しています。また、ステージ発表では劇をします。どちらもセンス溢れる私たちの最高傑作となっているので、ぜひ楽しんでいってください！！"))
    dataArray.append(eventData(id:21, Time: "10:51",title:"F6",description: "創作劇",description1: "オレら劇するシンデレラ！我らF6セントレア♪よろッ！オレらの演技はシャンデリア✨ヘィ！IKEAで買うのはインテリア💺うえ〜い！\n僕たちF6は「シンデレラ」の劇をします。「セントレア」というのは中部国際空港という意味ですが、「我らは学校の中心だ！」という意味で使っています。「シャンデリア」は「みんなを灯す」という意味です。よろしくお願いします！"))
    dataArray.append(eventData(id:22, Time: "11:02",title:"F2",description: "ダンス",description1: "どうもF2です。普段から賑やかなクラスが真面目にダンスをします。担任の上野慎太郎先生に率いられ、「やる時はやる」というかっこいい2組を是非見にきてください。"))
    dataArray.append(eventData(id:23, Time: "11:22",title:"Visby Jazz Street",description: "軽音楽",description1: ""))
       dataArray.append(eventData(id:24, Time: "11:39",title:"パンナコッタ",description: "軽音楽",description1: ""))
       dataArray.append(eventData(id:25, Time: "11:50",title:"Na:Light",description: "軽音楽",description1: ""))
    dataArray.append(eventData(id:26, Time: "",title:"",description: "",description1: ""))
    dataArray.append(eventData(id:27, Time: "",title:"",description: "",description1: ""))
    dataArray.append(eventData(id:28, Time: "",title:"",description: "演目は全て終了しました",description1: ""))
    return dataArray
}


