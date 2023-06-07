Http Methods


GET
POST
PATCH
DELETE


HTTP Response

Rials router takes in HTTP Request decides where to send them

the router instanctiantionat

REST
restful api IT FEINDES A PREDICTABLE WAY FOR TO U ACCESS AND MANUPOULATE RESPURCES IN YOUR APPLICATION

api = aPLICATION PROGRAMMING INTERFACER

create read update delete




Restful Routes
'
get
get
Post
GET
Get
Patch or PUt
Delete



resources :users  <----- this will genrate the the 7 standard routes for a resource

Controller is plural

model is singular




rails routes -c chirps
rails routes -c chirps -e


```rb
#routes
get '/chirps', to:'chirps#index'
post '/chirps/', to:'chirps#create'
get '/chirps/:id', to:'chirps#show',as:'chirp'
patch '/chirps/:id', to:'chirps#update'
put '/chirps/:id', to:'chirps#update'
delete '/chirps/:id', to:'chirps#destroy'
```

```rb

resources :chirps, execpt:[:new, :edit]


```

```ruby
resources :users do
    resources :chirps, only: [:index, :show, :create, :update, :destroy]
```

```ruby

class ChirpsController < ApplicationController

    def index
        if params.has_key(:user_id)
            chirps = User.find(params)




end
```

chirp_url

```rb
def create
    chirp = Chirp.new(params.require(:chirp).permit(:body, :author_id))

    if chirp.save
        redirect_to chirp_url(chirp.id)
    else
        render json:chirp.errors.full_messages, status: 422
    end
end
```

```rb
def update
    chirp = Chirp.find(params[:id])

    if chirp.update(params.rquire(:chirps)).permit(:body)
```
