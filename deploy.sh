#!/bin/sh
# Publish the site to Cloudflare Pages: copy the page and its share image into dist/ and upload it.
set -e
cd "$(dirname "$0")"
rm -rf dist
mkdir dist
cp "The AI map.html" dist/index.html
cp share-preview.png dist/
npx -y wrangler@4 pages deploy dist --project-name=ai-map --branch=main --commit-dirty=true
