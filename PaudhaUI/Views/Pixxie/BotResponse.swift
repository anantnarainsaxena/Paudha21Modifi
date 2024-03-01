//
//  BotResponse.swift
//  PaudhaUI
//
//  Created by user1 on 21/02/24.
//

import Foundation

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

    let requestData = """
    {
        "prompt": "\(message)",
        "max_tokens": 100
    }
    """.data(using: .utf8)

    request.httpBody = requestData

    let session = URLSession.shared
    let task = session.dataTask(with: request) { (data, response, error) in
        if let error = error {
            print("Error: \(error)")
            completion("Error: \(error.localizedDescription)")
        } else if let data = data {
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                if let choices = json?["choices"] as? [[String: Any]],
                   let content = choices.first?["text"] as? String {
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

