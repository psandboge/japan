//
//  RefView.swift
//  Gakusei Watch WatchKit Extension
//
//  Created by Pierre Sandboge on 2019-09-21.
//  Copyright © 2019 Pierre Sandboge. All rights reserved.
//

import SwiftUI

struct HiraganaRefView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hiragana")
            }
            Divider()
            HStack {
                ScrollView {
                    HStack {
                        VStack {
                            VStack {
                                Text("a")
                                    .fixedSize()
                                Text("あ")
                                Text("ka")
                                Text("か")
                                Text("sa")
                                Text("さ")
                                Text("ta")
                                Text("た")
                                Text("na")
                                Text("な")
                            }
                            VStack {
                                Text("ha")
                                Text("は")
                                Text("ma")
                                Text("ま")
                                Text("ya")
                                Text("や")
                                Text("ra")
                                Text("ら")
                                Text("wa")
                                Text("わ")
                            }
                        }
                        VStack {
                            VStack {
                                Text("i")
                                Text("い")
                                Text("ki")
                                Text("き")
                                Text("shi")
                                .fixedSize()
                                Text("し")
                                Text("chi")
                                .fixedSize()
                                Text("ち")
                                Text("ni")
                                Text("に")
                            }
                            VStack {
                                Text("hi")
                                Text("ひ")
                                Text("mi")
                                Text("み")
                                Text("-")
                                Text(" ")
                                Text("ri")
                                Text("り")
                                Text("-")
                                Text(" ")
                            }
                        }
                        VStack {
                            VStack {
                                Text("u")
                                Text("う")
                                Text("ku")
                                Text("く")
                                Text("su")
                                Text("す")
                                Text("tsu")
                                .fixedSize()
                                Text("つ")
                                Text("nu")
                                Text("ぬ")
                            }
                            VStack {
                                Text("fu")
                                Text("ふ")
                                Text("mu")
                                .fixedSize()
                                Text("む")
                                Text("yu")
                                Text("ゆ")
                                Text("ru")
                                Text("る")
                                Text("n")
                                Text("ん")
                            }
                        }
                        VStack {
                            VStack {
                                Text("e")
                                Text("え")
                                Text("ke")
                                Text("け")
                                Text("se")
                                Text("せ")
                                Text("te")
                                Text("て")
                                Text("ne")
                                Text("ね")
                            }
                            VStack {
                                Text("he")
                                Text("へ")
                                Text("me")
                                Text("め")
                                Text("-")
                                Text(" ")
                                Text("re")
                                Text("れ")
                                Text("-")
                                Text(" ")
                            }
                        }
                        VStack {
                            VStack {
                                Text("o")
                                Text("お")
                                Text("ko")
                                Text("こ")
                                Text("so")
                                Text("そ")
                                Text("to")
                                Text("と")
                                Text("no")
                                Text("の")
                            }
                            VStack {
                                Text("ho")
                                Text("ほ")
                                Text("mo")
                                Text("も")
                                Text("yo")
                                Text("よ")
                                Text("ro")
                                Text("ろ")
                                Text("wo")
                                Text("を")
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

struct HiraganaRefView_Previews: PreviewProvider {
    static var previews: some View {
        HiraganaRefView()
    }
}
