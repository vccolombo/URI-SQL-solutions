SELECT packages.year, sender.name, receiver.name
FROM packages 
INNER JOIN users AS sender ON packages.id_user_sender = sender.id
INNER JOIN users AS receiver ON packages.id_user_receiver = receiver.id
WHERE (packages.color = 'blue' OR packages.year = 2015)
	AND (sender.address != 'Taiwan' AND receiver.address != 'Taiwan')
ORDER BY packages.year DESC;