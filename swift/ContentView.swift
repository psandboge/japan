//
//  ContentView.swift
//  Gakusei Watch WatchKit Extension
//
//  Created by Pierre Sandboge on 2019-06-04.
//  Copyright © 2019 Pierre Sandboge. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var kanaType = KanaType.katakana
    @State var reply = -1
    @State var texts = Kana().get4(type: KanaType.katakana)
    @State var correctIndex = Int(arc4random_uniform(4))
    @State var bg0 = Color.black
    @State var bg1 = Color.black
    @State var bg2 = Color.black
    @State var bg3 = Color.black

    var body: some View {
        VStack {
            VStack {
                HStack {
                    Button(action: {
                        print("")
                        print("Switch kana")
                        if (self.kanaType == KanaType.katakana) {
                            self.kanaType = KanaType.hiragana
                        } else {
                            self.kanaType = KanaType.katakana
                        }
                    }) {
                        Text("🔃")
                    }
                    Spacer()
                    Text(texts[correctIndex][0])
                        .bold()
                        .foregroundColor(.accentColor)
                    Spacer()
                    Button(action: {
                        print("Next")
                        self.texts = Kana().get4(type: self.kanaType)
                        self.correctIndex = Int(arc4random_uniform(4))
                        self.bg0 = .black
                        self.bg1 = .black
                        self.bg2 = .black
                        self.bg3 = .black
                    }) {
                        Text("▶️")
                    }
                }
                HStack {
                    Button(action: {
                        self.reply = Int(0)
                        print("Upper left")
                        if self.correctIndex == 0 {
                            print("green")
                            self.bg0 = Color.green.opacity(0.4)
                        } else {
                            self.bg0 = Color.red.opacity(0.4)
                            print("red")
                        }
                    }) {
                        Text(texts[0][1])
                            .bold()
                        .foregroundColor(.orange)
                    }.background(self.bg0)
                    Button(action: {
                        self.reply = Int(1)
                        print("Upper right")
                        if self.correctIndex == 1 {
                            print("green")
                            self.bg1 = Color.green.opacity(0.4)
                        } else {
                            self.bg1 = Color.red.opacity(0.4)
                            print("red")
                        }
                    }) {
                        Text(texts[1][1])
                            .bold()
                            .foregroundColor(.red)
                            
                    }
                        .background(self.bg1)
                }
                HStack {
                    Button(action: {
                        self.reply = Int(2)
                        print("Lower left")
                        if self.correctIndex == 2 {
                            print("green")
                            self.bg2 = Color.green.opacity(0.4)
                        } else {
                            self.bg2 = Color.red.opacity(0.4)
                            print("red")
                        }
                    }) {
                        Text(texts[2][1])
                            .bold()
                        .foregroundColor(.yellow)
                    }.background(self.bg2)
                    Button(action: {
                        self.reply = Int(3)
                        print("Lower right")
                        if self.correctIndex == 3 {
                            print("green")
                            self.bg3 = Color.green.opacity(0.4)
                        } else {
                            self.bg3 = Color.red.opacity(0.4)
                            print("red")
                        }
                    }) {
                        Text(texts[3][1])
                                .bold()
                                .foregroundColor(.blue)
                    }.background(self.bg3)
                    
                }
            }
        }
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
