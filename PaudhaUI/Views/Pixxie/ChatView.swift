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
        ChatView()
    }
}

struct ChatResponse: Codable {
    let completions: [Choice]
    
    struct Choice: Codable {
        let finishReason: String
        let index: Int
        let logprobs: [String: Double]  // Assuming logprobs is a dictionary mapping strings to doubles
        let text: String
    }
}

func getBotResponse(message: String, completion: @escaping (String) -> Void) {
    let apiKey = "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"
    let model = "gpt-3.5-turbo"
    let endpoint = "https://api.openai.com/v1/engines/\(model)/completions"
    
    guard let url = URL(string: endpoint) else {
        completion("Error: Invalid URL")
        return
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let requestData: [String: Any] = [
        "prompt": message,
        "max_tokens": 100
    ]
    
    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: requestData, options: [])
    } catch {
        completion("Error: Failed to serialize request data")
        return
    }
    
    let session = URLSession.shared
    let task = session.dataTask(with: request) { (data, response, error) in
        if let error = error {
            print("Error: \(error)")
            completion("Error: \(error.localizedDescription)")
        } else if let data = data {
            do {
                if let jsonString = String(data: data, encoding: .utf8) {
                    print("Response JSON: \(jsonString)")
                }
                
                let jsonResponse = try JSONDecoder().decode(ChatResponse.self, from: data)
                if let content = jsonResponse.completions.first?.text {
                    completion(content)
                } else {
                    completion("Error: Invalid response format")
                }
            } catch {
                print("Error decoding JSON: \(error)")
                completion("Error decoding JSON")
            }
        }
    }
    
    task.resume()
}
