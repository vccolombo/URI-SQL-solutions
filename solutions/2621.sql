SELECT products.name FROM products
INNER JOIN providers
    ON products.id_providers = providers.id
    AND providers.name LIKE 'P%'
WHERE amount BETWEEN 10 AND 20