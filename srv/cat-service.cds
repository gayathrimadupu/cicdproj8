using my.bookshop as my from '../db/data-model';

service CatalogService {
    @restrict: [{
        grant: '*',
        to : 'Admin'
    },
    {
        grant: 'READ',
    to : 'Student'
    }
    
    ]
   entity Books as projection on my.Books;
}
