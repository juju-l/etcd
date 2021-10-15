

./etcd --advertise-client-urls=https://0.0.0.0:2379 --cert-file=`pwd`/server.pem --client-cert-auth=true --data-dir=`pwd`/2379 --initial-advertise-peer-urls=https://0.0.0.0:2380 --initial-cluster=mater-127.0.0.1-2379=https://0.0.0.0:2380,slave-127.0.0.1-2371=https://0.0.0.0:12380,slave-127.0.0.1-2373=https://0.0.0.0:32380 --key-file=`pwd`/server-key.pem --listen-client-urls=https://127.0.0.1:2379,https://0.0.0.0:2379 --listen-metrics-urls=http://127.0.0.1:2381 --listen-peer-urls=https://0.0.0.0:2380 --name=mater-127.0.0.1-2379 --peer-cert-file=`pwd`/peer.pem --peer-client-cert-auth=true --peer-key-file=`pwd`/peer-key.pem --peer-trusted-ca-file=`pwd`/ca.pem --snapshot-count=10000 --trusted-ca-file=`pwd`/ca.pem

./etcd --advertise-client-urls=https://0.0.0.0:12379 --cert-file=`pwd`/server.pem --client-cert-auth=true --data-dir=`pwd`/12379 --initial-advertise-peer-urls=https://0.0.0.0:12380 --initial-cluster=mater-127.0.0.1-2379=https://0.0.0.0:2380,slave-127.0.0.1-2371=https://0.0.0.0:12380,slave-127.0.0.1-2373=https://0.0.0.0:32380 --key-file=`pwd`/server-key.pem --listen-client-urls=https://127.0.0.1:12379,https://0.0.0.0:12379 --listen-metrics-urls=http://127.0.0.1:12381 --listen-peer-urls=https://0.0.0.0:12380 --name=slave-127.0.0.1-2371 --peer-cert-file=`pwd`/peer.pem --peer-client-cert-auth=true --peer-key-file=`pwd`/peer-key.pem --peer-trusted-ca-file=`pwd`/ca.pem --snapshot-count=10000 --trusted-ca-file=`pwd`/ca.pem

./etcd --advertise-client-urls=https://0.0.0.0:32379 --cert-file=`pwd`/server.pem --client-cert-auth=true --data-dir=`pwd`/32379 --initial-advertise-peer-urls=https://0.0.0.0:32380 --initial-cluster=mater-127.0.0.1-2379=https://0.0.0.0:2380,slave-127.0.0.1-2371=https://0.0.0.0:12380,slave-127.0.0.1-2373=https://0.0.0.0:32380 --key-file=`pwd`/server-key.pem --listen-client-urls=https://127.0.0.1:32379,https://0.0.0.0:32379 --listen-metrics-urls=http://127.0.0.1:32381 --listen-peer-urls=https://0.0.0.0:32380 --name=slave-127.0.0.1-2373 --peer-cert-file=`pwd`/peer.pem --peer-client-cert-auth=true --peer-key-file=`pwd`/peer-key.pem --peer-trusted-ca-file=`pwd`/ca.pem --snapshot-count=10000 --trusted-ca-file=`pwd`/ca.pem


./etcdctl --endpoints="127.0.0.1:2379,127.0.0.1:12379,127.0.0.1:32379" --cacert=`pwd`/ca.pem --cert=`pwd`/server.pem --key=`pwd`/server-key.pem endpoint status --write-out=table
