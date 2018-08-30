json.extract! employee, :id, :first_name, :virtual_name, :username_email, :gender, :chat_limit, :email_limit, :is_multisession_allow, :select_volume, :select_ring_type, :created_at, :updated_at
json.url employee_url(employee, format: :json)
