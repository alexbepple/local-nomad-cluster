clean:
    vagrant ssh nomad-1 --command 'rm -rf /tmp/nomad'
    vagrant ssh nomad-2 --command 'rm -rf /tmp/nomad'

start-server:
    vagrant ssh nomad-1 --no-tty --command 'nomad agent -config /vagrant/server.hcl'

start-client:
    vagrant ssh nomad-2 --no-tty --command 'nomad agent -config /vagrant/client.hcl'

open-nomad-ui:
    open http://172.16.0.101:4646
