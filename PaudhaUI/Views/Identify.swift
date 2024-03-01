//
//  Identify.swift
//  PaudhaUI
//
//  Created by Anant Narain on 16/01/24.
//

//
//  Identify.swift
//  Paudha
//
//  Created by user 1 an on 18/12/23.
//

import SwiftUI

struct Identify: View {
    var body: some View {

            VStack{
                VStack{
                   
//                   VStack{
//                        Text("Best Results...").font(.system(size:20, weight:.bold,design: .default)).foregroundColor(Color("bestResults"))
//                        
//                        Image("identify")
//                            .resizable()
//                            .frame(width: 331, height: 291)
//                            .cornerRadius(27)
//                            .overlay(
//                                Button(action: {
//                                    // Handle button action
//                                }) {
//                                    Image("addToCollection")
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fill)
//                                        .frame(width: 73, height: 73)
//                                        .cornerRadius(50).offset(x: 130,y: 140)
//                                }
//                            )
//                        
//                        Text("Golden Pothos").font(.system(size: 20,weight: .bold))
//                        Text("(Epipremnum aureum)").italic().font(.system(size: 15,weight: .medium))
//                        
//                    }
                    
                    CardContent()
                    
//                    VStack{
//                        VStack{
//                            VStack{
//                                Text("Overview")
//                                VStack{
//                                    Text("Features:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                    HStack{
//                                        Text("Air-purifying").font(.system(size: 17)).frame(width: 110).background(Color.orange.opacity(0.5)).cornerRadius(30)
//                                        Text("Easy").font(.system(size: 17)).frame(width: 60).background(Color.orange.opacity(0.5)).cornerRadius(30)
//                                        Text("Tall").font(.system(size: 17)).frame(width: 50).background(Color.orange.opacity(0.5)).cornerRadius(30)
//                                        Text("Trendy").font(.system(size: 17)).frame(width: 70).background(Color.orange.opacity(0.5)).cornerRadius(30)
//                                        
//                                    }
//                                    Text("Description:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                    VStack{
//                                        Text("The Pothos, or Epipremnum aureum, has the reputation of being one of the easiest houseplants to take care of. ----- the Pothos Marble Queen, featuring deeper green and white variegation.").frame(width: 316).font(.system(size: 17))
//                                    }
//                                    
//                                    
//                                    Text("Important Information:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                    
//                                    VStack{
//                                        HStack{
//                                            Text("Genus:").font(.system(size: 17))
//                                            Text("epipremnum").font(.system(size: 17))
//                                        }.frame(width: 316, alignment: .leading)
//                                        HStack{
//                                            Text("Common name:").font(.system(size: 17))
//                                            Text("ivy arum,Ceylon creeper").font(.system(size: 17))
//                                        }.frame(width: 316,alignment: .leading)
//                                        HStack{
//                                            Text("Scientific Name:").font(.system(size: 17))
//                                            Text("Epipremnum aureum").font(.system(size: 17))
//                                        }.frame(width: 316, alignment: .leading)
//                                        
//                                        
//                                    }.frame(width: 316)
//                                    
//                                    VStack{
//                                        VStack{
//                                            Text("Watering:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                            Text("Water your Pothos every 1-2 weeks, allowing soil to dry out between waterings. Expect to water more often in brighter light and less often in lower light. Some signs of overwatering include yellowing leaves and black stems, while underwatered plants will wilt and their potting mix will dry out.").frame(width: 316).font(.system(size: 17))
//                                        }
//                                        
//                                        
//                                        VStack{
//                                            Text("Temperature:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                            Text("Most houseplants prefer temperatures in the 65°F-85°F range (18°C-30°C). If you choose to keep your home cooler than that, try not to let it get below 60°F (15°C).").frame(width: 316).font(.system(size: 17))
//                                            
//                                        }
//                                        
//                                        
//                                        
//                                        VStack{
//                                            Text("Sunlight:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                            Text("Pothos plants thrive in bright, indirect light, but they can tolerate medium to low indirect light, for instance, in north-facing homes or during cooler seasons with shorter days. This plant is not suited for intense, direct sun, which will burn and brown its leaves.").frame(width: 316).font(.system(size: 17))
//                                        }
//                                        
//                                        
//                                        VStack{
//                                            Text("Soil:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                            Text("Chalky , Clay , Loam").frame(width: 316).font(.system(size: 17))
//                                        }
//                                        
//                                        
//                                        VStack{
//                                            Text("Pests and Diseases:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                            Text("Mealybugs, thrips, scale").frame(width: 316).font(.system(size: 17))
//                                        }
//                                        
//                                        
//                                        VStack{
//                                            Text("Humidity:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                            Text("Pothos can get by with normal or even dry air, but if you want to make them feel truly at home, you can increase humidity levels: aim for the 50-70% they would receive in their native Tropics.").frame(width: 316).font(.system(size: 17))
//                                        }
//                                        
//                                        
//                                        VStack{
//                                            Text("Fertilizer:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                            Text("Feed every 1-2 months in spring and summer").frame(width: 316).font(.system(size: 17))
//                                        }
//                                        
//                                        VStack{
//                                            Text("Repotting:").frame(width: 316,height: 20, alignment: .leading).font(.system(size: 18)).foregroundColor(Color("idenText"))
//                                            Text("Once it outgrows its current pot").frame(width: 316).font(.system(size: 17))
//                                        }
//                                    }
//                                    
//                                    
//                                    
//                                }
//                            }
//                            
//                            
//                        }.padding()
//                    }.background(Color.black.opacity(0.1)).cornerRadius(20)
                    
                }
                
                
                
                
                
                
                
            }.navigationBarBackButtonHidden(true)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(red: 0.9686, green: 0.8824, blue: 0.8431), Color(red: 240/255.0, green: 255/255.0, blue: 241/255.0)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ))
            
            
        
        
    }
    
    
}

struct Identify_Previews: PreviewProvider {
    static var previews: some View {
        Identify()
    }
}
