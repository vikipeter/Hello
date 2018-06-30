import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
    
    
    
    // Hello Controller
    
    let helloController = HelloController()
    router.get("sayHello", use: helloController.sayHello)
    
    
    // Users Controller
    
    let usersController = UsersController()
    router.get("users",Int.parameter, use: usersController.userFromID)
    router.post("login", use: usersController.login)
    //
}
