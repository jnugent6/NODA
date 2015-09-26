var io = require('socket.io')().listen(2000);
    //redis = require('redis').createClient();

//redis.subscribe('rt-change');
console.log('server running');

io.on('connection', function(socket){
	 socket.broadcast.emit('joined');
	 socket.emit('connected');
	 console.log('connected to id %s', socket.id);

   socket.on('disconnect', function(){
    console.log('user disconnected');
    io.emit('disconnected')
  });
});