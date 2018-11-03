# -*- coding: utf-8 -*-
"""
Created on Tue Oct 30 21:35:06 2018

@author: Administrator
"""
from gensim.models import word2vec
# 记载已经训练好的中文模型
model = word2vec.Word2Vec.load("word2vec")
 
s = .similarity("china", "japan")
print(s)