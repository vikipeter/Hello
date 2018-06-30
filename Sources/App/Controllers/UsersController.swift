
import Vapor

final class UsersController
{
    func userFromID(_ request:Request) throws -> User {
        let id = try request.parameters.next(Int.self)
        return User(name: "viki \(id)", email: "viki@gmail.com")
    }
    
    func login(_ request:Request) throws -> Future<String>
    {
        return try request.content.decode(LoginRequest.self).map(to: String.self) { loginRequest in
            return loginRequest.email + loginRequest.password
        }
    }        
}
