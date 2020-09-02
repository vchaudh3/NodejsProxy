consul config write - <<EOF
kind = "service-splitter",
name = "simpleserver"

splits = [
  {
    weight = 80,
    service_subset = "v1"
  },
  {
    weight = 20,
    service_subset = "v2"
  }
]
EOF

