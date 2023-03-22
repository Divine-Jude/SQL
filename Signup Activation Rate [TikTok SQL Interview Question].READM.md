New TikTok users sign up with their emails. They confirmed their signup by replying to the text confirmation to activate their accounts. Users may receive multiple text messages for account confirmation until they have confirmed their new account.

Write a query to find the activation rate of the users. Round the percentage to 2 decimal places.

Definitions:

- emails table contain the information of user signup details.
- texts table contains the users' activation information.

```SQL
SELECT 
  ROUND(1.0 * COUNT(text_id) / (SELECT COUNT(email_id) FROM emails), 2) as confirm_rate
FROM texts 
WHERE signup_action ='Confirmed'
```

Output;

| confirm_rate |

`0.50`

> indicates that 50% of users have successfully completed their signup and activated their accounts. The other 50% of users have not yet responded to the confirmation request or may have encountered some issues with the process.
