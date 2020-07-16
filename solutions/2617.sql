SELECT products.name, providers.name
FROM providers INNER JOIN products
ON providers.id = products.id_providers
    AND providers.name =  'Ajax SA'