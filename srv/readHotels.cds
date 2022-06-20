using { whothefluff.test.package as myTest } from '../db/schema';

service readHotels {

  @readonly
  entity Hotels as projection on myTest.Hotels;

}