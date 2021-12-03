rails new --webpack=react -T -d postgresql media

rails g model locale name inside:integer boundary:jsonb incorporated_on:date
rails g model label name summary:text
rails g model agency name label:references locale:references online_address phone_number hours:jsonb
rails g model role name summary:text agency:references
rails g model person name email_address phone_number online_address biography:text
rails g model occupation person:references role:references begins:date ends:date
