# sql1

Final group project to get the _Relational Databases with SQL_ qualification: __Music store__

### Aim
Create and implement a relational database for an offline music store in __MS SQL__.

### Components

A Munich music store offers its customers a rich selection of musical instruments, accessories, spare parts and sheet music.

__Customer data__ is recorded as follows: CustomerID, last name, first name, city, street, house number, phone and mobile.

For each __product__, its stock status (in stock, sold out, ordered, available), purchase price (EK), sales price (VK) and VAT is registered.
The __instruments__ are differentiated by instrument type, weight, price and condition (new, used, not for sale, returned). 
The recorded data of the __sheet music__ is: Title, ISBN and for which instrument type the sheet music is. 
In the case of __accessories__, these can be searched by the type of instrument.

Personnel is responsible for the __running processes of the store__: (Position table: PositionID, Management, Sales, Storage, Accounting, Marketing, Service). 
The following __data of the personnel__ is recorded: PersonalID, last name, first name, city, street, house no., phone, mobile and date of birth.

By each __order__, the CustomerID and the order date are registered. 
An __invoice__ is set up by a order ID, customer ID, invoice date and the personnel, by which the customer was served.
For each product category, a separate table catalogues the product and its amount of orders.

### Tasks
* Validate the functionality of the database
* Create views, functions, triggers and a cursor
* Assign role permissions
