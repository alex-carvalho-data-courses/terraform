output "container_id" {
  description = "Id for the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "Id of the Docker image"
  value       = docker_image.nginx.id
}