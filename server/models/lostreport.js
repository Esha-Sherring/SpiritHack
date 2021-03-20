const mongoose = require('mongoose');
const lostReportSchema = new mongoose.Schema(
    { 
        category:{
            required:true,
            type:String

        },
        itemName:{
        required:true,
        type:String
        },
        dateLost:{
           
          
           type:Date
        },
        lostLocation:{
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

const LostReport = mongoose.model('LostReport', lostReportSchema);
module.exports = LostReport;


    