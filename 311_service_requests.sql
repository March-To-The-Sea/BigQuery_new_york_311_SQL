WITH agencies AS
  (SELECT DISTINCT agency, Count(agency) AS occurence_value
  FROM bigquery-public-data.new_york_311.311_service_requests
  GROUP BY agency
  ORDER BY occurence_value DESC)

SELECT *
FROM agencies