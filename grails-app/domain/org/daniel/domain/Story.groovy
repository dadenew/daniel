package org.daniel.domain

class Story {

   String link
    String description
    Date submittedOn  
    static belongsTo = [user : User]
    static constraints = {
        link url : true , blank : false ,unique : true 
        description size : 10..1000 , blank : false 
    }
    static mapping = {
        table 'stories'
    }
}
