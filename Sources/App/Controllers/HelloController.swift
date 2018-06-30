
import Vapor

final class HelloController
{
    func sayHello(_ request:Request)throws -> String  {
        return "Hello"
    }
}
