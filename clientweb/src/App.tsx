import { useState } from "react";

function App() {

    // State to track the socket connection
    const [socket, setSocket] = useState<WebSocket | null>(null);
    const [messages, setMessages] = useState<string[]>([]);
    const [userMessage, setUserMessage] = useState<string>("");

    
  

  return <div></div>;
}

export default App
