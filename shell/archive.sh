#!/bin/bash

ansible_cmd="/home/tmalik/.local/bin/ansible-playbook"
playbook_one="/home/tmalik/ansible/inventory/playbook_001.yml"
playbook_two="/home/tmalik/ansible/inventory/playbook_002.yml"

user="tmalik"

"$ansible_cmd" "$playbook_one" -u "$user"
if [ $? -ne 0 ]; then
    echo "Failed to execute $playbook_one"
    exit 1
fi

"$ansible_cmd" "$playbook_two" -u "$user"
if [ $? -ne 0 ]; then
    echo "Failed to execute $playbook_two"
    exit 1
fi

echo "Execution complete."
