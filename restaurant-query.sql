-- Queries


--Show which server is assigned to what tables

SELECT SERVER.firstname, party.tableno
FROM Server
INNER JOIN party ON server.serverid=party.sid
GROUP BY SERVER.firstname, party.tableno;