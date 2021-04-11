#!/usr/bin/env python3

import os
import sys
import utils

if len(sys.argv) != 4:
    utils.error("usage: "+sys.argv[0]+" <tag_name> <asset> <download_dir>")

TAG_NAME = sys.argv[1]
ASSET = sys.argv[2]
DOWNLOAD_DIR = sys.argv[3]

if not os.path.isdir(DOWNLOAD_DIR):
    utils.error(f"{DOWNLOAD_DIR} seems not to be a directory")
utils.verify_is_possible_gap_release_tag(TAG_NAME)
utils.CURRENT_REPO_NAME = "wilfwilson/gap"
utils.initialize_github()

try:
    RELEASE = utils.CURRENT_REPO.get_release(TAG_NAME)
except:
    utils.error(f"{utils.CURRENT_REPO_NAME} contains no release {TAG_NAME}")

assets = [ x for x in RELEASE.get_assets() if ASSET == x.name ]
if len(assets) != 1:
    utils.error(f"No unique file {FILE} exists on the release {TAG_NAME}")

utils.download_with_sha256(assets[0].browser_download_url, os.path.realpath(DOWNLOAD_DIR) + "/" + ASSET)
