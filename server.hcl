# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir = "/tmp/server1"

# Enable the server
server {
    enabled = true

    # Self-elect, should be 3 or 5 for production
    bootstrap_expect = 1
}

advertise {
    http = "172.16.0.2"
    rpc = "172.16.0.2"
    serf = "172.16.0.2"
}
