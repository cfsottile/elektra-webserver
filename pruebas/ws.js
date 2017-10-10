var ws = new WebSocket("ws://localhost:9292/");
ws.onmessage(ev => document.getElementById("p").textContent = event.data);