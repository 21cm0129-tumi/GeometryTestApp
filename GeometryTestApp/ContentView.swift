//
//  ContentView.swift
//  GeometryTest
//
//  Created by cmStudent on 2022/05/06.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel : MainViewModel = MainViewModel()
    
    
    var body: some View {
        
        GeometryReader { geometry in
            let maxWidth: CGFloat = geometry.frame(in: .local).maxX
            let maxHeight: CGFloat = geometry.frame(in: .local).maxY

            
            MainView(maxWidth: maxWidth, maxHeight: maxHeight)
            //どんな端末でも対応できるMainView
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
