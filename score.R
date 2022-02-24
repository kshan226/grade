score <- read.csv("score2.csv")

plot(score$written, score$practical)
abline(lm(practical ~ written, data=score))

plot(score$written, score$practical, col=score$gender)
abline(lm(practical ~ written, data=score[score$gender==1, ]), col="blue")
abline(lm(practical ~ written, data=score[score$gender==2, ]), col="red")

plot(jitter(score$written), jitter(score$practical), col=score$gender)
abline(lm(practical ~ written, data=score[score$gender==1, ]), col="blue")
abline(lm(practical ~ written, data=score[score$gender==2, ]), col="red")
