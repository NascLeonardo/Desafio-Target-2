SELECT 
    c.name, 
    p.number
FROM 
    Clients c
INNER JOIN 
    Phones p ON c.id_client = p.fk_id_client
INNER JOIN 
    States s ON c.fk_id_state = s.id_state
WHERE 
    s.UF = 'SP'
ORDER BY 
    c.id_client;
