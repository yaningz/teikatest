# README

This solutions is conducted primarily by reading the rows of the csv files into a postgresql database and querying for the desired value. It was assumed that "best-selling" meant highest sales.

Relevant code is located in db/migrate and app/controllers/process_data_controller.rb

Optimizations include allowing the user more flexibility in choosing their date ranges and allowing file uploads (rather than having them be read in by migration). 

To run:

* This uses ruby 2.6.5 and rails 6.0.0

```
rake db:create
rake db:migrate
rails server
```

The page located at `127.0.0.1:3000` should contain the name and sales of the best-selling item from 2017-05-02 to 2017-05-31.

```
Red Big Really Tiny Table sold 567776 units.
```

This is a rudimentary application, and since there's so little application code, it was difficulty to come up with what exactly needs testing. As it is, there's no hard evidence that this query works, but as that is fundamentally all there is to the application with no further manipulation, I chose not to add specs for this due to time constraints in turning this around.