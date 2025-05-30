terraform{
    required_providers{
        docker = {
            source = "kreuzwerker/docker"
            version = "~> 2.13.0"
        }
    }
}

provider "docker" {
    host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "nginx_img" {
    name = "nginx:latest"
}

resource "docker_container" "nginx_container" {
    name = "nginx_terraform"
    image = docker_image.nginx_img.latest
    ports{
        internal = 80
        external = 8081
    }
}