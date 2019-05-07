const Redis = require('ioredis');
const redis_members = [
    {
        port: 7001,
        host: '127.0.0.1'
    },
    {
        port: 7002,
        host: '127.0.0.1'
    },
    {
        port: 7003,
        host: '127.0.0.1'
    },
    {
        port: 7004,
        host: '127.0.0.1'
    },
    {
        port: 7005,
        host: '127.0.0.1'
    },
    {
        port: 7006,
        host: '127.0.0.1'
    }
];

const cluster = new Redis.Cluster(redis_members);

cluster.set('foo', 'bar');
cluster.get('foo', function (err, res) {
    console.log('=====', res) //===== bar
});

setTimeout(function () {
    cluster.quit();
}, 1000);
