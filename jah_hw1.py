# -*- coding: utf-8 -*-
"""JAH_HW1.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1ZkcwN5FlTKnTjwSDgek1W0EVgo0dDtzt
"""

# from google.colab import drive
drive.mount('/content/drive')

import pandas as pd

medals = pd.read_csv('/content/drive/MyDrive/DATA/olympic_medals.csv')

#A Find the size of the data frame. How many rows, how many columns?

medals.shape
#2394 rows, 8 columns

#B Use the appropriate function to report the data types for all columns.
medals.dtypes

#C Find how many unique cities matches were held at.

len(medals['Location'].unique())

#Unique Cities = 23

#D Find how many medals the USA team won in total.
len(medals[medals['Nationality']=='USA'])

#USA team won 638 medals

#Find the total number of medals for each Nationality.

medals.groupby(by='Nationality')['Medal'].count()