library(survival)
data(lung)
# 3
library(survminer)
# 4
fit <- survfit(Surv(time, status) ~ sex, data = lung)
# 1. survival 再ロード（念のため）
library(survival)
# 2. lung を **完全強制ロード**
data(lung, package = "survival")
# 3
head(lung)  # ← これでデータ確認！6行表示されれば勝利！
# 4
table(lung$status)  # ← 1:63, 2:165 が出れば完全勝利！
# 5
library(survminer)
# 6
fit <- survfit(Surv(time, status) ~ sex, data = lung)
# 7
p <- ggsurvplot(fit, risk.table = TRUE)$plot
# 8
print(p)
# 9
library(ggplot2)
