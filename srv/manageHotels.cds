using { whothefluff.test.package as myTest } from '../db/schema';

service manageHotels {

  entity Hotels as projection on myTest.Hotels;

}