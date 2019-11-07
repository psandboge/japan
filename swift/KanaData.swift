//
//  KanaData.swift
//  Gakusei Watch WatchKit Extension
//
//  Created by Pierre Sandboge on 2019-06-08.
//  Copyright © 2019 Pierre Sandboge. All rights reserved.
//

import Foundation

struct Kana {
 let katakana = [
    ["a","ア"], ["i","イ"], ["u","ウ"], ["e","エ"], ["o","オ"],
    ["ka","カ"],["ki","キ"],["ku","ク"],["ke","ケ"],["ko","コ"],
    ["sa","サ"],["shi","シ"],["su","ス"],["se","セ"],["so","ソ"],
    ["ta","タ"],["chi","チ"],["tsu","ツ"],["te","テ"],["to","ト"],
    ["na","ナ"],["ni","ニ"],["nu","ヌ"],["ne","ネ"],["no","ノ"],
    ["ha","ハ"],["hi","ヒ"],["fu","フ"],["he","ヘ"],["ho","ホ"],
    ["ma","マ"],["mi","ミ"],["mu","ム"],["me","メ"],["mo","モ"],
    ["ya","ヤ"],["yu","ユ"],["yo","ヨ"],
    ["ra","ラ"],["ri","リ"],["ru","ル"],["re","レ"],["ro","ロ"],
    ["wa","ワ"],["n","ン"],
//    ["",""],["",""],["",""],["",""],["",""],
//    ["",""],["",""],["",""],["",""],["",""],
]

     let hiragana = [
        ["a","あ"], ["i","い"], ["u","う"], ["e","え"], ["o","お"],
        ["ka","か"],["ki","き"],["ku","く"],["ke","け"],["ko","こ"],
        ["sa","さ"],["shi","し"],["su","す"],["se","せ"],["so","そ"],
        ["ta","た"],["chi","ち"],["tsu","つ"],["te","て"],["to","と"],
        ["na","な"],["ni","に"],["nu","ぬ"],["ne","ね"],["no","の"],
        ["ha","は"],["hi","ひ"],["fu","ふ"],["he","へ"],["ho","ほ"],
        ["ma","ま"],["mi","み"],["mu","む"],["me","め"],["mo","も"],
        ["ya","や"],["yu","ゆ"],["yo","よ"],
        ["ra","ら"],["ri","り"],["ru","る"],["re","れ"],["ro","ろ"],
        ["wa","わ"],["n","ん"],
    //    ["",""],["",""],["",""],["",""],["",""],
    //    ["",""],["",""],["",""],["",""],["",""],
    ]
}
enum KanaType { case hiragana, katakana }

extension Kana {
    func get3 () -> [String] {
        var s: [String] = []
        for _ in 0...2 {
            s += [katakana[Int(arc4random_uniform(UInt32(katakana.count)))][1]]
            print(s)
        }
        return s
    }

    func get4 (type: KanaType) -> [[String]] {
        var s: [[String]] = []
        var kana = katakana
        if (type == KanaType.hiragana) {
            kana = hiragana
        }
        for _ in 0...3 {
            let position = Int(arc4random_uniform(UInt32(kana.count)))
            var pick = kana[position]
            pick = makeUnique(array: s, pick: pick, position: position, kana: kana)
            s += [pick]
            print(s)
        }
        return s
    }
    
    func makeUnique(array: [[String]], pick: [String], position: Int, kana: [[String]]) -> [String] {
        for e in array {
            if e[0] == pick[0] {
                let nextPick = kana[(position + 1) % kana.count]
                return makeUnique(array: array, pick: nextPick, position: position + 1, kana: kana)
            }
        }
        return pick
    }
}
