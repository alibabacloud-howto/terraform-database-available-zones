provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "cn-hongkong"
}

######## ClickHouse
## Multi AZ is usually used to launch Cassandra clusters.
data "alicloud_click_house_regions" "zones_ids" {
  current     = true
  output_file = "ClickHouse-Available-AZ.txt"
}
