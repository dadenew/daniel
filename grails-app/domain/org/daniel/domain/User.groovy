package org.daniel.domain

class User {

    String email
    String fullName
    static hasMany = [stories : Story]
    static constraints = {
        email unique:true , blank : false , email:true
        fullName size:5..100  , blank : false
    }
    static mapping = {
        table 'users'
    }
}
