@regression
Feature: Pelanggan Page functionality

  @addPelanggan @pelangganScenario
  Scenario: User can add new customer
    Given I open the Kasir Aja website
    When I login with valid credentials
    Then I should see the Dashboard Page
    When I click on the Pelanggan Tab
    Then I should see the Pelanggan Page
    When I click the Tambah button
    Then I shoul see the Pelanggan Create Page
    When I input a "<name>", "<noHp>", "<alamat>" and "<keterangan>" for the new Customer
    And I Click Save Button
    Then I should see the new "<name>" pelanggan in the list
    Then I logout

    Examples:
      | name       | noHp            | alamat      | keterangan       |
      | pelanggan1 | 081234567890    | jl mawar    | pelanggan1 tetap |

  @addPelangganFaill @pelangganScenario
  Scenario: User add pengguna with blank nama
    Given I open the Kasir Aja website
    When I login with valid credentials
    Then I should see the Dashboard Page
    When I click on the Pelanggan Tab
    Then I should see the Pelanggan Page
    When I click the Tambah button
    Then I shoul see the Pelanggan Create Page
    And I Click Save Button
    Then I should see an error message pelanggan "<message>"
    Then I logout

    Examples:
      | message                            |
      | "name" is not allowed to be empty  |

  @updatePelanggan @pelangganScenario
  Scenario: User can update data userS
    Given I open the Kasir Aja website
    When I login with valid credentials
    Then I should see the Dashboard Page
    When I click on the Pelanggan Tab
    Then I should see the Pelanggan Page
    When I click more option button on customer <old_customer>
    Then I should see submenu
    When I clik ubah button on pelanggan <old_customer>
    Then I should See Update Customer Page
    When I input a new "<new_name>", "<new_noHp>", "<new_alamat>" and "<new_keterangan>"
    And I Click Save Button
    Then I should see the update <new_name> pelanggan in the list
    Then I logout

    Examples:
      | new_name         | new_noHp     | new_alamat | new_keterangan    | old_customer  |
      | pelanggan1update | 081234567891 | jl mangga  | pelanggan1 update | pelanggan1    |

  @deletePelanggan @pelangganScenario
  Scenario: User can delete existing customer
    Given I open the Kasir Aja website
    When I login with valid credentials
    Then I should see the Dashboard Page
    When I click on the Pelanggan Tab
    Then I should see the Pelanggan Page
    When I click more option button on customer <delete_customer>
    Then I should see submenu
    When I Click hapus button on customer <delete_customer>
    Then I should See Pop Up verification
    When I click Delete Button
    Then I should see the <delete_customer> customer was deleted
    Then I logout

    Examples:
      | delete_customer  |
      | pelanggan1update |      