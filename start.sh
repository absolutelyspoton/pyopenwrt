#!/bin/bash
echo "(c) Dom Williams"
echo "[BEGIN] start.sh"
echo "Fetch operating system details ... "
uname -a
echo "<python> version is: "
python --version
echo "<pip> version is: "
pip --version
echo "Running python start.py for basic operating tests ... " 
python start.py
echo "[END] start.sh"