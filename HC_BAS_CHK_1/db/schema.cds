// using common reuse aspects
using { Currency, managed,cuid, sap } from '@sap/cds/common';
namespace hc450.purchaseorder;
// Transactional data
    entity Headers : managed, cuid, {    
        item            : Composition of many Items on item.poHeader = $self;    
        partner         : UUID;
        grossAmount     : Decimal(15,2);
        currency        : Currency;}
    entity Items : cuid, {
        poHeader     : Association to Headers;
        product      : String(10);        
        deliveryDate : Date;
        productdescr : localized String(1111);
        grossAmount  : Decimal(15,2);
        netAmount    : Decimal(15,2);
        taxAmount    : Decimal(15,2);
        quantity     : Decimal(13, 3);
        currency     : Currency;
        quantityUnit : String(3); 
        noteId : String(10);
        }
;    
    
