COPY Cities(city_id, name, province, country, status)
FROM 'G:\FELLOWSHIP\Data-Engineering-BWF\Task04\cities.csv'
DELIMITER ','
CSV HEADER;
