require "test/unit"
require "../main/address_book_app"

class TestAddressBook < Test::Unit::TestCase
  def test_initialize_address_book
    address_book = AddressBook.new
    assert_equal(address_book.size, 0)
  end
  
  def test_add_contact
    address_book = AddressBook.new
    address_book.add(Contact.new("Anshul", "83089624"))
    assert_equal(address_book.size,1)
  end
end

class TestContact < Test::Unit::TestCase
  def test_initialize_contact
    anshul = Contact.new('Anshul Garg', '83089624')
    assert_equal(anshul.name, 'Anshul Garg')
    assert_equal(anshul.phone, '83089624')
  end
end