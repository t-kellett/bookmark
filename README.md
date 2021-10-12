# BookMarker

Show a list of bookmarks
Add new bookmarks
Delete bookmarks
Update bookmarks
Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users are restricted to manage only their own bookmarks

```
As an internet user
So that I can browse previously saved pages
I want to see a list of bookmarks
```

```
As someone who is pressed for time
So that I can easily remember my favourite websites
I want to add a bookmark to my bookmarks
```



![Domain Model](./Model.jpg?raw=true "Bookmarker Domain")

## Set up
In order to run this application you will need to set up the database, to do this, follow these instructions:
1. Connect to ```psql```
2. Create the database using the ```psql``` command ```CREATE DATABASE bookmark_manager;```
3. Connect to the database using the ```pqsl``` command ```\c bookmark_manager;```
4. Run the query we have saved in the file ```01_create_bookmarks_table.sql```
