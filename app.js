const express=require("express");
const bodyParser=require('body-parser');
const session=require("express-session");
//引入路由
const index=require("./routes/index")
const details=require("./routes/details")
const product=require("./routes/product")
const user=require("./routes/user")
var app=express();
var server=app.listen(3000);
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static(__dirname+'/public'));
app.use(session({
    secret: '128位随机字符串',
    resave: false,
    saveUninitialized: true,
   
  }))
//使用路由
app.use("/index",index);
app.use("/details", details);
app.use("/product",product);
app.use("/user",user);