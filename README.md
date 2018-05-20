# SQL Recipes

List of SQL snippets to analyse our database.

## Exporting data from EN

You might not be able to export all data in the same file, because of EN restrictions. You can split it by creation date. For us it works:

* 21/03/2014 to 31/12/2015 - 586.000
* 1/1/2016 to 31/7/2017 -
* 1/8/2017 to 20/5/2017 - 349.000

## Create tables

Create tables to import data into a local database.

* [Create a table to import EN users](create-engaging-users.sql)
* [Create a table to import EN transactional](create-engaging-transactional.sql)

## Count users

* [Opt-out](count-engaging-by-optout.sql), [supressed](count-engaging-suppressed.sql) and [receive email status](count-engaging-receive-email.sql) - Report on users with different email status.
* [Tipo](count-engaging-by-tipo.sql) (donor status) - Donor status (Spain's Tipo)
* [Id number](count-engaging-id-number.sql) - Valid and empty ID numbers (Spain)
* [Phone number](count-engaging-phone-number.sql) - Valid and empty phone numbers
* [User dates](count-engaging-user-dates.sql) - Users created or updated between specific dates

## Debug

* [Debug user](debug-engaging-user.sql) - Inconsistencies with the EN users database
