using hc450.officesupplies from '../db/schema';

service CatalogService {
    @odata.draft.enabled
    entity Products as projection on officesupplies.Products;
    entity Suppliers as projection on officesupplies.Suppliers;
};
