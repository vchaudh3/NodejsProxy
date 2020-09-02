consul config write - <<EOF
kind = "service-splitter",
name = "simpleserver"

splits = [
  {
    weight = 50,
    service_subset = "v1"
  },
  {
    weight = 50,
    service_subset = "v2"
  }
]
EOF

