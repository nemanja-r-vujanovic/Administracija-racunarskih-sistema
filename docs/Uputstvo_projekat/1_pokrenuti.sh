#!/bin/bash

import_fajl="uputstvo.md"
export_fajl="uputstvo.docx"

sadrzaj=$(cat "$import_fajl")
echo "$sadrzaj" > "$export_fajl"

echo "Ende!"