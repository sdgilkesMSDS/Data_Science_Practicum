# Data_Science_Practicum_l Summary 

# Purpose and Overview 

Throughout the COVID-19 pandemic, there has been a small population of individuals that have suffered neurological episodes, such as seizures, during their prolonged hospital stays due to the virus. The purpose of this project is to determine the factors that can be used to predict the occurrence of seizures. Understanding how COVID-19 may have long-term impacts on the nervous system is important in being able to help individuals with long-term symptoms receive proper care and treatment. Before establishing why this occurs, we need to focus on how it occurred. With the provided dataset, predictions can be done to determine what variables and attributes correlated with individuals that suffered a seizure during their hospital stay. R will be used to perform exploratory data analysis (EDA) and produce visualizations. R will also be used to build a logistic regression model and a random forest model to determine factors in the prediction of seizure occurrence in COVID-19 patients. Finally, ROC curves will be created to validate each model and 10-fold cross validation will be applied to compare each model. 

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

Logistic Regression and ROC Curve

<img width="246" alt="image" src="https://user-images.githubusercontent.com/85515116/123562708-b13e7680-d76d-11eb-889d-09aeab04a18b.png">
<img width="234" alt="image" src="https://user-images.githubusercontent.com/85515116/130333312-0a65c826-0ac0-4bb1-a67b-52f14cbd28e2.png">

Random Forest and ROC Curve

<img width="233" alt="image" src="https://user-images.githubusercontent.com/85515116/130333323-39686fc8-faf1-47ab-9fe7-4049aa151d85.png">
<img width="283" alt="image" src="https://user-images.githubusercontent.com/85515116/130333326-bf002853-4515-4a18-a51f-502e303fbec2.png">




# Conclusions 

From the analysis that was conducted, it can be concluded that race, ethnicity, and length of stay at the hospital may have an impact on the occurrence of a seizure in a patient with COVID-19. However, the statistical significance of each was very small. The most accurate model created with the logistic regression model. These models can help provide healthcare works with information regarding who would be more likely to endure a seizure. They can be used as a preventative measure to assess what resources are needed and where they should be allocated. For future analysis, more data will need to be collected. With such a small data set from a small region of one country, the accuracy of the results is questionable. 








