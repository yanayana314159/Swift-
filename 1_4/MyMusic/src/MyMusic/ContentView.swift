//
//  ContentView.swift
//  MyMusic
//
//  Created by Swift-Beginners on 2020/12/31.
//

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        // 重ねてレイアウト(手前方向にレイアウト)
        ZStack {
            // 背景画像を指定する
            Image("background")
                // リサイズする
                .resizable()
                // 画面いっぱいになるようにセーフエリア外までいっぱいになるように指定
                .edgesIgnoringSafeArea(.all)
                // アスペクト比（縦横比）を維持して短辺基準に収まるようにする
                .aspectRatio(contentMode: .fill)
            
            // 水平にレイアウト(横方向にレイアウト)
            HStack {
                // シンバルボタン
                Button(action: {
                    // ボタンをタップしたときのアクション
                    // シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                }) {
                    // 画像を表示する
                    Image("cymbal")
                        // ボタン内の画像をカラー画像となるように指定する
                        .renderingMode(.original)
                }  // シンバルボタン ここまで

                // ギターボタン
                Button(action: {
                    // ボタンをタップしたときのアクション
                    // ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                }) {
                    // 画像を表示する
                    Image("guitar")
                        // ボタン内の画像をカラー画像となるように指定する
                        .renderingMode(.original)
                }  // ギターボタン ここまで
            }  // HStack ここまで
        }  // ZStack ここまで
    }  // body ここまで
}  // ContentView ここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
