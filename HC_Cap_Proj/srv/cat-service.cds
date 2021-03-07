using { hc450.purchaseorder as PO  } from '../db/poorders';
service CatalogService @(path: 'browse') {
    entity POHeaders as projection on PO.Headers;
    entity POItems as projection on PO.Items;
}