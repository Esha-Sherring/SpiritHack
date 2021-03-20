// * NPM Packages
const express = require('express');
const FoundReport = require('../models/foundreport');
const LostReport = require('../models/lostreport');
  module.exports = async(req, res)=>{
     try{
       const lost= await LostReport.findById(req.params.id);
       const found= await FoundReport.find(
           {
                category:lost.category,
                itemName:lost.itemName,
                brand:lost.brand,
                color:lost.color,
           }
       );
       console.log(found)
       return res.status(200).send(found);
     }catch(error)
     {
       res.status(400).send(error);
     }
 };