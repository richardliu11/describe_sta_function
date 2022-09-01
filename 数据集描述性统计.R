head(mtcars)
data <- mtcars[c("mpg","disp","hp")]

my_describe <- function(x,digit){
  options(digits = digit)
  N = length(x);
  Nmiss = sum(is.na(x));
  Min = min(x, na.rm = TRUE);
  Q1 = quantile(x, probs = 0.25, na.rm = TRUE);
  Median = median(x, na.rm = TRUE);
  Q3 = quantile(x, probs = 0.75, na.rm = TRUE);
  Max = max(x, na.rm = TRUE);
  Mean = mean(x, na.rm = TRUE);
  Sd = sd(x, na.rm = TRUE);
  Range = abs(diff(range(x)));
  skew <- sum((x-Mean)^3/Sd^3)/N
  kurt <- sum((x-Mean)^4/Sd^4)/N-3
  #返回结果
  return(data.frame('样本数' = N, '缺失值' = Nmiss, '最小值' = Min, '下四分位' = Q1, '中位数' = Median, '上四分位' = Q3, '最大值' = Max, '平均数' = Mean, '标准差' = Sd, '极差' = Range, '偏度' = skew,'峰度' = kurt))
}

sapply(data, my_describe,3)#usage
library(kableExtra)
kbl(des_info,booktabs = T, caption = "数据集描述性统计表") %>%
  kable_styling(latex_options = c("striped", "hold_position"),
                full_width = F)