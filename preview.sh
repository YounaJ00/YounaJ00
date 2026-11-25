#!/bin/sh
# README.md 를 GitHub 실제 렌더러(POST /markdown)로 그려 preview.html 로 저장하고 엽니다.
set -e
cd "$(dirname "$0")"
python3 -I -c "
import json
json.dump({'text': open('README.md').read(), 'mode': 'gfm'}, open('.payload.json','w'))
"
gh api --method POST /markdown --input .payload.json > .body.html
python3 -I -c "
body = open('.body.html').read()
open('preview.html','w').write('''<!doctype html>
<html lang=\"ko\"><head><meta charset=\"utf-8\">
<title>GitHub 프로필 README 미리보기</title>
<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/github-markdown-css@5/github-markdown.css\">
<style>
  body { margin:0; background:#ffffff; }
  .markdown-body { box-sizing:border-box; max-width:1012px; margin:0 auto; padding:32px 24px 64px; }
  @media (prefers-color-scheme: dark) { body { background:#0d1117; } }
  @media (max-width:767px) { .markdown-body { padding:16px; } }
</style></head>
<body><article class=\"markdown-body\">''' + body + '''</article></body></html>''')
"
rm -f .payload.json .body.html
open preview.html
