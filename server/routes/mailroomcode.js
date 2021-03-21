const express = require("express");
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');


const transporter = nodemailer.createTransport({
    port: 465,
    host: "smtp.gmail.com",
    auth: {
        user: 'esherring2016@gmail.com',
        pass: '',
    },
    secure: true, // upgrades later with STARTTLS -- change this based on the PORT
});

module.exports= async (req, res) => {
    try{
        const {to, subject, text } = req.body;
        const mailData = {
            from: 'esherring2016@gmail.com',
            to: to,
            subject: subject,
            text: text,
            html: '<b>Hey there! </b><br> This is our first message sent with Nodemailer<br/>',
        };
    
        transporter.sendMail(mailData, (error, info) => {
            if (error) {
                return console.log(error);
            }
            res.status(200).send({ message: "Mail send", message_id: info.messageId });
        });
    }catch(error)
    {
      res.status(400).send(error);
    }
    
};



    

