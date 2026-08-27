create table if not exists students (id uuid primary key default gen_random_uuid(), student_id text unique not null, name text not null, class_name text not null, password_hash text not null, active boolean default true, created_at timestamptz default now());
create table if not exists payments (id uuid primary key default gen_random_uuid(), student_name text not null, student_id text not null, month text not null, amount numeric not null, class_name text not null, slip_path text not null, status text default 'pending', created_at timestamptz default now());
create table if not exists resources (id uuid primary key default gen_random_uuid(), class_name text not null, title text not null, type text not null, url text not null, created_at timestamptz default now());
create table if not exists class_settings (id uuid primary key default gen_random_uuid(), class_name text unique not null, zoom_link text, zoom_id text, zoom_password text);
insert into class_settings(class_name) values ('Grade 6 — Theory Class'),('Grade 7 — Theory Class'),('Grade 8 — Theory Class'),('Grade 9 — Theory Class'),('Grade 10 — Theory Class'),('Grade 11 — Theory Class'),('2026 — Rapid Revision') on conflict (class_name) do nothing;
insert into storage.buckets(id,name,public) values ('payment-slips','payment-slips',false) on conflict (id) do nothing;
-- Create student accounts from the teacher/admin side. Generate password hashes with bcrypt (10 rounds), then insert.
-- Example: insert into students(student_id,name,class_name,password_hash) values ('SCI26-001','Student Name','Grade 10 — Theory Class','<BCRYPT_HASH>');
-- Keep the service-role key server-only. Never expose it as NEXT_PUBLIC_...
