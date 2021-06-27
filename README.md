# Data_Science_Practicum_l

# Purpose and Overview 

Throughout the Covid-19 pandemic, there has been a small population of individuals that suffered neurological episodes such as seizures during their prolonged hospital stays. The purpose of this project is to determine the factors that can be used to predict the occurrence of a seizure. Understanding how COVID-19 may have long-term impacts on the nervous system is important in being able to help individuals who have suffered long-term symptoms. Before establishing why this occurs, we need to focus on how it occurred. With the provided dataset, predictions can be done to determine what variables and attributes correlated with individuals that suffered a seizure during their hospital stay. R will be used to perform descriptive statistics, EDA, and produce visualizations and will also be used to build a K-nearest-neighbor (KNN) classifier and logistic regression model to determine factors in the prediction of seizure occurrence in COVID-19 patients. 

# Data Description, Preperation, and Visualizations 

Published in 2021 and provided by the Chief Resident of the LSU Health Department of Neurology, Dr. David Chachkhiani. This data was cleared by the Institutional Review Board and made publicly available through Mendeley Data. The final cleaned data contained 19 variables with 208 observations. 


<img width="468" alt="image" src="https://user-images.githubusercontent.com/85515116/123562668-5f95ec00-d76d-11eb-85ce-6ca1a3ba3a79.png">





Age of Patients
 
<img width="468" alt="image" src="https://user-images.githubusercontent.com/85515116/123562579-d979a580-d76c-11eb-929c-135c28d3df76.png">

Race of Patients 

<img width="468" alt="image" src="https://user-images.githubusercontent.com/85515116/123562600-f44c1a00-d76c-11eb-9076-ec8413ee1f7f.png">

Sex of Patients 

<img width="468" alt="image" src="https://user-images.githubusercontent.com/85515116/123562616-13e34280-d76d-11eb-89b7-75a8e78ac158.png">


# Models Built 

KNN Classification 

<img width="209" alt="image" src="https://user-images.githubusercontent.com/85515116/123562698-a2f05a80-d76d-11eb-96da-5d2f466f7a11.png">


Logistic Regression 

<img width="246" alt="image" src="https://user-images.githubusercontent.com/85515116/123562708-b13e7680-d76d-11eb-889d-09aeab04a18b.png">


# Conclusions 

From the analysis that I conducted, it can be concluded that race, ethnicity, and length of stay at the hospital may have an impact on the occurrence of a seizure in a patient with COVID-19. However, the statistical significance of each of these variables was very small. The model can help provide healthcare works with information regarding who would be more likely to endure a seizure. It can be used as a preventative measure to assess what resources are needed and where they should be allocated. For future analysis, more data will need to be collected. With such a small data set from a small region of one country, the accuracy of the results is questionable. Also, a decision tree would be a useful addition to this analysis in order to help healthcare workers in decision analysis regarding patient outlook.








