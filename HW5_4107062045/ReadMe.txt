這個資料夾裡共有3個.m檔案
分別為hw5_pro8.m hw5_pro9.m hw5_pro10.m以下分別解釋


hw5_pro8.m

將影像中灰階值小於30的pixel
調成黃色(255,255,0)其餘不變就完成(對每個pixel疊代)	

hw5_pro9.m

先將圖片分成R G B channel
分別用histeq()使其分布平均
然後在用cat()將3個channel合成


hw5_pro10.m

使用和pro8一樣的做法