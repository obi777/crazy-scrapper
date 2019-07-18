require 'nokogiri'
require 'open-uri'

# Définition des futurs Array+Hashes
A=[] 
B=[]
C=[]

# Scrap de : 1- Noms des cryptomonnaies (Hash B). 2- Valeur de la cryptomonnaie à l'unité (Hash C)
def crypto_scrapper ()
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  page.xpath("//td[2]/a").each do |node|
    B << node.text
    end
  page.xpath("//td[5]/a").each do |node|
    C << node.text
  end

# Insertion des Hashes B et C dans l'Array A
B.zip(C).each{|x| A << {x[0] => x[1]}}

#puts A.to_s
return A.to_s
end

crypto_scrapper

