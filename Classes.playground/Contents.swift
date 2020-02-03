import Cocoa

var str = "Hello, playground"

// classes

class BlogPost {
    var blogTitle = ""
    var blogAuthor = ""
    var blogContents = ""
    var numOfComments = 0
    
    func addComment() {
        numOfComments += 1
    }
}

var blogPostOne = BlogPost()
blogPostOne.blogTitle = "The Hobbit"
blogPostOne.blogAuthor = "Tolkien"
blogPostOne.blogContents = "This book is a prequel to Lord of the Rings"
blogPostOne.addComment()
print(blogPostOne.numOfComments)
