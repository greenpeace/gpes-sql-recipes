# MySQL Recipes

List of MySQL snippets to analyse or fix our database. We use it to test for inconistencies, invalid data and statistics.

## Exporting data from EN

You might not be able to export all data in the same file, because of EN restrictions. You can split it by creation date. For us it works:

* 21/03/2014 to 31/12/2015
* 1/1/2016 to 31/7/2017
* 1/8/2017 to 20/5/2017

To know what fields to export check the SQL files to [create users](create-engaging-users.sql), [create optouts](create-engaging-optouts.sql) and [create transactional](create-engaging-transactional.sql). You should ensure you have data in the requiered fields.

## Create tables

Start here: create tables to import data into a local database.

* [Create a table to import EN users](create-engaging-users.sql)
* [Create a table to import opt-outs](create-engaging-optouts.sql)
* [Create a table to import EN transactional](create-engaging-transactional.sql)
* [Ceate views](create-views.sql) - Create views to make it easier to visualize or export data. 

## Count users

* [Opt-out](count-engaging-by-optout.sql), [supressed](count-engaging-suppressed.sql) and [receive email status](count-engaging-receive-email.sql) - Report on users with different email status
* [Tipo](count-engaging-by-tipo.sql) (donor status) - Donor status (Spain's Tipo)
* [Id number](count-engaging-id-number.sql) - Valid and empty ID numbers (Spain)
* [Phone number](count-engaging-phone-number.sql) - Valid and empty phone numbers
* [User dates](count-engaging-user-dates.sql) - Users created or updated between specific dates

## Debug

* [Debug user](debug-engaging-user.sql) - Inconsistencies with the EN users database

## Cross

* [Cross EN users with other tables](cross-engaging-users-other.sql)

## Hash

* [Hash user data](hash-engaging.sql) - To protect user's privacy you can hash user data.

