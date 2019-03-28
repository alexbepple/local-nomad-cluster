data_dir = "/tmp/nomad/client"

client {
    enabled = true
    servers = ["172.16.0.101"]
}

ports {
    http = 5656
}

addresses {
    http = "{{ GetInterfaceIP `eth1` }}"
}
