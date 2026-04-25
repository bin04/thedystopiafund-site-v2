-- ============================================================
-- Dystopia Visions: AI-generated images table
-- Run this in the Supabase SQL editor
-- ============================================================

CREATE TABLE IF NOT EXISTS generated_images (
  id           SERIAL PRIMARY KEY,
  created_at   TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  slug         TEXT,           -- matches news_editor.slug that inspired the image
  prompt       TEXT NOT NULL,  -- the ComfyUI positive prompt that was used
  image_url    TEXT NOT NULL,  -- public Supabase Storage URL
  title        TEXT,           -- short poetic title for display
  is_published BOOLEAN DEFAULT TRUE
);

CREATE INDEX IF NOT EXISTS idx_gen_images_created ON generated_images(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_gen_images_slug    ON generated_images(slug);

-- Enable Row Level Security
ALTER TABLE generated_images ENABLE ROW LEVEL SECURITY;

-- Public read access
CREATE POLICY "public read generated_images"
  ON generated_images FOR SELECT
  TO public
  USING (true);

-- ============================================================
-- Also create the Supabase Storage bucket via the dashboard:
--   Storage → New Bucket → name: "visions" → Public: ON
-- ============================================================
