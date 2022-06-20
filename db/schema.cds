using { cuid, managed, Currency, extensible } from '@sap/cds/common';

namespace whothefluff.test.package;

extend sap.common.Currencies with {
  exponent : Integer; //> e.g. 2 --> 1 Dollar = 10^2 Cent
  minor : String; //> e.g. 'Cent'
}

entity Hotels : cuid, managed, extensible {
  name : String;
  rooms : Composition of many Rooms;
}

aspect Rooms : cuid, managed, extensible {
  number : Integer @( mandatory, assert.unique: number, title:'Room Number');
  pricePerNight : Decimal;
  currency : Currency;
  numberOfBeds : Integer;
} 