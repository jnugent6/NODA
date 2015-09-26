var socket = io.connect("http://128.61.33.172:2000");

socket.on("connected", function(message){
  console.log('success')
});

socket.on("disconnected", function(message){
  console.log('someone left :(')
});

socket.on("joined", function(message){
  console.log('someone joined (^o^)')
});

