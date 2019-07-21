variable project {
  description = "Project ID"
}

variable region {
  description = "Region"

  # Значение по умолчанию
  default = "europe-west1"
}

variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable private_key_path {
  description = "ssh-key location"
  default     = "~/.ssh/appuser"
}

variable zone {
  description = "Zone"

  # Значение по умолчанию
  default = "europe-west1-b"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base-ansible"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base-ansible"
}
