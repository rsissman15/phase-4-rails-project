Activity List

Overview (features we will have)
-Activities
-User will leave reviews for activity
-User
-User will make a reservation for activity (which will create the relationships)

User will have many reviews
User will have many reviewed_activity through reviews
User will have many reservations
User will have many activities through reservations


MVP
-Landing Page: /
-Login: /login
-Signup: /signup
-Home route: /home the activities
-Detailed activity: /activity/:id
-Checkout:/checkout

Stretch Goals
-Confirmation: /confirmation/:random_hexidecimal_number
-Order Histour:/order history


Models

User
---
username
password digest

Review
---
user_id: belongs_to
home_id: belongs_to
content: text
rating: integer (between 1 and 10)


Activity
---
location: string
description: text
image: string
