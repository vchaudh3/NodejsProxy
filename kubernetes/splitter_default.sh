consul config write - <<EOF
kind = "service-splitter",
name = "simpleserver"

splits = [
  {
    weight = 100,
    service_subset = "v1"
  },
  {
    weight = 0,
    service_subset = "v2"
  }
]
EOF

