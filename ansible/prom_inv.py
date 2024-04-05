#!/usr/bin/env python3
import json
import subprocess

output = subprocess.check_output(["terraform", "output", "-json"]).decode("utf-8")
output_json = json.loads(output)

inventory = {
    "prom_instance": {
        "hosts": [
            output_json["prometheus_public_ip"]["value"]
        ]
    }
}

print(json.dumps(inventory))