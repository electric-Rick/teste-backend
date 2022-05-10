class ContactsConsumer < Racecar::Consumer
  subscribes_to "contacts_message"
  def process(message)
    data = JSON.parse(message.value)
	contact = Contact.find(data["id"])
	if contact
		# Save the contact at the database no-sql
		contact.save!

	else
		# Do nothing
  end  
end


