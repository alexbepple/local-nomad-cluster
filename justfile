
start-server:
    vagrant ssh --no-tty --command 'nomad agent -config /vagrant/server.hcl'

start-client:
    vagrant ssh --no-tty --command 'nomad agent -config /vagrant/client.hcl'

open-web-ui:
    open http://localhost:4646
