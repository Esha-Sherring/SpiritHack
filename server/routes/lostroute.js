// * NPM Packages
const express = require('express');
const LostReport = require('../models/lostreport');



  module.exports = async(req, res)=>{
     try{
       //console.log(req.body);
       const newReport= new LostReport({
        category:req.body.category,
        itemName:req.body.itemName,
        dateLost:req.body.dateLost,
        lostLocation:req.body.lostLocation,
        brand:req.body.brand,
        color:req.body.color,
        description:req.body.description,
        product:req.body.product

       });
       //console.log(newReport);
     await newReport.save();
     
   return res.status(200).send(newReport);
     }catch(error)
     {
       res.status(400).send(error);
     }
 };