const cds = require('@sap/cds')
module.exports = cds.service.impl(function () {
    const {Products} = this.entities()
    this.after('each',Products, row =>{
        console.log(`Read Product: ${row.ID}`)
    })
})