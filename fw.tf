resource "google_compute_firewall" "allow-default-port" {
    name = format("%s-allow-default-ports", var.vpc_name)
    network = google_compute_network.vpc_projeto.self_link

    allow {
        protocol = "icmp"
    }

    allow {
        protocol = "tcp"
        ports = [ "22", "80", "443" ]
    }

    source_ranges = [ "0.0.0.0/0" ]

    target_tags = [ "webapps" ]

}