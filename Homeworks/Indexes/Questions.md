# Homework 2 : Indexes
## Question 1: Cuckoo Hashing
### (a) Select the sequence of insert operations that results in the initial state.
    Insert 5, insert 9
### (b) Insert keys 2 and 1. Select the resulting two tables.
    D)
### (c) Then insert 6, and delete 5. Select the resulting two tables.
    C).
After deleting 5, re-insert the corresponding element at hash_2(5), in this case, 6. (Perhaps)
### (d) Finally, insert 25. Select the resulting two tables.
    B)
### (e) What is the smallest key that potentially causes an infinite loop given the tables in [(d)](#d-finally-insert-25-select-the-resulting-two-tables)?
    5
## Question 2: B+Tree
### (a) Insert 6∗ into the B+tree. Select the resulting tree.
    B
### (b) How many pointers (parent-to-child and sibling-to-sibling) do you chase to find all keys between 6∗ and 17∗?
    4
### (c) Then delete 22∗. Select the resulting tree.
    A
### (d) Finally insert 12∗ and delete 6∗. Select the resulting tree.
    A
## Question 3: Extendible Hashing
### (a) Starting from an empty table, insert keys 6, 15, 34, 18.
1. What is the global depth of the resulting table?
   
        3
2. What is the local depth the bucket containing 34?
        
        3
3. What is the local depth of the bucket containing 15?
        
        1
### (b)
1. Which key will first cause a split (without doubling the size of the table)?
        
        9
2. Which key will first make the table double in size?
        
        10
### (c)
1. Which key will first cause a split (without doubling the size of the table)?
        
        7
2. Which key will first make the table double in size?
        
        8
## Question 4: B+Tree
### (a) How many nodes will the resulting tree have?
    4
### (b) Which key(s) will be in the left-most leaf node?
    A and P
### (c) Which key(s) will be in the root node?
    Q and S
### (d)
- Key-order property is violated in **Leaf1**.
- Half-full property is violated in **Leaf2**.
- Separator key violation in **Root**.