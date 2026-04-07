-- Honestly I cranked this out in the console and reading it back wasn't sure if I needed to
-- alter the provided fiels so I'm putting all my queries here

-- 1. Filter forum posts mentioning EmptyStack in April 2048
SELECT * FROM forum_posts WHERE content ILIKE '%EmptyStack%' AND date BETWEEN '2048-04-01' AND '2048-04-30';
-- This gave the author of: smart-money-44

-- 2. Finding author of email first and last name
SELECT first_name, last_name FROM forum_accounts WHERE username = 'smart-money-44';
-- This gave first and last of: Brad Steele

-- 3. Finding all with the last name 'Steele'
SELECT * FROM forum_accounts WHERE last_name = 'Steele';
-- This gave 3 people: Andrew, Kevin, and Brad

-- 4. Finding all EmptyStack employees with last name 'Steele'
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';
-- This gave Andrew and Lance Steele, Andrew being the overlap

-- 5. Finding the self-driving taxi email
SELECT * FROM emptystack_messages WHERE SUBJECT ILIKE '%taxi%'; 
-- This gives the email coming from your-boss-99 to triple-cart-38

-- 6. Getting admin creds
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
-- This game username: your-boss-99, password: notagaincarter, first_name: Skylar, last_name: Singer

-- 7. Getting project ID
SELECT * FROM emptystack_projects WHERE code ILIKE '%TAXI%';
-- This gives a project ID of DczE0v2b

-- 8. Stopping the project
-- "node mainframe -stop" was ran and the credentials found entered
-- The project shutdown sequence was triggered and successfully stopped.