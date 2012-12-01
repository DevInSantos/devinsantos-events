# DevInSantos
## WebSite com informações da programação


[![BuildStatus](https://travis-ci.org/DevInSantos/DevInSantos-events.png)](https://travis-ci.org/DevInSantos/DevInSantos-events.png)


##Development 
###Database.yml
```bash
 cp config/database.example.yml config/database.yml
```

###Database
```bash
	rake db:create && rake db:migrate
```

###Test database
```bash
	rake db:test:prepare
```

###Seeds
```bash
	rake db:seed
```

