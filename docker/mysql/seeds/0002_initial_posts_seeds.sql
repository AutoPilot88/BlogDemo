-- Technology
INSERT INTO posts (uuid, name, views, created_at, updated_at) VALUES
('5915ce26-bd85-4733-9300-07144f23a05f', 'The Rise of Artificial Intelligence in Everyday Life', 1520, now(), now()),
('90166084-f700-4d89-b423-f5e058446a7e', 'Top 10 Programming Languages to Learn in 2026',       980,  now(), now()),
('4391f578-664f-4d4b-89d0-6e1cf0e69934', 'How Quantum Computing Will Change the World',          640,  now(), now()),
('c0d0de75-0afa-492d-8a3b-45d53c2f4829', 'A Beginner''s Guide to Cybersecurity',                 2310, now(), now()),
('b4377738-0f01-41ba-b9f2-4d2e38720f96', 'Best Travel Apps Built with Cutting-Edge Tech',        410,  now(), now()),
('e20b14d7-441c-4b4e-9506-a8f2e4e5833c', 'Smart Gadgets Every Digital Nomad Should Own',         875,  now(), now()),

-- Travel
('1535fcce-3b8d-4fa4-9367-58f15ac77305', '10 Hidden Gems for Your Next Vacation',                3040, now(), now()),
('cb3521d4-87de-4215-8784-d62ffd31a0e5', 'How to Travel the World on a Budget',                  1780, now(), now()),
('39e8d3ed-a228-42dd-b1f4-68c5c0f9db1d', 'A Complete Guide to Backpacking in Southeast Asia',    920,  now(), now()),
('9c044c20-5005-4676-a9b1-073432efd4d2', 'The Best Cities for Remote Work and Travel',           1105, now(), now()),
('ef409d89-8cd3-4fe3-97ee-ae9ebb3b66ec', 'A Food Lover''s Guide to Street Markets Abroad',       1590, now(), now()),
('ff06b2e9-6161-47e4-9507-55a76d5b309d', 'Top Destinations for Culinary Tourism',                670,  now(), now()),

-- Food
('fe4bc9d6-c43c-4ed3-a8e7-7133a1c4cf1b', 'Mastering the Art of Homemade Pasta',                  2280, now(), now()),
('b97d739b-99ec-4c2a-a708-44271f603aa2', '5 Easy Weeknight Dinner Recipes',                       4120, now(), now()),
('48a88180-f025-4046-b7ae-679c2bedf72a', 'The Secret to the Perfect Sourdough Bread',            1330, now(), now()),
('f641cafe-7ce0-4da6-9e03-fa0047a4b296', 'Exploring the Flavors of Regional Cuisine',            560,  now(), now()),
('1a9ae328-438b-4aec-b03b-56adeb88f040', '10 Superfoods to Boost Your Immune System',            2890, now(), now()),
('79f4f77f-c018-4bff-806d-b8ac518e6707', 'Plant-Based Recipes for a Healthier Diet',             1745, now(), now()),

-- Health
('444c0da6-e85c-47c9-8684-8fb925496e4a', 'Simple Habits for Better Mental Health',               3310, now(), now()),
('ec042693-7ef4-47ee-9ff5-32127efe9f5f', 'A Beginner''s Guide to Meditation',                    1200, now(), now()),
('1b05b7b1-077a-4a76-af06-d8ff87224d8f', 'Understanding the Importance of Sleep',                980,  now(), now()),
('1cc0110b-af1f-46fd-adf1-6cbb4ff8d256', 'How to Build a Sustainable Workout Routine',           2050, now(), now()),
('ce90ac45-33d4-4855-8692-0fd405339a0a', 'Managing Stress in a High-Pressure Work Environment',  1615, now(), now()),
('1e6f26d3-5ff4-4554-a690-3188872ba195', 'The Link Between Employee Wellness and Productivity',  530,  now(), now()),

-- Business
('958ab561-c25e-4a0c-86c6-18be49a597ff', 'How to Write a Winning Business Plan',                 1890, now(), now()),
('6c793da3-1166-451c-a62a-c9392a70772c', 'The Fundamentals of Personal Finance',                 3620, now(), now()),
('e6eb32e5-3ff6-4b26-85e7-05c73ab6f3b5', 'Building a Brand from Scratch',                        1240, now(), now()),
('7d2625b2-b268-4cb9-bef2-b23ba615617a', 'Remote Work Trends Shaping the Modern Office',         870,  now(), now()),
('c1e27354-4fc0-434f-b8e5-684353837ece', 'The Business of Professional Sports Sponsorships',     460,  now(), now()),
('afc462f1-6d54-49d8-9331-14efcfa95e24', 'How Sports Franchises Build Billion-Dollar Brands',    1030, now(), now()),

-- Sports
('ff88959b-9562-4fcd-a609-2215c65e87a3', 'Top 10 Moments in Olympic History',                    2740, now(), now()),
('4fb1654e-43d0-47fb-acfd-a0c0e1abc83e', 'A Beginner''s Guide to Training for a Marathon',       1920, now(), now()),
('51bd8828-259e-49a4-89d9-8516d368e268', 'The Rise of Women''s Sports Around the World',         1080, now(), now()),
('a72fa28f-123d-4b56-9d72-36ad64fd7544', 'How to Choose the Right Running Shoes',                650,  now(), now()),
('a8595d1a-5090-4648-a89d-8b3abd29ae56', 'Wearable Tech Changing the Game for Athletes',         1470, now(), now()),
('6184074a-9f8a-437d-9a66-4a6cf9a9cb53', 'How Data Analytics Is Transforming Sports Strategy',   990,  now(), now());

-- Relations: each post is linked to its home category, plus a handful of
-- posts also bridge into a second, thematically related category.
INSERT INTO post_categories (post_uuid, category_uuid) VALUES
-- Technology (home)
('5915ce26-bd85-4733-9300-07144f23a05f', '74e2f4f4-5ed2-4039-a338-a085dfe67da8'),
('90166084-f700-4d89-b423-f5e058446a7e', '74e2f4f4-5ed2-4039-a338-a085dfe67da8'),
('4391f578-664f-4d4b-89d0-6e1cf0e69934', '74e2f4f4-5ed2-4039-a338-a085dfe67da8'),
('c0d0de75-0afa-492d-8a3b-45d53c2f4829', '74e2f4f4-5ed2-4039-a338-a085dfe67da8'),
('b4377738-0f01-41ba-b9f2-4d2e38720f96', '74e2f4f4-5ed2-4039-a338-a085dfe67da8'),
('e20b14d7-441c-4b4e-9506-a8f2e4e5833c', '74e2f4f4-5ed2-4039-a338-a085dfe67da8'),
-- Technology posts also filed under Travel
('b4377738-0f01-41ba-b9f2-4d2e38720f96', '8ef57f90-5312-43ae-beaf-aa39801f1c60'),
('e20b14d7-441c-4b4e-9506-a8f2e4e5833c', '8ef57f90-5312-43ae-beaf-aa39801f1c60'),

-- Travel (home)
('1535fcce-3b8d-4fa4-9367-58f15ac77305', '8ef57f90-5312-43ae-beaf-aa39801f1c60'),
('cb3521d4-87de-4215-8784-d62ffd31a0e5', '8ef57f90-5312-43ae-beaf-aa39801f1c60'),
('39e8d3ed-a228-42dd-b1f4-68c5c0f9db1d', '8ef57f90-5312-43ae-beaf-aa39801f1c60'),
('9c044c20-5005-4676-a9b1-073432efd4d2', '8ef57f90-5312-43ae-beaf-aa39801f1c60'),
('ef409d89-8cd3-4fe3-97ee-ae9ebb3b66ec', '8ef57f90-5312-43ae-beaf-aa39801f1c60'),
('ff06b2e9-6161-47e4-9507-55a76d5b309d', '8ef57f90-5312-43ae-beaf-aa39801f1c60'),
-- Travel posts also filed under Food
('ef409d89-8cd3-4fe3-97ee-ae9ebb3b66ec', '62f80dad-2b1f-4be0-ba41-4bb624f4665c'),
('ff06b2e9-6161-47e4-9507-55a76d5b309d', '62f80dad-2b1f-4be0-ba41-4bb624f4665c'),

-- Food (home)
('fe4bc9d6-c43c-4ed3-a8e7-7133a1c4cf1b', '62f80dad-2b1f-4be0-ba41-4bb624f4665c'),
('b97d739b-99ec-4c2a-a708-44271f603aa2', '62f80dad-2b1f-4be0-ba41-4bb624f4665c'),
('48a88180-f025-4046-b7ae-679c2bedf72a', '62f80dad-2b1f-4be0-ba41-4bb624f4665c'),
('f641cafe-7ce0-4da6-9e03-fa0047a4b296', '62f80dad-2b1f-4be0-ba41-4bb624f4665c'),
('1a9ae328-438b-4aec-b03b-56adeb88f040', '62f80dad-2b1f-4be0-ba41-4bb624f4665c'),
('79f4f77f-c018-4bff-806d-b8ac518e6707', '62f80dad-2b1f-4be0-ba41-4bb624f4665c'),
-- Food posts also filed under Health
('1a9ae328-438b-4aec-b03b-56adeb88f040', '82770db7-d94d-4791-bfe2-858ffbc46bb5'),
('79f4f77f-c018-4bff-806d-b8ac518e6707', '82770db7-d94d-4791-bfe2-858ffbc46bb5'),

-- Health (home)
('444c0da6-e85c-47c9-8684-8fb925496e4a', '82770db7-d94d-4791-bfe2-858ffbc46bb5'),
('ec042693-7ef4-47ee-9ff5-32127efe9f5f', '82770db7-d94d-4791-bfe2-858ffbc46bb5'),
('1b05b7b1-077a-4a76-af06-d8ff87224d8f', '82770db7-d94d-4791-bfe2-858ffbc46bb5'),
('1cc0110b-af1f-46fd-adf1-6cbb4ff8d256', '82770db7-d94d-4791-bfe2-858ffbc46bb5'),
('ce90ac45-33d4-4855-8692-0fd405339a0a', '82770db7-d94d-4791-bfe2-858ffbc46bb5'),
('1e6f26d3-5ff4-4554-a690-3188872ba195', '82770db7-d94d-4791-bfe2-858ffbc46bb5'),
-- Health posts also filed under Business
('ce90ac45-33d4-4855-8692-0fd405339a0a', '370b15f9-cbb9-4b9a-8ee9-a32641e1ec35'),
('1e6f26d3-5ff4-4554-a690-3188872ba195', '370b15f9-cbb9-4b9a-8ee9-a32641e1ec35'),

-- Business (home)
('958ab561-c25e-4a0c-86c6-18be49a597ff', '370b15f9-cbb9-4b9a-8ee9-a32641e1ec35'),
('6c793da3-1166-451c-a62a-c9392a70772c', '370b15f9-cbb9-4b9a-8ee9-a32641e1ec35'),
('e6eb32e5-3ff6-4b26-85e7-05c73ab6f3b5', '370b15f9-cbb9-4b9a-8ee9-a32641e1ec35'),
('7d2625b2-b268-4cb9-bef2-b23ba615617a', '370b15f9-cbb9-4b9a-8ee9-a32641e1ec35'),
('c1e27354-4fc0-434f-b8e5-684353837ece', '370b15f9-cbb9-4b9a-8ee9-a32641e1ec35'),
('afc462f1-6d54-49d8-9331-14efcfa95e24', '370b15f9-cbb9-4b9a-8ee9-a32641e1ec35'),
-- Business posts also filed under Sports
('c1e27354-4fc0-434f-b8e5-684353837ece', '3b7b0ad7-1dd6-411b-b065-b5dca76e2973'),
('afc462f1-6d54-49d8-9331-14efcfa95e24', '3b7b0ad7-1dd6-411b-b065-b5dca76e2973'),

-- Sports (home)
('ff88959b-9562-4fcd-a609-2215c65e87a3', '3b7b0ad7-1dd6-411b-b065-b5dca76e2973'),
('4fb1654e-43d0-47fb-acfd-a0c0e1abc83e', '3b7b0ad7-1dd6-411b-b065-b5dca76e2973'),
('51bd8828-259e-49a4-89d9-8516d368e268', '3b7b0ad7-1dd6-411b-b065-b5dca76e2973'),
('a72fa28f-123d-4b56-9d72-36ad64fd7544', '3b7b0ad7-1dd6-411b-b065-b5dca76e2973'),
('a8595d1a-5090-4648-a89d-8b3abd29ae56', '3b7b0ad7-1dd6-411b-b065-b5dca76e2973'),
('6184074a-9f8a-437d-9a66-4a6cf9a9cb53', '3b7b0ad7-1dd6-411b-b065-b5dca76e2973'),
-- Sports posts also filed under Technology
('a8595d1a-5090-4648-a89d-8b3abd29ae56', '74e2f4f4-5ed2-4039-a338-a085dfe67da8'),
('6184074a-9f8a-437d-9a66-4a6cf9a9cb53', '74e2f4f4-5ed2-4039-a338-a085dfe67da8');

-- One cover image per post
INSERT INTO post_images (uuid, name, path, post_uuid, created_at, updated_at) VALUES
('ba68426a-83f6-42d3-9d30-f8820cc62fc7', 'ai-in-everyday-life.jpg',       '/uploads/posts/ai-in-everyday-life/cover.jpg',       '5915ce26-bd85-4733-9300-07144f23a05f', now(), now()),
('379f266e-1013-489d-9799-73e9e1a8f39e', 'top-languages-2026.jpg',        '/uploads/posts/top-languages-2026/cover.jpg',        '90166084-f700-4d89-b423-f5e058446a7e', now(), now()),
('d5a648e2-2178-4b52-9f77-433e856dcf6b', 'quantum-computing.jpg',         '/uploads/posts/quantum-computing/cover.jpg',         '4391f578-664f-4d4b-89d0-6e1cf0e69934', now(), now()),
('a0519798-544e-4269-876c-778ebfa9be4c', 'cybersecurity-guide.jpg',       '/uploads/posts/cybersecurity-guide/cover.jpg',       'c0d0de75-0afa-492d-8a3b-45d53c2f4829', now(), now()),
('91157ede-c018-4eb5-86f5-958cc4f36b1d', 'travel-apps-tech.jpg',          '/uploads/posts/travel-apps-tech/cover.jpg',          'b4377738-0f01-41ba-b9f2-4d2e38720f96', now(), now()),
('e0f8ee54-8abc-4493-9905-d00194b60e66', 'digital-nomad-gadgets.jpg',     '/uploads/posts/digital-nomad-gadgets/cover.jpg',     'e20b14d7-441c-4b4e-9506-a8f2e4e5833c', now(), now()),

('2473deaf-a6d5-4563-891c-b90385d0ff94', 'hidden-gems-vacation.jpg',      '/uploads/posts/hidden-gems-vacation/cover.jpg',      '1535fcce-3b8d-4fa4-9367-58f15ac77305', now(), now()),
('105b40cc-f6ec-4bfd-9d70-5e2ddc20f265', 'travel-on-a-budget.jpg',        '/uploads/posts/travel-on-a-budget/cover.jpg',        'cb3521d4-87de-4215-8784-d62ffd31a0e5', now(), now()),
('f571522e-9ced-458b-a7d7-2404668713c8', 'backpacking-sea.jpg',           '/uploads/posts/backpacking-southeast-asia/cover.jpg','39e8d3ed-a228-42dd-b1f4-68c5c0f9db1d', now(), now()),
('558f3477-e9b1-4643-8368-b2dbc63125fc', 'remote-work-cities.jpg',        '/uploads/posts/remote-work-cities/cover.jpg',        '9c044c20-5005-4676-a9b1-073432efd4d2', now(), now()),
('7b1a53ad-6287-4ce8-8b69-288828c6a208', 'street-markets-abroad.jpg',     '/uploads/posts/street-markets-abroad/cover.jpg',     'ef409d89-8cd3-4fe3-97ee-ae9ebb3b66ec', now(), now()),
('49b706fe-a82a-474c-9ae5-59a7a14b21b9', 'culinary-tourism.jpg',          '/uploads/posts/culinary-tourism/cover.jpg',          'ff06b2e9-6161-47e4-9507-55a76d5b309d', now(), now()),

('89612e03-75c3-42b7-9d88-73d7fffa5a3c', 'homemade-pasta.jpg',            '/uploads/posts/homemade-pasta/cover.jpg',            'fe4bc9d6-c43c-4ed3-a8e7-7133a1c4cf1b', now(), now()),
('debb8883-010c-447d-ac40-69016512995b', 'weeknight-dinners.jpg',         '/uploads/posts/weeknight-dinners/cover.jpg',         'b97d739b-99ec-4c2a-a708-44271f603aa2', now(), now()),
('73dd5e30-5da1-44f4-a080-e654d74f4711', 'sourdough-bread.jpg',           '/uploads/posts/sourdough-bread/cover.jpg',           '48a88180-f025-4046-b7ae-679c2bedf72a', now(), now()),
('cd7a9866-aa3e-4f57-a188-1df6fb887315', 'regional-cuisine.jpg',          '/uploads/posts/regional-cuisine/cover.jpg',          'f641cafe-7ce0-4da6-9e03-fa0047a4b296', now(), now()),
('e5c00abf-fa01-4777-9f69-05007839c4bc', 'superfoods-immune.jpg',         '/uploads/posts/superfoods-immune/cover.jpg',         '1a9ae328-438b-4aec-b03b-56adeb88f040', now(), now()),
('b00978c8-118b-412f-865c-7658917ab249', 'plant-based-recipes.jpg',       '/uploads/posts/plant-based-recipes/cover.jpg',       '79f4f77f-c018-4bff-806d-b8ac518e6707', now(), now()),

('bcfd2740-6fe4-4e9c-b567-c596bbbaa6f9', 'mental-health-habits.jpg',      '/uploads/posts/mental-health-habits/cover.jpg',      '444c0da6-e85c-47c9-8684-8fb925496e4a', now(), now()),
('945e6564-5927-46e2-9f3c-b5963f44c18a', 'meditation-guide.jpg',          '/uploads/posts/meditation-guide/cover.jpg',          'ec042693-7ef4-47ee-9ff5-32127efe9f5f', now(), now()),
('6455c5c4-5e42-46b1-95ad-dee341fd6d73', 'importance-of-sleep.jpg',       '/uploads/posts/importance-of-sleep/cover.jpg',       '1b05b7b1-077a-4a76-af06-d8ff87224d8f', now(), now()),
('14ee59b6-f087-4519-b73f-82d79f5a8ca6', 'workout-routine.jpg',           '/uploads/posts/workout-routine/cover.jpg',           '1cc0110b-af1f-46fd-adf1-6cbb4ff8d256', now(), now()),
('4a896a02-98ec-4e20-bd5f-a200c44d31df', 'managing-work-stress.jpg',      '/uploads/posts/managing-work-stress/cover.jpg',      'ce90ac45-33d4-4855-8692-0fd405339a0a', now(), now()),
('1be14535-4ade-4cec-a138-c459554e5734', 'employee-wellness.jpg',         '/uploads/posts/employee-wellness/cover.jpg',         '1e6f26d3-5ff4-4554-a690-3188872ba195', now(), now()),

('faa6069f-8739-4b53-8d2b-aa8a18e03ab3', 'winning-business-plan.jpg',     '/uploads/posts/winning-business-plan/cover.jpg',     '958ab561-c25e-4a0c-86c6-18be49a597ff', now(), now()),
('89699698-b3a2-41b1-9923-fc9f57788b13', 'personal-finance.jpg',          '/uploads/posts/personal-finance/cover.jpg',          '6c793da3-1166-451c-a62a-c9392a70772c', now(), now()),
('5648de4a-3200-4908-8b9f-4ae8dd5128dc', 'building-a-brand.jpg',          '/uploads/posts/building-a-brand/cover.jpg',          'e6eb32e5-3ff6-4b26-85e7-05c73ab6f3b5', now(), now()),
('7248ee0f-6a43-4f30-8e00-81767c66734e', 'remote-work-trends.jpg',        '/uploads/posts/remote-work-trends/cover.jpg',        '7d2625b2-b268-4cb9-bef2-b23ba615617a', now(), now()),
('7513e924-08b8-4aa4-af45-adbdbc1911b0', 'sports-sponsorships.jpg',       '/uploads/posts/sports-sponsorships/cover.jpg',       'c1e27354-4fc0-434f-b8e5-684353837ece', now(), now()),
('e8f22b11-0111-4424-9777-29e5a9e86ac6', 'sports-franchise-brands.jpg',   '/uploads/posts/sports-franchise-brands/cover.jpg',   'afc462f1-6d54-49d8-9331-14efcfa95e24', now(), now()),

('957cef94-750f-4986-ad60-2b67cb4228b8', 'olympic-history.jpg',           '/uploads/posts/olympic-history/cover.jpg',           'ff88959b-9562-4fcd-a609-2215c65e87a3', now(), now()),
('e6f0528b-8a04-41ab-9bb5-a09d22513a38', 'marathon-training.jpg',         '/uploads/posts/marathon-training/cover.jpg',         '4fb1654e-43d0-47fb-acfd-a0c0e1abc83e', now(), now()),
('d833f907-5d6c-4ab0-8126-bee202882fc3', 'womens-sports-rise.jpg',        '/uploads/posts/womens-sports-rise/cover.jpg',        '51bd8828-259e-49a4-89d9-8516d368e268', now(), now()),
('1758e93b-4065-4e19-87fe-497bc028ea59', 'running-shoes.jpg',             '/uploads/posts/running-shoes/cover.jpg',             'a72fa28f-123d-4b56-9d72-36ad64fd7544', now(), now()),
('35490641-704a-4796-b45e-b77b95632f56', 'wearable-tech-athletes.jpg',    '/uploads/posts/wearable-tech-athletes/cover.jpg',    'a8595d1a-5090-4648-a89d-8b3abd29ae56', now(), now()),
('c38616a7-50dc-4bdd-abd0-0d00b0f7db76', 'sports-data-analytics.jpg',     '/uploads/posts/sports-data-analytics/cover.jpg',     '6184074a-9f8a-437d-9a66-4a6cf9a9cb53', now(), now());

-- One short description per post
INSERT INTO post_descriptions (post_uuid, description, created_at, updated_at) VALUES
('5915ce26-bd85-4733-9300-07144f23a05f', 'A look at how artificial intelligence has quietly become part of daily routines, from voice assistants to personalized recommendations.', now(), now()),
('90166084-f700-4d89-b423-f5e058446a7e', 'A ranked rundown of the languages developers are reaching for most this year, and why.', now(), now()),
('4391f578-664f-4d4b-89d0-6e1cf0e69934', 'An accessible primer on what quantum computers can actually do today, and what''s still years away.', now(), now()),
('c0d0de75-0afa-492d-8a3b-45d53c2f4829', 'Essential first steps for anyone looking to understand and improve their personal or business security posture.', now(), now()),
('b4377738-0f01-41ba-b9f2-4d2e38720f96', 'The apps making it easier than ever to plan, book, and navigate trips from your phone.', now(), now()),
('e20b14d7-441c-4b4e-9506-a8f2e4e5833c', 'The gear remote workers rely on to stay productive while working from anywhere in the world.', now(), now()),

('1535fcce-3b8d-4fa4-9367-58f15ac77305', 'Lesser-known spots worth adding to your travel list before the crowds find them.', now(), now()),
('cb3521d4-87de-4215-8784-d62ffd31a0e5', 'Practical strategies for seeing the world without draining your savings.', now(), now()),
('39e8d3ed-a228-42dd-b1f4-68c5c0f9db1d', 'A route-by-route guide for first-time backpackers exploring the region.', now(), now()),
('9c044c20-5005-4676-a9b1-073432efd4d2', 'Where to base yourself if you can work from anywhere and want more than just fast wifi.', now(), now()),
('ef409d89-8cd3-4fe3-97ee-ae9ebb3b66ec', 'A guide to navigating some of the world''s most vibrant street food markets.', now(), now()),
('ff06b2e9-6161-47e4-9507-55a76d5b309d', 'Top destinations for travelers who plan their trips around what they''ll eat.', now(), now()),

('fe4bc9d6-c43c-4ed3-a8e7-7133a1c4cf1b', 'Step-by-step techniques for making fresh pasta from scratch at home.', now(), now()),
('b97d739b-99ec-4c2a-a708-44271f603aa2', 'Five quick recipes that come together in thirty minutes or less.', now(), now()),
('48a88180-f025-4046-b7ae-679c2bedf72a', 'The techniques behind a reliably good loaf of homemade sourdough.', now(), now()),
('f641cafe-7ce0-4da6-9e03-fa0047a4b296', 'An exploration of the ingredients and techniques that define regional cooking styles.', now(), now()),
('1a9ae328-438b-4aec-b03b-56adeb88f040', 'Ten nutrient-dense foods worth adding to a diet focused on immune health.', now(), now()),
('79f4f77f-c018-4bff-806d-b8ac518e6707', 'Satisfying plant-based dishes for anyone looking to eat healthier without giving up flavor.', now(), now()),

('444c0da6-e85c-47c9-8684-8fb925496e4a', 'Small, sustainable habits that make a meaningful difference in day-to-day mental well-being.', now(), now()),
('ec042693-7ef4-47ee-9ff5-32127efe9f5f', 'An introduction to meditation for people who have never tried it before.', now(), now()),
('1b05b7b1-077a-4a76-af06-d8ff87224d8f', 'Why sleep quality matters as much as sleep quantity, and how to improve both.', now(), now()),
('1cc0110b-af1f-46fd-adf1-6cbb4ff8d256', 'How to build a fitness routine you''ll actually stick with long-term.', now(), now()),
('ce90ac45-33d4-4855-8692-0fd405339a0a', 'Strategies for staying productive and healthy in high-pressure work environments.', now(), now()),
('1e6f26d3-5ff4-4554-a690-3188872ba195', 'Why investing in employee wellness pays off in measurable productivity gains.', now(), now()),

('958ab561-c25e-4a0c-86c6-18be49a597ff', 'The key elements every business plan needs to attract investors and guide execution.', now(), now()),
('6c793da3-1166-451c-a62a-c9392a70772c', 'Core principles for building a healthy relationship with money at any income level.', now(), now()),
('e6eb32e5-3ff6-4b26-85e7-05c73ab6f3b5', 'How to develop a brand identity that resonates before you have a large marketing budget.', now(), now()),
('7d2625b2-b268-4cb9-bef2-b23ba615617a', 'How remote and hybrid work are reshaping expectations across the modern office.', now(), now()),
('c1e27354-4fc0-434f-b8e5-684353837ece', 'A look at how brands and sports organizations structure high-value sponsorship deals.', now(), now()),
('afc462f1-6d54-49d8-9331-14efcfa95e24', 'How top sports franchises build brand value that extends well beyond the game itself.', now(), now()),

('ff88959b-9562-4fcd-a609-2215c65e87a3', 'A countdown of some of the most memorable moments in Olympic history.', now(), now()),
('4fb1654e-43d0-47fb-acfd-a0c0e1abc83e', 'A beginner-friendly training plan for runners preparing for their first marathon.', now(), now()),
('51bd8828-259e-49a4-89d9-8516d368e268', 'How women''s sports have grown in visibility, investment, and audience over recent years.', now(), now()),
('a72fa28f-123d-4b56-9d72-36ad64fd7544', 'A practical guide to picking the right running shoes for your foot type and goals.', now(), now()),
('a8595d1a-5090-4648-a89d-8b3abd29ae56', 'How wearable technology is changing the way athletes train and recover.', now(), now()),
('6184074a-9f8a-437d-9a66-4a6cf9a9cb53', 'How data analytics is reshaping strategy across professional sports.', now(), now());

-- Full body text per post
INSERT INTO post_texts (post_uuid, text, created_at, updated_at) VALUES
('5915ce26-bd85-4733-9300-07144f23a05f', 'Artificial intelligence is no longer confined to research labs. It now powers the recommendations we see, the routes we drive, and the way we search for information. This piece breaks down where AI shows up in everyday life and what that means for the years ahead.', now(), now()),
('90166084-f700-4d89-b423-f5e058446a7e', 'From systems programming to web frameworks, the tools developers favor keep shifting. We rank the ten languages seeing the strongest growth in 2026, looking at job postings, community activity, and where each one fits best.', now(), now()),
('4391f578-664f-4d4b-89d0-6e1cf0e69934', 'Quantum computing promises to solve problems classical machines never could, but the hype often outpaces reality. This article separates near-term, practical use cases from the breakthroughs that are still theoretical.', now(), now()),
('c0d0de75-0afa-492d-8a3b-45d53c2f4829', 'From password hygiene to recognizing phishing attempts, good cybersecurity starts with a handful of habits. This guide walks through the basics every beginner should know before tackling more advanced defenses.', now(), now()),
('b4377738-0f01-41ba-b9f2-4d2e38720f96', 'Modern travel apps do far more than book flights. This roundup covers the tools handling everything from real-time translation to offline maps, all built on the latest mobile technology.', now(), now()),
('e20b14d7-441c-4b4e-9506-a8f2e4e5833c', 'Working from a new city every month takes the right equipment. We cover the laptops, adapters, and connectivity tools that make life easier for digital nomads on the move.', now(), now()),

('1535fcce-3b8d-4fa4-9367-58f15ac77305', 'Not every great trip starts with a famous landmark. This list highlights ten destinations that offer incredible experiences without the tourist crowds, from quiet coastal towns to mountain villages.', now(), now()),
('cb3521d4-87de-4215-8784-d62ffd31a0e5', 'Traveling well doesn''t have to mean spending a lot. This guide covers booking tricks, accommodation alternatives, and everyday habits that stretch a travel budget much further.', now(), now()),
('39e8d3ed-a228-42dd-b1f4-68c5c0f9db1d', 'Southeast Asia remains one of the most popular backpacking routes in the world. We cover suggested itineraries, budgeting tips, and the essentials to pack before setting off.', now(), now()),
('9c044c20-5005-4676-a9b1-073432efd4d2', 'The best cities for remote work balance connectivity, cost of living, and quality of life. This piece ranks the top destinations currently attracting remote professionals.', now(), now()),
('ef409d89-8cd3-4fe3-97ee-ae9ebb3b66ec', 'Street markets offer some of the most authentic food experiences you can find while traveling. We cover what to try, how to navigate the stalls, and etiquette tips for first-time visitors.', now(), now()),
('ff06b2e9-6161-47e4-9507-55a76d5b309d', 'Food has become a primary reason people choose where to travel. This roundup covers the cities and regions best known for their culinary scenes, from street food to fine dining.', now(), now()),

('fe4bc9d6-c43c-4ed3-a8e7-7133a1c4cf1b', 'Making pasta from scratch is easier than most people expect. This guide walks through mixing, kneading, and shaping dough into a variety of classic pasta forms.', now(), now()),
('b97d739b-99ec-4c2a-a708-44271f603aa2', 'Busy weeknights call for meals that are fast but still satisfying. These five recipes rely on simple ingredients and minimal prep time without sacrificing flavor.', now(), now()),
('48a88180-f025-4046-b7ae-679c2bedf72a', 'Sourdough rewards patience and technique in equal measure. This article covers starter maintenance, fermentation timing, and shaping tips for a consistently great loaf.', now(), now()),
('f641cafe-7ce0-4da6-9e03-fa0047a4b296', 'Every region develops its own culinary identity, shaped by climate, history, and available ingredients. This piece explores a handful of cuisines and what makes each distinct.', now(), now()),
('1a9ae328-438b-4aec-b03b-56adeb88f040', 'Certain foods pack an outsized nutritional punch. This list covers ten ingredients backed by research for supporting immune function, along with simple ways to work them into meals.', now(), now()),
('79f4f77f-c018-4bff-806d-b8ac518e6707', 'Eating more plants doesn''t mean sacrificing taste. These recipes focus on whole ingredients and bold flavors, making them a good starting point for anyone easing into a plant-based diet.', now(), now()),

('444c0da6-e85c-47c9-8684-8fb925496e4a', 'Good mental health often comes down to consistency rather than big gestures. This article covers simple daily habits, from journaling to setting boundaries, that support long-term well-being.', now(), now()),
('ec042693-7ef4-47ee-9ff5-32127efe9f5f', 'Meditation can feel intimidating for beginners, but it doesn''t require special equipment or hours of free time. This guide covers simple techniques to start a short daily practice.', now(), now()),
('1b05b7b1-077a-4a76-af06-d8ff87224d8f', 'Sleep affects nearly every aspect of health, from mood to immune function. This piece breaks down what happens during different sleep stages and practical ways to improve sleep quality.', now(), now()),
('1cc0110b-af1f-46fd-adf1-6cbb4ff8d256', 'The best workout routine is the one you can maintain. This article covers how to balance intensity, recovery, and variety to build a sustainable long-term fitness habit.', now(), now()),
('ce90ac45-33d4-4855-8692-0fd405339a0a', 'Chronic work stress takes a toll on both performance and health. This piece covers practical strategies for managing pressure at work, from setting boundaries to recognizing burnout early.', now(), now()),
('1e6f26d3-5ff4-4554-a690-3188872ba195', 'Companies that prioritize employee wellness often see the benefits show up in performance metrics. This article covers the link between well-being programs and long-term productivity.', now(), now()),

('958ab561-c25e-4a0c-86c6-18be49a597ff', 'A strong business plan does more than secure funding, it clarifies strategy. This guide walks through the essential sections every founder should include before pitching.', now(), now()),
('6c793da3-1166-451c-a62a-c9392a70772c', 'Personal finance doesn''t have to be complicated. This article covers budgeting, saving, and debt management basics that apply regardless of how much you earn.', now(), now()),
('e6eb32e5-3ff6-4b26-85e7-05c73ab6f3b5', 'Strong brands are built on consistency and clarity, not just budget. This piece covers how new businesses can define their voice, visuals, and positioning from day one.', now(), now()),
('7d2625b2-b268-4cb9-bef2-b23ba615617a', 'The traditional office has changed permanently for many companies. This article covers the trends shaping remote and hybrid work policies and what they mean for employers and employees alike.', now(), now()),
('c1e27354-4fc0-434f-b8e5-684353837ece', 'Sports sponsorships have grown into a multi-billion-dollar industry. This piece breaks down how these deals get structured and why brands are willing to pay a premium for visibility.', now(), now()),
('afc462f1-6d54-49d8-9331-14efcfa95e24', 'The most valuable sports franchises treat their brand as seriously as their roster. This article covers the strategies behind building a billion-dollar sports brand.', now(), now()),

('ff88959b-9562-4fcd-a609-2215c65e87a3', 'The Olympics have produced countless unforgettable moments over the decades. This piece counts down ten of the most iconic, from record-breaking performances to unexpected upsets.', now(), now()),
('4fb1654e-43d0-47fb-acfd-a0c0e1abc83e', 'Training for a marathon takes months of consistent preparation. This guide covers a beginner-friendly plan, including mileage progression, recovery, and race-day tips.', now(), now()),
('51bd8828-259e-49a4-89d9-8516d368e268', 'Women''s sports have seen a surge in viewership and investment in recent years. This article covers the leagues and athletes driving that growth and what''s still ahead.', now(), now()),
('a72fa28f-123d-4b56-9d72-36ad64fd7544', 'The right pair of running shoes can prevent injury and improve performance. This guide covers how to match shoe type to foot shape, running style, and terrain.', now(), now()),
('a8595d1a-5090-4648-a89d-8b3abd29ae56', 'Wearable devices now track everything from heart rate variability to sleep quality. This article covers how athletes and coaches are using that data to fine-tune training and recovery.', now(), now()),
('6184074a-9f8a-437d-9a66-4a6cf9a9cb53', 'Data has become as important as talent in modern sports strategy. This piece covers how teams use analytics to inform recruitment, in-game decisions, and player development.', now(), now());
