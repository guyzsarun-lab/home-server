variable "proxmox_config" {
  type = object({
    api_url  = string
    ip       = string
    user     = string
    ssh_user = string
    password = string
  })
  sensitive = true
  default = {
    api_url  = "https://proxmox-server01.example.com:8006/api2/json"
    ip       = "192.168.1.1"
    user     = "root@localhost"
    ssh_user = "root"
    password = "password"
  }
}

variable "pfsense" {
  type = object({
    version  = string
    checksum = optional(string)
  })
  default = {
    "version"  = "2.5.2"
    "checksum" = "941a68c7f20c4b635447cceda429a027f816bdb78d54b8252bb87abf1fc22ee3"
  }
}
