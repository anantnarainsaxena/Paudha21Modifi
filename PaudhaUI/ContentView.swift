//
//  ContentView.swift
//  PaudhaUI
//
//  Created by Anant Narain on 16/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isImagePickerPresented: Bool = false
    @State private var capturedImage: UIImage?
    var body: some View {
        
        PaudhaTabView()
//        VStack {
//            if let capturedImage = capturedImage {
//                Image(uiImage: capturedImage)
//                    .resizable()
//                    .scaledToFit()
//                    .padding()
//                
//                // Add your plant identification logic here using Core ML or other services.
//                // For simplicity, we just show the captured image for now.
//            } else {
//                Button("Capture Plant") {
//                    self.isImagePickerPresented.toggle()
//                }
//                .padding()
//                .sheet(isPresented: $isImagePickerPresented) {
//                    CameraView(isShown: $isImagePickerPresented, image: $capturedImage)
//                }
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
