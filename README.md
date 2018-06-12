# File Cabinet
[Heroku demo](https://radiant-springs-75852.herokuapp.com/docs)
### Overview
Create, Edit and Destroy documents online. This was accomplished by following 
[this awesome Udemy tutorial by 
Yonathan Ayenew](https://www.udemy.com/8-beautiful-ruby-on-rails-apps-in-30-days/learn/v4/t/lecture/4343462?start=0) 

### App Features
* Create Document
* View Document
* Edit Document
* Delete document
* Document content is sanitized HTML 

### Rails Features Explored
* User Management with [devise gem](https://rubygems.org/gems/devise) (Sign Up, Login, Logout, Forgot Password) 
* HTML Form management with [simple_form gem](https://rubygems.org/gems/simple_form)
* Embed ruby in HTML with [haml gem](https://rubygems.org/search?utf8=%E2%9C%93&query=haml)

### Useful Notes 
* `$ rails routes` prints all available routes.
*  From the output of `$ rails routes`, the prefix (+ "_path") evaluates to the route. 
Ex: Here `new_user_session_path` evaluates to `/user/sign_in` 

| Prefix           | Verb |  URI Pattern             | Controller#Action   |
| -----------------|:----:|:------------------------:| -------------------:|
| new_user_session | GET  | /users/sign_in(.:format) | devise/sessions#new |

