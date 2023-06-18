# HAN_Marine_element

- 2023年6月18日已全部完成

汉の2023春OUC海洋要素计算作业库

- 此仓库为中国海洋大学课程：海洋要素计算(选课号：[*070103101251*])的作业而建立
- 所有者：Hanxue Yu 余汉学
- 指导教师：王颖颖&杨俊超
- 参考：
  - Github上可以找到的学长多年前写的[代码仓库][先輩のRepo]
  - 海洋要素数据的质量控制中的格林布斯准则参考：[c-bata/outlier-utils][glbs]
  - WORK2中的EOF计算来自于[Python EOF module][eofs]
  - WORK2中的PDO index来自于[PDO index][pdo]
  - WORK4中计算比容异常[GSW-Python][gsw]
  - WORK5中cmap "Rocket"来自于[seaborn: statistical data visualization][seaborn]
  - 刘永玲.杜凌.李静凯.翟方国 海洋要素计算上机实验指导书[M] 青岛：中国海洋大学出版社，2021
  - GB/T 14914.6-2021, 海洋观测规范　第6部分：数据处理与质量控制[S].
  - 字体[LXGW Bright][lxgw]

## 作业一 [海洋要素数据的质量控制][def1]

- 1.**奇异值判定与处理，生成新序列**
- 2.**分析两序列的平均值、标准差等统计特征的变化**
- 拓展作业见[拓展作业-空间二位插值][def1_d]

![WORK1代表图片](WORK1\results.png)

## 作业二 [利用EOF方法研究北太平洋海表面温度总体时空变化特征][def2]

- 选取1900-2020年为研究时间段，利用EOF方法对北太平洋海表面温度场数据进行分析。  
- 讨论北太平洋SST在1900-2020年总体时空变化特征

![WORK2代表图片](WORK2\results.png)

## 作业三 [长期水位资料的调和分析][def3]

<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>a</th>
      <th>b</th>
      <th>R</th>
      <th>θ</th>
      <th>H</th>
      <th>g</th>
    </tr>
    <tr>
      <th>分潮</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>M2</th>
      <td>-1460.102843</td>
      <td>1239.338306</td>
      <td>1915.165724</td>
      <td>82.648415</td>
      <td>1845.483605</td>
      <td>8.659484</td>
    </tr>
    <tr>
      <th>O1</th>
      <td>-53.780013</td>
      <td>-216.599202</td>
      <td>223.175949</td>
      <td>-59.769138</td>
      <td>276.439846</td>
      <td>64.557064</td>
    </tr>
    <tr>
      <th>S2</th>
      <td>368.429984</td>
      <td>-377.902054</td>
      <td>527.778946</td>
      <td>-63.498182</td>
      <td>527.778946</td>
      <td>239.201911</td>
    </tr>
    <tr>
      <th>K1</th>
      <td>197.306115</td>
      <td>228.400426</td>
      <td>301.821898</td>
      <td>49.177560</td>
      <td>341.978206</td>
      <td>307.634942</td>
    </tr>
    <tr>
      <th>P1</th>
      <td>51.051973</td>
      <td>97.105078</td>
      <td>109.707339</td>
      <td>62.267323</td>
      <td>109.707339</td>
      <td>293.144287</td>
    </tr>
    <tr>
      <th>N2</th>
      <td>-349.550854</td>
      <td>64.514394</td>
      <td>355.454506</td>
      <td>80.799918</td>
      <td>342.521514</td>
      <td>317.393238</td>
    </tr>
    <tr>
      <th>Q1</th>
      <td>13.719769</td>
      <td>-43.172999</td>
      <td>45.300551</td>
      <td>-72.370479</td>
      <td>56.112128</td>
      <td>10.179002</td>
    </tr>
    <tr>
      <th>K2</th>
      <td>-51.515602</td>
      <td>102.913995</td>
      <td>115.087565</td>
      <td>38.694182</td>
      <td>153.633137</td>
      <td>72.628583</td>
    </tr>
    <tr>
      <th>M4</th>
      <td>34.167625</td>
      <td>-87.967445</td>
      <td>94.370006</td>
      <td>-68.773225</td>
      <td>87.627747</td>
      <td>17.526245</td>
    </tr>
    <tr>
      <th>MS4</th>
      <td>-21.067135</td>
      <td>53.356617</td>
      <td>57.365083</td>
      <td>18.557827</td>
      <td>53.266638</td>
      <td>248.168533</td>
    </tr>
  </tbody>
</table>

![WORK3代表图片](WORK3\results.png)

## 作业四 [地转流计算][def4]

![WORK4代表图片](WORK4\2018-01%2010%20dbar.png)

- 1.利用两月的月平均资料计算北太平洋*6°N-35°N*范围内的地转流，选取**1500db**作为参考零面画出*10db*，*100 db*，*250 db*，*500 db*等四个深度层上的流场和流速
- 2.利用上面计算结果，计算北赤道流水体输运（如130°E，8°N-18°N断面），比较讨论两月结果差异，也可进一步比较不同断面的差异  

## 作业五 [海浪资料统计分析][def5]

- 1. 画出波面高度时间序列，利用上跨零点或者下跨零点的方法读取数据资料中的波高、周期等波浪要素，并画图展示。  
- 2. 画出波高的概率密度分布，并计算给出有效波高和有效波周期  

![WORK5代表图片](WORK5\result.png)

[先輩のRepo]: https://github.com/FinalTheory/oceanography-numerical-calculations
[glbs]: https://github.com/c-bata/outlier-utils
[gsw]: https://teos-10.github.io/GSW-Python/gsw_flat.html
[eofs]: https://ajdawson.github.io/eofs/latest/api/eofs.standard.html
[pdo]: https://www.ncei.noaa.gov/access/monitoring/pdo/
[seaborn]: http://seaborn.pydata.org/
[lxgw]: https://github.com/lxgw/LxgwBright
[def1]: https://nbviewer.org/github/Yuhan-xue/HAN_Marine_element/blob/main/WORK1/WORK1.ipynb
[def1_d]: https://nbviewer.org/github/Yuhan-xue/HAN_Marine_element/blob/main/WORK1/%E6%8B%93%E5%B1%95/%E6%8B%93%E5%B1%951.ipynb
[def2]: https://nbviewer.org/github/Yuhan-xue/HAN_Marine_element/blob/main/WORK2/WORK2.ipynb
[def3]: https://nbviewer.org/github/Yuhan-xue/HAN_Marine_element/blob/main/WORK3/WORK3.ipynb
[def4]: https://nbviewer.org/github/Yuhan-xue/HAN_Marine_element/blob/main/WORK4/WORK4.ipynb
[def5]: https://nbviewer.org/github/Yuhan-xue/HAN_Marine_element/blob/main/WORK5/WORK5.ipynb
