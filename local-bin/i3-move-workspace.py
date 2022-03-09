#!/bin/python

import sys
import subprocess
import json
from pathlib import Path
from operator import itemgetter

def usage(exit_code=None):
    print(f"{Path(sys.argv[0]).stem}.py left|right")
    if exit_code:
        exit(exit_code)
def main(move: str):
    if move not in ["left", "right"]:
        usage(exit_code=1)
    ws_json = subprocess.run(["i3-msg", "-t", "get_workspaces"], capture_output=True, text=True).stdout
    ws_json = json.loads(ws_json)
    
    visible_ws = [ws for ws in ws_json if ws["focused"] and ws["visible"]][0]
    ws_idx = list(map(itemgetter("id"), ws_json)).index(visible_ws["id"])
    
    if move == "right":
        new_ws = ws_idx + 1
    else:
        new_ws = ws_idx - 1
    new_ws = new_ws % len(ws_json)
    
    new_ws = ws_json[new_ws]
    subprocess.run(["i3-msg", "workspace", str(new_ws["num"])], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        usage(exit_code=1)
    move = sys.argv[1]
    main(move)
