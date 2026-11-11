# The AI map

A free, interactive mini-course on how AI works, for curious people from teenagers to professionals. It has ten short modules with quizzes and a map of 200+ connected concepts. It is available in English and Brazilian Portuguese.

The whole site is one file, `The AI map.html`. It uses D3 from cdnjs and fonts from Google Fonts.

## Run it locally

```bash
python3 -m http.server 8791 --bind 127.0.0.1
```

Then open <http://localhost:8791/The%20AI%20map.html>.

## Publish it

The site is hosted on Cloudflare as a Worker that serves static files (settings in `wrangler.jsonc`). The deploy copies the page to `dist/index.html` with the share image and uploads that folder:

```bash
./deploy.sh
```

## Before launch

Fill in the `SITE` block near the top of the course pack in `The AI map.html`:

- your name;
- a link for corrections;
- the donation page;
- the reuse licence.

Each one stays hidden while it is empty.
