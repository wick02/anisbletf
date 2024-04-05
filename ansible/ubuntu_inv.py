#!/usr/bin/env python3
import json
import subprocess

output = subprocess.check_output(["terraform", "output", "-json"]).decode("utf-8")
output_json = json.loads(output)

inventory = {
    "ubuntu_instances": {
        "hosts": [
            output_json["instance1_public_ip"]["value"],
            output_json["instance2_public_ip"]["value"]
        ]
    }
}

print(json.dumps(inventory))