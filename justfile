
start-server:
    vagrant ssh nomad-1 --no-tty --command 'nomad agent -config /vagrant/server.hcl'

start-client:
    vagrant ssh nomad-2 --no-tty --command 'nomad agent -config /vagrant/client.hcl'

open-web-ui:
    open http://localhost:4646
