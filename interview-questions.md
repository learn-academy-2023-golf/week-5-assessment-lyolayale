# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. Compare and contrast arrays and hashes in Ruby. Include at least two differences and two similarities.

Your answer:
Differences: 1. Arrays are 'indexed' based; hashes are 'key, value' based. 2. Arrays hold individual elements or values per index; in hashes the values are held by the key (symbol).
Similarities: Both are enumerables. Both can hold multiple data types.

Researched answer:
Differences: 1. Arrays are order specific and hashes do not guarantee a specific order. 2. In arrays, values are accesssed by index; in hashes, values are accessed by using 'keys'.
Similarities: 1. Both are collections of data. 2. Both offer flexible storage capabilities: any data type can be stored.

2. What does it mean to implement a TTD workflow?

Your answer:

- 1. Create a test for a piece of code
- 2. Run the test -> 'Achieve a good fail'
- 3. Create the code for the test
- 4. Run test
- 5. Refactor if neccessary -> 'Bad fail'

Researched answer:
A type of development in which writing test for a program is completed first before writing the actual code.

- 1. Write a failing test -> 'red'
- 2. Write the minimum code to pass the test -> 'green'
- 3. Refactor the code if neccessary
- 4. Repeat these steps for every piece of functionality a one has in thier code.

3. Why would super be used in a Ruby class?

Your answer:
Super is used to gain access to the 'super class' or 'parent class' attributes. Used by a 'sub-class' or 'child class'.

Researched answer:
Super is used to call a method with same name from it's parent class. The sub-class or child class, can utilize the behavior as is or modify the behavior. Super is a way to share behavior between instances of a specific class.

4. STRETCH: What is the difference between inheritance in JavaScript and inheritance in Ruby?
   Inheritance in JavaScript is done with a function since class creation in 'syntaxical sugar'. In Ruby, inheritance is done through pure 'class' and 'object' contruction.

Researched answer:

- JavaScript uses prototype inheritance. Each object comes with a prototype method. And one can use the prototype method in function contructors to create methods to an object.
- Ruby uses class based inheritance. One can define classes and sub-classes that inherit from a specific parent class.

## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. PostgreSQL:

- open-source relational database management system (RDBMS)
- Handles data requirements and storage for applications
- Supports SQL queries

2. Ruby on Rails:

- Open source web application frame work written in Ruby.
- Follows the Model-View-Controller (MVC) design pattern - 'convention over configuration'
- Rails has a ton built-in features to simplifying common tasks, hence making it a preferred choice for many web developers.

3. Active Record:

- Object Relational Mapping (ORM) framework.
- Allows developers to interact with databases using Ruby code instead of SQL queries.
- Active Record models correspond to database tables and encapsulate the logic for querying and manipulating data, making it easier to build and maintain database-driven applications in Rails.
