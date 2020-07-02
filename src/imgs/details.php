<?php
header("content-type:text/html;charset=utf8");
// 接收id
$id = $_POST["id"];
// var_dump($id);
// 连接数据库
$con = mysqli_connect("localhost","root","rootroot","goodslist");
mysqli_query($con,"set names utf8");
$sql = "select * from goodslist where id=$id";
$res = mysqli_query($con,$sql);
// 查询的结果是什么？ - 结果集 - 还需要提取数据
// 提取一条还是循环提取多条 - only one - 因为咱们只需要一条数据 - 一个商品
$row = mysqli_fetch_assoc($res);
if($row){ // 判断是否查询到数据
    $arr = [ // 查询到数据就返回信息和数据
        "status"=>200,
        "msg"=>"ok",
        "data"=>$row // 直接传这个数据就ok，不要转了
    ];
}else{
    $arr = [ // 查询不到数据就返回一个信息
        "status"=>404,
        "msg"=>"data is not found"
    ];
}
echo json_encode($arr); // 这里是可以转的