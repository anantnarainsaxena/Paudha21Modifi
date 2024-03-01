//
//  ChatView.swift
//  PaudhaUI
//
//  Created by user1 on 21/02/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @State private var botResponse = ""
    @State private var messages: [String] = ["Welcome to PetalPixxie"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Paudha")
                    .font(.largeTitle)
                    .bold()
            }
            
            ScrollView {
                ForEach(messages, id: \.self) { message in
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        
                        HStack {
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(.white)
                                .background(.blue.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                        }
                    } else {
                        HStack {
                            Text(message)
                                .padding()
                                .background(.gray.opacity(0.15))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                            Spacer()
                        }
                    }
                }
                .rotationEffect(.degrees(180))
            }
            .rotationEffect(.degrees(180))
            
            HStack {
                TextField("Type something", text: $messageText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button {
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
            }
            .padding()
        }
    }
    
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                getBotResponse(message: message) { response in
                    messages.append(response)
                }
            }
        }
    }
}
    

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
