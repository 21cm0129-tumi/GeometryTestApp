//
//  GeometryView.swift
//  GeometryTest
//
//  Created by cmStudent on 2022/05/06.
//

import SwiftUI

struct GeometryView: View {
    
    var rectangleText : String
    
    var body: some View {
        GeometryReader { geometry in
            
            Rectangle()
                .overlay(
                    Text(rectangleText)
                        .foregroundColor(.white)
                )
        }
    }
}


struct GeometryView2: View {
    
    var viewModel : MainViewModel = MainViewModel()
    
    var body: some View {
        
        GeometryReader { geometry in
            
            Button(action: {
                
                viewModel.isActive = true
                print(viewModel.isActive)
            }, label: {
                Rectangle()
                    .foregroundColor(.pink)
                    .overlay(
                        Text("しかく2")
                            .foregroundColor(.white)
                    )
                
            })
            
        }
    }
}
//
//  GeometryView.swift
//  GeometryTest
//
//  Created by cmStudent on 2022/05/06.
//

import SwiftUI

struct GeometryView1: View {
    
    var rectangleText : String
    
    var body: some View {
        GeometryReader { geometry in
            
            Rectangle()
                .overlay(
                    Text(rectangleText)
                        .foregroundColor(.white)
                )
        }
    }
}


//struct GeometryView2: View {
//
//    var viewModel : MainViewModel = MainViewModel()
//
//    var body: some View {
//
//        GeometryReader { geometry in
//
//            Button(action: {
//
//                viewModel.isActive = true
//                print(viewModel.isActive)
//            }, label: {
//                Rectangle()
//                    .foregroundColor(.pink)
//                    .overlay(
//                        Text("しかく2")
//                            .foregroundColor(.white)
//                    )
//
//            })
//
//        }
//    }
//}
