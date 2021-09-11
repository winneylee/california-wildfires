# California Wildfires Analysis

<p align="center">
    <img src="Resources/CaliforniaWildfires.jpg" alt="CaliforniaWildfires" width="500"/>
</p>

## Topic
The focus of this project will be on California wildfires.

## Why Wildfires?
This topic was chosen to gauge what we may experience in the next upcoming fire season. As the summer comes to a close, it's important to analyze the past fire data and current precipitation measurements to get a hollistic view of what we may experience in the next upcoming fire season.

## High-Level Overview
Our goal is to first determine the most susceptible wildfire areas by looking at the largest fires in recent years. From these data, we can see that there are some areas that are more susceptible to fire danger. In these areas, it's important to share fire awareness. Everyone needs to understand that it's a communal effort that makes a difference.  It's really important to clear out dead leaves and brush, for example. Another idea is to make sure campfires are put out properly.  These are simple yet necessary ideas on prevention. Unfortunately, there are always some unexpected incidents that may arise, for example, the lighting fireworks and random lightning strikes. However, in looking at the data, we can utilize a model to help predict if/when our next fires may occur. This way firefighters can take a more proactive approach in combating issues that may occur.

## Description of Source Data
Some of the variables that can cause fires include weather patterns, fuel/environmental factors, drought/water levels, the number of fire stations/resources available in each county and each year at the time of an incident, and preventative measures.

## Questions We Hope to Answer
- When and where could the next California wildfire be?
- How does temperature play a role in fire season?
- Are there specific counties that are more prone to wildfires?
- What's the main factor to cause a wildfire?

## Datasets
[Kaggle Wildfire Data (2013-2020)](https://www.kaggle.com/ananthu017/california-wildfire-incidents-20132020)<br>
The above link has a dataset that contains geographical information such as latitude and longitude, county, acres burned, [fire] engines, start and extinguished dates,etc.

[Precipitation and Temperature Data (1901-2021)](https://www.ncdc.noaa.gov/cag/county/mapping/4/pcp/201902/1/value)<br>
The hyperlink above includes a dataset on monthly precipitation as well as mean/min/max temperature data.

## Team Member Roles
There were four roles to be assumed by the members of our group, which was comprised of 5 members -- Jinfang Li, Wendy Mudzinski, Stephen Tan, Rachel Tsuchiyama, and Cassie Xu. The roles and descriptions for this project are:
- **Square** - *responsible for the GitHub repository*
    - Stephen
- **Triangle** - *creates mockup of a machine learning model*
    - Rachel, Cassie
- **Circle** - *creates mockup of a database with a set of sample data*
    - Jinfang, Wendy
- **X** - *decides which technologies to use for each step of the project* 
    - No one assumed this role since we all contributed equally

----------

## Database
A provisional database was created that includes sample data that mimics the expected final database schema and is tied to our draft machine learning model. The image below shows the initial dataframe that was created with the cleaned Kaggle Wildfires (2013-2020) dataset.
![Provisional DataFrame](./Resources/fire_data.jpg)

## Machine Learning Model
The provisional machine learning model (*as shown in* fire_analysis.ipynb) that we created is a draft for the final machine learning model. This provisional model (1) takes in data from the provisional database, which includes data from the Kaggle Wildfires (2013-2020) dataset shown above and (2) outputs county labels for the wildfire input data sourced from our datasets. The trained model came out at 98.31% accuracy.

![Provisional Model](./Resources/model.jpg)
