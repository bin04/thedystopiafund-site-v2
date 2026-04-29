# thedystopiafund-site State

Last updated: 2026-04-25

## Current Condition

Verified:

- Domain memory folder exists.
- `C:\Users\Admin\Github\Codex\_Base\thedystopiafund-site` is now a Git repository on branch `main`.
- The site uses Astro with Tailwind and Supabase.
- `npm run build` succeeds locally in this repo.
- Home page layout was adjusted on 2026-04-25 so the featured vision image now sits inside the left content column below the performance stats instead of as a full-width block above the main content.
- On 2026-04-25, the homepage featured vision card was updated to link to `/news/{slug}` when the latest published image has a matching slug, with fallback to `/visions`.
- On 2026-04-25, `src/pages/news/[slug].astro` was updated to render the matching published generated image above the article body when a `generated_images.slug` matches the news post slug.
- On 2026-04-25, the blog and news article pages were updated to render stored markdown content as HTML so source lists and inline links can display properly.
- A new `/predictions` page was added on 2026-04-25 and linked from the global nav.
- The `/predictions` page reads from `prediction_tremors` and presents lead-signal and recent-finding views.
- On 2026-04-28, the `/visions` gallery was updated so each image tile links directly to the stored full-size image asset with browser download/open behavior, while the separate source link still points to the digest that inspired it.
- The site has been published by the human operator to AWS Amplify.

Needs human input:

- First useful public experience.
- Amplify URL and deployment workflow details.

Next useful action:

- Run the site in a browser and visually confirm that the homepage featured vision opens the intended summary and that the matched image appears at the top of the news page.
