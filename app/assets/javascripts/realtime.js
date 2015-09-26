var socket = io.connect("http://localhost:2000");

socket.on("connected", function(message){
  console.log('success')
});

socket.on("disconnected", function(message){
  console.log('someone left :(')
});

socket.on("joined", function(message){
  console.log('someone joined (^o^)')
});

