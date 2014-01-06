dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    dialect = org.hibernate.dialect.PostgreSQLDialect
    username = "postgres" 
    password = "root"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
                url = "jdbc:postgresql://localhost:5432/daniel"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://localhost:5432/daniel"
        }
    }
    production {
       dataSource {
        dbCreate = "update"
        driverClassName = "org.postgresql.Driver"
        dialect = org.hibernate.dialect.PostgreSQLDialect   
    uri = new URI(System.env.OPENSHIFT_POSTGRESQL_DB_URL)
    url = "jdbc:postgresql://"+uri.host+uri.path+"/"+System.env.OPENSHIFT_APP_NAME
        username = System.env.OPENSHIFT_POSTGRESQL_DB_USERNAME
        password = System.env.OPENSHIFT_POSTGRESQL_DB_PASSWORD
    }
    }
}