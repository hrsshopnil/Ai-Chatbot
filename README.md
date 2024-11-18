# SwiftUI AI Chat App

A SwiftUI-based AI chat application leveraging the Gemini API to deliver dynamic, conversational AI capabilities.

## Features

- **Real-Time Chat**: Chat with an AI in a seamless and interactive user interface.
- **Powered by Gemini API**: Leverages state-of-the-art AI models for contextual and accurate responses.
- **Customizable UI**: Built with SwiftUI, allowing easy customization and theming.

---
## Screenshots
<p align="center">
  <img src="https://github.com/user-attachments/assets/524b6b14-c7b7-4008-b372-a5e753e607ef" alt="Image 1" style="margin: 10px; width: 280px;">
</p>

---
## Requirements

- **iOS 16.0+**
- **Xcode 14.0+**
- **Gemini API Key** (Signup and get your API key from the [Gemini API](https://gemini-api.com))

---

## Installation

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/yourusername/swiftui-ai-chat-app.git
    cd swiftui-ai-chat-app
    ```

2. **Install Dependencies**:
    This project uses `Swift Package Manager` (SPM). Open the project in Xcode, and it will automatically fetch dependencies.

3. **Set up Gemini API Key**:
    - Create a property list file and add a item named API_KEY, then put your api key as value
---

## Usage

1. **Run the Project**:
    - Open the project in Xcode and select your target device.
    - Click `Run` (⌘R) to build and launch the app.

2. **Start Chatting**:
    - Enter your query in the chat box and hit "Send."
    - The AI will respond instantly with context-aware replies.

---

## Gemini API Integration

This app integrates with the Gemini API using the following endpoints:

- **Chat**: For sending user messages and receiving AI responses.
  ```http
  POST https://api.gemini.com/v1/chat
  Headers: 
  - Authorization: Bearer YOUR_API_KEY_HERE
  Body: 
  {
      "message": "Your query here"
  }
