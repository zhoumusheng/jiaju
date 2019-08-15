//1:第三方模块 
//  express          web服务器
//  cors             跨域
//  express-session  session
//  body-parser      处理post数据
//  multer           上传文件
//  fs               文件操作(内置)
//  mysql            mysql驱动模块 
//下载指令:联网 
//npm i express-session body-parser multer mysql express cors
//构建web服务器
//引入模块
const http=require("http");
const mysql=require("mysql");
const express=require("express");
const session=require("express-session");
const bodyParser=require("body-parser");
const cors=require("cors");
/*引入路由模块 */
var Index = require("./router/index");
var Login=require("./router/Login");
var Sheji = require("./router/Sheji");
var Zhuangxiu=require("./router/Zhuangxiu");
var Zhuangshi=require("./router/Zhuangshi");
var Shenghuo=require("./router/Shenghuo");
var Pingce=require("./router/Pingce");
var Shipin=require("./router/Shipin");
var Zhuanti=require("./router/Zhuanti");
var Shiyong=require("./router/Shiyong");
var Pinpai=require("./router/Pinpai");
var Wenda=require("./router/Wenda");
var Yijiayiju=require("./router/Yijiayiju");
var Allbrand=require("./router/Allbrand");


/**创建express对象 */
var app=express();
/**绑定监听端口 */
app.listen(3000);
/**处理跨域请求 */
app.use(cors({
  origin:['http://127.0.0.1:8080',
  'http://localhost:8080'],
  credentials:true
}));
/**添加session功能 */
app.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}));
/**使用body-parser中间件 */
app.use(bodyParser.json());
/**托管静态资源到public目录下 */
app.use(express.static("public"));

/**使用路由器来管理路由 */
app.use("/index",Index);
app.use("/login",Login);
app.use("/sheji",Sheji);
app.use("/zhuangxiu",Zhuangxiu);
app.use("/zhuangshi",Zhuangshi);
app.use("/Shenghuo",Shenghuo);
app.use("/Pingce",Pingce);
app.use("/Shipin",Shipin);
app.use("/Zhuanti",Zhuanti);
app.use("/Shiyong",Shiyong);
app.use("/Pinpai",Pinpai);
app.use("/Wenda",Wenda);
app.use("/yijiayiju",Yijiayiju);
app.use("/allbrand",Allbrand);





















