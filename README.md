

cfssl gencert -initca ca-csr.json |cfssljson -bare ca
cfssl gencert --config=ca-config.json -ca=ca.pem -ca-key=ca-key.pem -profile=etcd healthcheck-client-csr.json |cfssljson -bare healthcheck-client
cfssl gencert --config=ca-config.json -ca=ca.pem -ca-key=ca-key.pem -profile=etcd peer-csr.json |cfssljson -bare peer
cfssl gencert --config=ca-config.json -ca=ca.pem -ca-key=ca-key.pem -profile=etcd server-csr.json |cfssljson -bare server
