//
//  ContentView.swift
//  Ai ChatApp
//
//  Created by shopnil hasan on 19/11/24.
//

import SwiftUI
import GoogleGenerativeAI

struct ContentView: View {
    let model = GenerativeModel(name: "gemini-pro", apiKey: APIKey.default)
    @State private var userInput = ""
    @State private var isLoading = false
    @State private var response: LocalizedStringKey = "How can I help you today?"
    
    var body: some View {
        VStack {
            Text("Welcome to gemini ai")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.indigo)
                //.padding(.top, 5)
            
            ZStack {
                ScrollView {
                    Text(response)
                        .font(.title)
                    
                }
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .indigo))
                        .scaleEffect(3)
                }
            }
            
            TextField("Ask Gemeni", text: $userInput, axis: .vertical)
                .lineLimit(5)
                .font(.title)
                .padding()
                .background(.indigo.opacity(0.2), in: RoundedRectangle(cornerRadius: 24))
                .disableAutocorrection(true)
                .onSubmit {
                    generateResponse()
                }
        }
        .padding(.horizontal, 22)
    }
        
        private func generateResponse() {
            isLoading = true
            response = ""
            
            Task {
                do {
                    let result = try await model.generateContent(userInput)
                    isLoading = false
                    response = LocalizedStringKey(result.text ?? "No response found")
                    userInput = ""
                } catch {
                    response = "Something went wrong"
                }
            }
        }
}

#Preview {
    ContentView()
}
