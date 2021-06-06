job "registry" {
  datacenters = ["InInDer"]

  group "registry" {

    network {
      port "registry" {
        static = 5000
        to = 5000
        host_network = "localhost"
      }
    }

    task "registry" {
      resources {
        cpu    = 400
        memory = 300
      }

      driver = "docker"

      config {
        image = "registry:2"
        ports = ["registry"]
        volumes = ["/var/lib/registry:/var/lib/registry"]
      }
    }

  }
}
