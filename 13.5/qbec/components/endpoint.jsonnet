{
  "kind": "Service",
  "apiVersion": "v1",
  "metadata": {
    "name": "external-svc"
  },
  "spec": {
    "ports": [
      {
        "name": "web",
        "protocol": "TCP",
        "port": 80,
        "targetPort": 80
      }
    ]
  }
}

{
  "kind": "Endpoints",
  "apiVersion": "v1",
  "metadata": {
    "name": "external-svc"
  },
  "subsets": [
    {
      "addresses": [
        {
          "ip": "192.168.0.145"
        }
      ],
      "ports": [
        {
          "port": 80,
          "name": "web"
        }
      ]
    }
  ]
}
