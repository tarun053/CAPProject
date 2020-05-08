using { my.bookshop, sap.common } from '../db/data-model';
using { BusinessApp.db} from '../db/src/Employee';

service CatalogService {
  entity Books @readonly as projection on bookshop.Books;
  entity Authors @readonly as projection on bookshop.Authors;
  entity Orders @insertonly as projection on bookshop.Orders;
  entity EmployeeDetails @readonly as projection on db.Employee.employeeDetails
  entity RoleEnrollments @readonly as projection on db.Employee.roleEnrollments;
  
}