--
-- Check for bad data in the first name..
--
SELECT *
  FROM titanic_all_passenger_list
 WHERE (substr(firstname, 1, 4) = "Mrse" OR 
        substr(firstname, 1, 5) = "Misse" OR 
        substr(firstname, 1, 3) = "Mre" OR 
        substr(firstname, 1, 3) = "Dre" OR 
        substr(firstname, 1, 4) = "Sire" OR 
        substr(firstname, 1, 7) = "Mastere");

if substr(firstname, 1, 7) = "Mastere"
      --
      -- Replace "Mastere" with "Master "
      --
      UPDATE titanic_all_passenger_list
        SET firstname = ("Master " || substr(firstname, 8) ) 
      WHERE substr(firstname, 1, 7) = "Mastere";

      --
      -- Replace "Mrse" with "Mrs "
      --
      UPDATE titanic_all_passenger_list
        SET firstname = ("Mrs " || substr(firstname, 5) ) 
      WHERE (substr(firstname, 1, 4) ) = "Mrse";

      --
      -- Replace "Misse" with "Miss "
      --
      UPDATE titanic_all_passenger_list
        SET firstname = ("Miss " || substr(firstname, 6) ) 
      WHERE substr(firstname, 1, 5) = "Misse";

      --
      -- Replace "Mre" with "Mr "
      --
      UPDATE titanic_all_passenger_list
        SET firstname = ("Mr " || substr(firstname, 4) ) 
      WHERE substr(firstname, 1, 3) = "Mre";

      --
      -- Replace "Dre" with "Dr "
      --
      UPDATE titanic_all_passenger_list
        SET firstname = ("Dr " || substr(firstname, 4) ) 
      WHERE substr(firstname, 1, 3) = "Dre";

end;
