#!/usr/bin/env python3
import json
import subprocess

def get_terraform_output():
    cmd = ["terraform", "output", "-json"]
    output = subprocess.check_output(cmd).decode("utf-8")
    return json.loads(output)

def generate_inventory():
    terraform_output = get_terraform_output()
    inventory = {
        "node_exporter": {
            "hosts": terraform_output["prometheus_public_ip"]["value"]
        },
        "_meta": {
            "hostvars": {}
        }
    }
    print(json.dumps(inventory))

if __name__ == "__main__":
    generate_inventory()