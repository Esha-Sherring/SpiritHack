// *NPM Packages
const express = require('express');
var bodyParser = require('body-parser')
// create application/json parser
var jsonParser = bodyParser.json()

// *Config
const connectdb = require('./config/db');
require('dotenv').config({ path: __dirname + '/.env' });
// *Connect to database
connectdb();
// *Routes
const lostroute = require('./routes/lostroute.js');
const foundroute = require('./routes/foundroute.js');
const matchreport = require('./routes/matchreport.js');
const alllostreports = require('./routes/lostbrowse.js');
const allfoundreports = require('./routes/foundbrowse.js');
const mailroomcode = require('./routes/mailroomcode.js');
const app = express();

const PORT = process.env.PORT || 3000;


// *Routes
app.post('/api/lostroute',jsonParser ,lostroute);
app.post('/api/foundroute', jsonParser,foundroute);
app.get('/api/matchreport/:id', jsonParser,matchreport);
app.get('/api/alllostreports', jsonParser,alllostreports);
app.get('/api/allfoundreports', jsonParser,allfoundreports);
app.post('/api/mailroomcode', jsonParser,mailroomcode);
//app.use('/allitems', shoproutes);

app.listen(PORT, console.log(`Server started on Port ${PORT}`));