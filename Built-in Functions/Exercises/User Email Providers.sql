SELECT user_name,
       SUBSTRING(email, POSITION('@' IN email) + 1) AS 'email provider'
FROM users
ORDER BY `email provider`, user_name;