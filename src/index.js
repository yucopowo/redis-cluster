var redis = require('redis');

var client = redis.createClient(7001,'localhost');

client.set('hello','This is a value');

client.get('hello',function (err,v) {
    if(err){
        console.error(err);
    }
    else {
        console.log("redis get hello v", v);
    }
});

client.quit();