這個資料夾裡共有3個.m檔案
分別為hw4_pro8.m hw4_pro9.m hw4_pro10.m以下分別解釋


hw4_pro8.m

使用imnoise()將salt&pepper noise加入image
再用medfilt2()將有noise的image修復


hw4_pro9.m

加入sinusoidal noise
然後使用fft2()轉到frequency domain
建立notch filter然後和原圖卷積

 
hw4_pro10.m

將原圖加入雜訊設為img1、img2
使用deconwnr()將圖片修復(去雜訊)
調整參數使圖片更清晰