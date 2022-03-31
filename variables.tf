variable "organization" {
  type = string
}

variable "stage" {
  type = string
}

variable "elasticsearch_cluster_ID" {
  type = string
}

variable "ptfe_service" {
  description = "https://www.elastic.co/guide/en/cloud/current/ec-traffic-filtering-vpc.html"
  type        = string
  default     = "com.amazonaws.vpce.ap-northeast-2.vpce-svc-0d90cf62dae682b84"
}
variable "phsd_service" {
  description = "https://www.elastic.co/guide/en/cloud/current/ec-traffic-filtering-vpc.html"
  type        = string
  default     = "vpce.ap-northeast-2.aws.elastic-cloud.com"
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "internal_sg_id" {
  description = "vpc internal setting security group id"
  type        = string
}
