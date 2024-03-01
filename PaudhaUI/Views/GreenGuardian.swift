//
//  GreenGuardian.swift
//  PaudhaUI
//
//  Created by Anant Narain on 16/01/24.
//

//
//  GreenGuardian.swift
//  Paudha
//
//  Created by user 1 an on 27/12/23.
//

import SwiftUI


class GreenGuardianViewModel: ObservableObject {
    @Published var isIdentifyActive: Bool = false
    @Published var isDiagnoseActive: Bool = false
}

struct GreenGuardian: View {
    @StateObject private var viewModel = GreenGuardianViewModel()
        @State private var isImagePickerPresented: Bool = false
        @State private var capturedImage: UIImage?
    var body: some View {
      
        
            NavigationStack{
                
                VStack{
                    
                    
                    VStack{
                        
                        //                            Image("plantHang")
                        //                                .resizable()
                        //                                .frame(width: 100,height:100)
                        //                                .clipShape(Circle())
                        //
                        //                                .offset(y:-40)
                        //                                .overlay()
                        Text("Green \n\tGuardian")
                            .font(.system(size: 35,weight: .bold))
//                            .frame(width: 250,alignment: .center)
                        
                    }.frame(width: 200,height: 200)
                        .background(Color.white.opacity(0.5)
                            .clipShape(Circle())).offset(y:-50)
                
                    VStack{
                        Text("Know Your \nGreens!")
                            .frame(width: 300,alignment: .center)
                            .font(.system(size: 20,weight: .bold))
                        
                        
                        CameraButtonView(isImagePickerPresented: $isImagePickerPresented, capturedImage: $capturedImage)
                            .padding()
                    }
                    
                    
                    NavigationLink(value: true, label: {
                                                Button(action: {
                                                    // Add any additional logic here
                                                    viewModel.isIdentifyActive = true
                                                }, label: {
                                                 
                                                        Text("Identify")
                                                        
                                                
                                                    
                                                })
                                            })
                                            .navigationDestination(isPresented: $viewModel.isIdentifyActive) {
                                                Identify()
                                            }
                    

                    VStack{
                        Text("Wellness Guru...")
                            .frame(width: 300,alignment: .center)
                            .font(.system(size: 20,weight: .bold)).padding()
                        CameraButtonView(isImagePickerPresented: $isImagePickerPresented, capturedImage: $capturedImage)
                            .padding()
                    }
                    NavigationLink(value: true, label: {
                                                Button(action: {
                                                    // Add any additional logic here
                                                    viewModel.isDiagnoseActive = true
                                                }, label: {
                                                 
                                                        Text("Diagnose")
                                                        
                                                
                                                    
                                                })
                                            })
                    .navigationDestination(isPresented: $viewModel.isDiagnoseActive) {
                        Diagnose()}
                    
            
                    

                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(red: 0.9686, green: 0.8824, blue: 0.8431), Color(red: 240/255.0, green: 255/255.0, blue: 241/255.0)]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ))
                     .edgesIgnoringSafeArea(.all)
                        
                    
            }
            
       
    }
    }



struct GreenGuardian_Previews: PreviewProvider {
    static var previews: some View {
        GreenGuardian()
    }
}

