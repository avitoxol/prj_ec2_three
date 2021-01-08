variable "type" {
  type = list
  default = ["t2.micro", "t2.nano"]
}

variable "webport" {
  type = list
  default = [22,80,443]
}
