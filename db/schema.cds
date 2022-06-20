using { cuid, managed, Currency, extensible } from '@sap/cds/common';

namespace whothefluff.test.package;

entity Hotels : cuid, managed, extensible {
  name : String;
  descr : localized String;
  rooms : Composition of many Rooms;
}

aspect Rooms : managed, extensible {
  key ID : Integer;
  pricePerNight : Currency;
  numberOfBeds : Integer;
}