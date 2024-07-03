# Tìm các function có thể sử dụng với subquery và tìm hiểu how these functions are executed logically  và giải thích chênh lệch performance. Ex: So sánh EXISTS với IN, which is faster, why?


# Dataset : Banking_Transactions

- # Number of columns : 9
- # Number of rows : 1.048.567

# We will compare EXISTS, IN, ALL, ANY, WITH

# DEFINITION:
- `EXISTS` : Function to check if the sub-query returns true or false. If true, the query runs.

- `IN` : To search in the values of the sub-query to return the satisfied condition.

- `ALL` : To search in the values of the sub-query to return all the satisfied conditions.

- `ANY` : To search in the values of the sub-query to return one of the satisfied conditions.

- `WITH` : Create CTE(Common Table Expression) for a specific purpose.

## EXISTS



