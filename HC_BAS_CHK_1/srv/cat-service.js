const cds = require('@sap/cds')
module.exports = cds.service.impl(function () {
    const { POHeaders } = this.entities()

    this.after('each', POHeaders, row =>{
        console.log(`Read PO: ${row.ID}`)
    })
})