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

## `NOTE`:
- All outputs are the same
- `WITH` just for function can use sub-query not for compare

## EXISTS
- Code and Output

    ![alt text](image.png)

- Explain Analyze

    ![alt text](image-1.png)
    ![alt text](image-2.png)

## IN
- Code and Output

    ![alt text](image-3.png)

- Explain Analyze

    ![alt text](image-4.png)
    ![alt text](image-5.png)

## ALL
- Code and Output

    ![alt text](image-6.png)

- Explain Analyze

    ![alt text](image-7.png)
    ![alt text](image-8.png)

## ANY
- Code and Output

    ![alt text](image-9.png)

- Explain Analyze

    ![alt text](image-10.png)
    ![alt text](image-11.png)

## WITH
- Code and Output

    ![alt text](image-12.png)

- Explain Analyze

    ![alt text](image-13.png)
    ![alt text](image-14.png)





