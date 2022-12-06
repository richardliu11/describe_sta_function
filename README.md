# describe_sta_function
自定义描述性统计函数

用于RMarkdown撰写报告时便于对数据集进行描述性统计

## 参数说明
x：数据

digit：小数位数

n：小数位数补充，有时候未知原因导致digit参数对skew和kurt不准，设置与digit相同

## packages
- kableExtra
用于生成图表

## sample

![image](https://user-images.githubusercontent.com/61462186/205842225-5f3fb450-837c-4a42-b0ec-21243132e517.png)

也可以对des_info进行转置，结果如下图
```r
des_info<-t(des_info)
```
![image](https://user-images.githubusercontent.com/61462186/205842453-6ca81666-4164-40fd-a42a-e596a9449c1e.png)
