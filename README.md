# SCIENCE//LAB — Science Tuition Website

A modern black/red/neon-green Next.js site with:
- Home, Classes, About, Contact and Student Login pages
- WhatsApp-only registration flow (+94 77 634 5162)
- Grade 6–11 Theory Classes + Rapid Revision 2026
- Payment submission form with slip upload
- Supabase database + private Storage bucket
- Student ID/password login
- Student dashboard with Zoom details, recordings and study materials

## Launch
1. Create a free Supabase project.
2. Run `supabase/schema.sql` in Supabase SQL Editor.
3. Add `NEXT_PUBLIC_SUPABASE_URL` and `SUPABASE_SERVICE_ROLE_KEY` to `.env.local` / Vercel environment variables.
4. Create student rows with bcrypt password hashes (teacher/admin workflow). The site intentionally has no public registration form.
5. Add resources and Zoom settings in Supabase tables.
6. Replace the home teacher placeholder with `public/teacher.jpg` if you have the supplied photo.
7. Set the real monthly fees in `components/ClassCard.tsx` or move fees into a `classes` table.

## Local
`npm install`
`npm run dev`

## Important
The payment API uses the Supabase service-role key and is therefore server-only. Do not prefix it with `NEXT_PUBLIC_` and do not commit it.
