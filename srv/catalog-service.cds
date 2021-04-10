using {jasonhanaapp.db as db} from '../db/data-model';



service CatalogService @(path : '/catalog')
@(requires: 'authenticated-user')
{
    entity Sales
      as select * from db.Sales
      actions {
        action boost();
      }
    ;

    function topSales
      (amount: Integer)
      returns many Sales;



    type userRoles { identified: Boolean; authenticated: Boolean; };
    type user { user: String; locale: String; roles: userRoles; };
    function userInfo() returns user;
};
