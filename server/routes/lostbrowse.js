//to display all lost items reported
// * NPM Packages
const express = require('express');
const LostReport = require('../models/lostreport');
  module.exports = async(req, res)=>{
     try{
      const lost= await LostReport.find({});
        //console.log(found)
        return res.status(200).send(lost);
       
     }catch(error)
     {
       res.status(400).send(error);
     }
 };