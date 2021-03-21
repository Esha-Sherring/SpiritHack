//to display all lost items reported
// * NPM Packages
const express = require('express');
const FoundReport = require('../models/foundreport');
  module.exports = async(req, res)=>{
     try{
      const found= await FoundReport.find({});
        //console.log(found)
        return res.status(200).send(found);
       
     }catch(error)
     {
       res.status(400).send(error);
     }
 };