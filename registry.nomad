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
      driver = "docker"

      config {
        image = "registry:2"
        ports = ["registry"]
        volumes = ["/mnt/registry:/var/lib/registry"]
      }
    }

  }
}
