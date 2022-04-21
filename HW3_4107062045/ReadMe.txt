這個資料夾裡共有4個.m檔案
分別為hw3_pro8.m hw3_pro9_a.m hw3_pro9_b.m hw3_pro10.m以下分別解釋

hw3_pro8

使用fft2()將圖片轉到頻域
再用mean()算average

hw3_pro9_a
hw3_pro9_b

先用imgradient()計算gradient
透過imbinarize()將image 轉成binary image
thrshold設為20


hw3_pro10

先用fft2()轉道frequency domain
再用GaussianHighpass()和frequency domain 進行卷積
最後透過ifft2()轉回原圖
就能看到指紋的細節

