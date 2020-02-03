import Cocoa

var str = "Hello, playground"

// classes

class Person {
    var name:String?
}

class BlogPost {
    var blogTitle:String?
    var blogAuthor:Person?
    var blogContents:String?
    var numOfComments = 0
    
    func addComment() {
        numOfComments += 1
    }
}
var personAuthor = Person()
personAuthor.name = "Tolkien"

var blogPostOne = BlogPost()
blogPostOne.blogTitle = "The Hobbit"
blogPostOne.blogAuthor = personAuthor
blogPostOne.blogContents = "This book is a prequel to Lord of the Rings"
blogPostOne.addComment()
print(blogPostOne.numOfComments)

