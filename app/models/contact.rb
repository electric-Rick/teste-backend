# Author: Erick Augusto 
# Last time modified: 9/05/2022
# Notes: 
#   cpf_cnpj são os novos campos que devem apenas aceitar números.
#   
#-------------------------------------------------

class Contact < ApplicationRecord
    validates :name,  length: {minimum:4}
    validates :active, :birthday, :email, :mobile, :advertising, presence: true
    
    # Validates the CPF and CNPJ without - and /. 
    validates :cpf_cnpj, :numericality => {:only_integer => true}
end
