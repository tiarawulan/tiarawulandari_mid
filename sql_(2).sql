INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');

--menghitung jumlah pembalian setiap item
SELECT
    item,
    COUNT(*) AS num_times_bought
FROM
    item_bought
GROUP BY
    item;
	
--mengitung item yang paling sedikit dibeli
WITH ItemCounts AS (
    SELECT
        item,
        COUNT(*) AS num_times_bought
    FROM
        item_bought
    GROUP BY
        item
),
MinMaxCounts AS (
    SELECT
        MIN(num_times_bought) AS min_count,
        MAX(num_times_bought) AS max_count
    FROM
        ItemCounts
)

SELECT
    item
FROM
    ItemCounts
CROSS JOIN
    MinMaxCounts
WHERE
    num_times_bought != min_count
    AND num_times_bought != max_count;