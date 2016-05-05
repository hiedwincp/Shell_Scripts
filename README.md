# Shell_Scripts

Contains basic Shell Scripts to replace space by Underscrore(_)

This is common issue facsd while putting the folders/files with spacess in HFS fails due to below error

[root@sandbox data]#hadoop fs -put -f /edwin/data/Tipton, Joshua  /user/edwin/data/ClientDataNew
put: unexpected URISyntaxException



[root@sandbox data]#hadoop fs -put -f "/edwin/data/Tipton, Joshua"  /user/edwin/data/ClientDataNew
put: unexpected URISyntaxException
