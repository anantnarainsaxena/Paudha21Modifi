//
//  Diagnose.swift
//  PaudhaUI
//
//  Created by Anant Narain on 16/01/24.
//

//
//  Diagnose.swift
//  Paudha
//
//  Created by user 1 an on 18/12/23.
//

import SwiftUI

struct Diagnose: View {
    var body: some View {
        
            VStack{
                
                //            VStack{
                //                Text("Paudha").frame(width: 190).font(.system(size: 40,weight: .bold, design: .default))
                //                Spacer()
                //            }
                
                
                
                
                VStack{
                    
                    CardContentDiagnose()
                    
                    
//                    VStack{
//                        Text("Best Results...").font(.system(size:20, weight:.bold,design: .default)).foregroundColor(Color("bestResults"))
//                        
//                        Image("diagnose").resizable().frame(width: 331,height: 291).cornerRadius(27)
//                        Text("Uh oh...looks like your buddy has..").italic()
//                        Text("Potato Late Blight").font(.system(size: 20, weight: .heavy))
//                        VStack{
//                            VStack{
//                                Text("Symptoms:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                VStack{
//                                    Text("-Dark,water-soaked spots on leaves").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Rapidly enlarging,brown black lesions with yellow halos").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Curly withering dying leaves").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-White fuzzy growth on leaf undersides").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                }
//                                Text("Causes:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                VStack{
//                                    Text("-High humidity and cool, moist weather favor late blight development.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Phytophthora infestans, the pathogen, survives in infected plant debris and soil.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Inadequate or poorly applied fungicides leave crops vulnerable.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Improper irrigation practices, like overhead watering, encourage disease spread.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                }
//                                Text("Preventive Measures:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                VStack{
//                                    Text("-Plant Resistant Varieties:Choose potato varieties that have resistance to late blight.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Crop Rotation:Rotate potato crops with non-host crops to break the disease cycle.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Field Sanitation:Remove and destroy infected plant debris promptly.Avoid planting in fields with a history of late blight.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Proper Spacing:Plant potatoes with adequate spacing to improve air circulation.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("- Fungicide Application:Implement a preventive fungicide program, especially during periods of high risk.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Irrigation Practices: Use drip irrigation or other methods that minimize leaf wetness.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    
//                                    
//                                    
//                                }
//                                Text("Necessary Actions:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                VStack{
//                                    Text("-Isolate infected areas to prevent further spread.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-If late blight is confirmed, apply fungicides promptly according to recommended guidelines.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Stay informed about local weather conditions that favor late blight.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Implement a regular surveillance program to monitor for signs of late blight.").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    Text("-Maintain records of field history, treatments, and disease occurrences for future planning").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 15))
//                                    
//                                }
//                            }.padding()
//                        }.background(Color.black.opacity(0.1)).cornerRadius(20)
//                    }
                    
                }
                
                
                
            }.navigationBarBackButtonHidden(true).frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.9686, green: 0.8824, blue: 0.8431), Color(red: 240/255.0, green: 255/255.0, blue: 241/255.0)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
        
    }
}

struct Diagnose_Previews: PreviewProvider {
    static var previews: some View {
        Diagnose()
    }
}
