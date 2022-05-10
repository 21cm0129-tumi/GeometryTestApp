//
//  SwiftUIView.swift
//  GeometryTest
//
//  Created by cmStudent on 2022/05/06.
//

import SwiftUI

struct MainView: View {
    
    let maxWidth: CGFloat
    let maxHeight: CGFloat
    
    var viewModel : MainViewModel = MainViewModel()
    @State private var width : Double = 100
    @State private var height : Double = 100
    
    var body: some View {
 
        
//MARK:          コメントアウトを解いていくとセーフエリアとGeometryReaderの関係がわかる
//      その１
        GeometryView(rectangleText: "画面いっぱいのしかく")
            .foregroundColor(.gray)
            .edgesIgnoringSafeArea(.all)
            .frame(width: width, height: height)
//       その２
//        GeometryView(rectangleText: "下がちょっと足りないしかく")
//            .foregroundColor(.blue)
//            .frame(width: width, height: height)
//            .edgesIgnoringSafeArea(.all)
//
//
//      その３
//        GeometryView(rectangleText: "上と下がちょっとずつ足りないしかく")
//            .foregroundColor(.red)
//            .frame(width: width, height: height)
        
        
        
        
        
        ZStack{
            //TODO: ドラッグやスワイプで座標取って四角を自由に動かせるようにしたい。
            
            
            VStack{
                Spacer()
                Text("しかくの横幅が変わるよ！")
                Slider(value: $width,
                       in: 0...maxWidth,
                       step: 1.0,
                       onEditingChanged: { bool in
                    viewModel.frameActive = bool
                })
                    .padding()
                
                Text("しかくの縦幅が変わるよ！")
                Slider(value: $height,
                       in: 0...maxHeight,
                       step: 1.0,
                       onEditingChanged: { bool in
                    viewModel.frameActive = bool
                })
                    .padding()
            }
            
        }
        
        
    }
}

