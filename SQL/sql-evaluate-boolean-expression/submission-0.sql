SELECT left_operand, operator, right_operand,

    CASE
        WHEN operator = '=' AND v1.value = v2.value THEN 'true'
        WHEN operator = '>' AND v1.value > v2.value THEN 'true'
        WHEN operator = '<' AND v1.value < v2.value THEN 'true'
        ELSE 'false'
    END AS value
FROM variables  v1
JOIN expressions
ON v1.name = expressions.left_operand
JOIN variables v2
ON v2.name = expressions.right_operand