consul config write - <<EOF
# NOTE: Routes are evaluated in order. The first route to match will stop
# processing.

kind = "service-router"
name = "proxy"
routes = [
  {
    match {
      http {
        path_prefix = "/"
      }
    }

    destination {
      service = "simpleserver"
    }
  }
]
EOF

