//
//  RefView.swift
//  Gakusei Watch WatchKit Extension
//
//  Created by Pierre Sandboge on 2019-09-21.
//  Copyright © 2019 Pierre Sandboge. All rights reserved.
//

import SwiftUI

struct KatakanaRefView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Katakana")
            }
            Divider()
            HStack {
                ScrollView {
                    HStack {
                        VStack {
                            VStack {
                                Text("a")
                                    .fixedSize()
                                Text("ア")
                                Text("ka")
                                Text("カ")
                                Text("sa")
                                Text("サ")
                                Text("ta")
                                Text("タ")
                                Text("na")
                                Text("ナ")
                            }
                            VStack {
                                Text("ha")
                                Text("ハ")
                                Text("ma")
                                Text("マ")
                                Text("ya")
                                Text("ヤ")
                                Text("ra")
                                Text("ラ")
                                Text("wa")
                                Text("ワ")
                            }
                        }
                        VStack {
                            VStack {
                                Text("i")
                                Text("イ")
                                Text("ki")
                                Text("キ")
                                Text("shi")
                                .fixedSize()
                                Text("シ")
                                Text("chi")
                                .fixedSize()
                                Text("チ")
                                Text("ni")
                                Text("ニ")
                            }
                            VStack {
                                Text("hi")
                                Text("ヒ")
                                Text("mi")
                                Text("ミ")
                                Text("-")
                                Text(" ")
                                Text("ri")
                                Text("リ")
                                Text("-")
                                Text(" ")
                            }
                        }
                        VStack {
                            VStack {
                                Text("u")
                                Text("ウ")
                                Text("ku")
                                Text("ク")
                                Text("su")
                                Text("ス")
                                Text("tsu")
                                .fixedSize()
                                Text("ツ")
                                Text("nu")
                                Text("ヌ")
                            }
                            VStack {
                                Text("fu")
                                Text("フ")
                                Text("mu")
                                .fixedSize()
                                Text("ム")
                                Text("yu")
                                Text("ユ")
                                Text("ru")
                                Text("ル")
                                Text("n")
                                Text("ン")
                            }
                        }
                        VStack {
                            VStack {
                                Text("e")
                                Text("エ")
                                Text("ke")
                                Text("ケ")
                                Text("se")
                                Text("セ")
                                Text("te")
                                Text("テ")
                                Text("ne")
                                Text("ネ")
                            }
                            VStack {
                                Text("he")
                                Text("ヘ")
                                Text("me")
                                Text("メ")
                                Text("-")
                                Text(" ")
                                Text("re")
                                Text("レ")
                                Text("-")
                                Text(" ")
                            }
                        }
                        VStack {
                            VStack {
                                Text("o")
                                Text("オ")
                                Text("ko")
                                Text("コ")
                                Text("so")
                                Text("ソ")
                                Text("to")
                                Text("ト")
                                Text("no")
                                Text("ノ")
                            }
                            VStack {
                                Text("ho")
                                Text("ホ")
                                Text("mo")
                                Text("モ")
                                Text("yo")
                                Text("ヨ")
                                Text("ro")
                                Text("ロ")
                                Text("wo")
                                Text("ヲ")
                            }
                        }
                    }
                    Divider()
                }
            }
        }
        .edgesIgnoringSafeArea(Edge.Set.bottom)
    }
}

struct KatakanaRefView_Previews: PreviewProvider {
    static var previews: some View {
        KatakanaRefView()
    }
}
