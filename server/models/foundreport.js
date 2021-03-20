const mongoose = require('mongoose');
const foundReportSchema = new mongoose.Schema(
    { 
        category:{
            required:true,
            type:String

        },
        itemName:{
        required:true,
        type:String
        },
        dateFound:{
           
           type:Date
        },
        foundLocation:{
            required:true,
            type:String
        },
        brand:{
            required:false,
            type:String
        },
        color:
        {
            required:true,
            type: String

        },
        description:
        {
            required:true,
            default:"Please give some details about the product",
            type: String
        },  
        product: { type: String }
    });

    const FoundReport = mongoose.model('FoundReport', foundReportSchema);
module.exports = FoundReport;

