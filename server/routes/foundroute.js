// * NPM Packages
const express = require('express');
const FoundReport = require('../models/foundreport');


module.exports = async(req, res)=>{
    try{
        console.log(req.body);
        const newReport= new FoundReport({
         category:req.body.category,
         itemName:req.body.itemName,
         dateFound:req.body.dateFound,
         foundLocation:req.body.foundLocation,
         brand:req.body.brand,
         color:req.body.color,
         description:req.body.description,
         product:req.body.product
 
        });
        console.log(newReport);
      await newReport.save();
     res.status(200).json({ success: true});
      }catch(error)
      {
        res.status(400).send(error);
      }
 };


