#!/usr/bin/env python3

import os
import sys
import utils

if len(sys.argv) != 3:
    utils.error("usage: "+sys.argv[0]+" <tag_name> <path_to_file>")

TAG_NAME = sys.argv[1]
ASSET = sys.argv[2]

if not os.path.isfile(ASSET):
    utils.error(f"{ASSET} not found")
utils.verify_is_possible_gap_release_tag(TAG_NAME)
utils.initialize_github()

try:
    RELEASE = utils.CURRENT_REPO.get_release(TAG_NAME)
except:
    utils.error(f"{utils.CURRENT_REPO_NAME} contains no release {TAG_NAME}")

FILE = os.path.basename(ASSET)
if any(FILE == x.name for x in RELEASE.get_assets()):
    utils.error(f"A file {FILE} already exists on the release {TAG_NAME}")

utils.upload_asset_with_checksum(RELEASE, ASSET)
