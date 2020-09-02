consul config write - <<EOF
Kind      = "proxy-defaults"
Name      = "global"
Config {
  protocol = "http"
}
EOF

consul config write - <<EOF
Kind = "ingress-gateway"
Name = "ingress-gateway"

Listeners = [
  {
    Port     = 8080
    Protocol = "http"
        Services = [
      {
        Name  = "proxy"
        Hosts = "*"
      }
    ]
  }
]
EOF

