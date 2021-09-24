# Question 3: Compute Manhattan distance and cosine similarity after
# performing (a),(b),(c) steps of Q.2.

manhattan_distance <- dist(x, method = 'manhattan')
manhattan_distance

# cosine similarity
library(lsa)
cosine_function <- cosine(x)
View(cosine_function)
