# Digital Signal Processing Sessional

I have done this lab work for _EEE-496_ course at [CUET](https://www.cuet.ac.bd/)

## Requirement

For publication quality plots you will need to download [PlotPub](https://github.com/masumhabib/PlotPub)

|No|Experiment Name|
|----|----------------------------------|
|01|Familiarization with basic MATLAB commands and tools|
|02|Introduction to elementary signals, systems and  signal manipulation  techniques|
|03|Sampling theorem|
|04|LTI System as filter|
|05|Application of Z-transform and inverse Z-transform|
|06|Frequency Domain and Fourier Transform –Part 1|
|07|Frequency Domain and Fourier Transform –Part II|
|08|Multirate Signal Processing (Downsampling and Upsampling)|
|09|FIR and IIR filter design techniques|
|10|Familiarization with  Advanced DSP topics|

### Lab-01: Familiarization with basic MATLAB commands and tools.
You will find the Python code [here](https://github.com/sayedul79/dsp-python/blob/main/lab-01.ipynb)

* Use the Wallis Product to determine the value of $\pi$
$$ \pi = 2\times \frac{2\cdot2\cdot4\cdot4\cdot6\cdot6\cdots}{1\cdot3\cdot3\cdot5\cdot5\cdot7\cdots} $$
$\qquad$ [Matlab Code](https://github.com/sayedul79/dsp-matlab/blob/main/lab_01_pi_from_wallis.m)

* Use the continued fraction to determine $\pi$
$$\frac{\pi}{4} =1+\cfrac{1^2}{2+\cfrac{3^2}{2+\cfrac{5^2}{2+\cdots}}}$$
$\qquad$[Matlab Code](https://github.com/sayedul79/dsp-matlab/blob/main/lab_01_pi_from_continued_fraction.m)

* Use the Gregory–Leibniz series to determine the value of $\pi$
$$ \pi = 4(1-\cfrac{1}{3}+\cfrac{1}{5}-\cfrac{1}{7}+\cfrac{1}{9}-\cdots)$$
$\qquad$[Matlab Code](https://github.com/sayedul79/dsp-matlab/blob/main/lab_01_pi_from_GregoryLeibniz.m)

* Use the ArcSin series to determine the value of $\pi$
$$ \pi = 6(\frac{1}{2}+\cfrac{1}{2\cdot3\cdot2^3}+\cfrac{1\cdot3}{2\cdot4\cdot5\cdot2^5}+\cfrac{1\cdot3\cdot5}{2\cdot4\cdot6\cdot7\cdot2^7}+\cdots)$$
$\qquad$[Matlab Code](https://github.com/sayedul79/dsp-matlab/blob/main/lab_01_pi_from_ArcSin.m)

* Use the Euler series to determine the value of $\pi$
$$ \frac{\pi^2}{6} = (\frac{1}{1^2}+\cfrac{1}{2^2}+\cfrac{1}{3^2}+\cfrac{1}{4^2}+\frac{1}{5^2}\cdots)$$
$\qquad$[Matlab Code](https://github.com/sayedul79/dsp-matlab/blob/main/lab_01_pi_from_LeonardEuler.m)

* Use the Rieman zeta function $\zeta(2)$ to determine the value of $\pi$
$$ \frac{\pi^2}{6} = (\frac{2^2}{2^2-1}\cdot\cfrac{3^2}{3^2-1}\cdot\cfrac{5^2}{5^2-1}\cdot\cfrac{7^2}{7^2-1}\cdot\frac{11^2}{11^2-1}\cdots)$$
$\qquad$[Matlab Code](https://github.com/sayedul79/dsp-matlab/blob/main/lab_01_pi_from_zeta_function.m)

* [Lab Report](https://github.com/sayedul79/dsp-matlab/blob/main/lab-report/lab01-EEE-496.pdf)

### Lab-02: Introduction to elementary signals, systems and  signal manipulation  techniques
* [Impulse Step Ramp and Parabolic Signal(Overleaf)](https://www.overleaf.com/read/wbwnnwpxbqdm)
* [Generate different type of signal(Overleaf)](https://www.overleaf.com/read/jrycwvwvhdcq)

### Filter design
* [Hamming window Hanning window Blackman Barlett window and fillter design (Overleaf)](https://www.overleaf.com/read/vsqwgtsbsmrq)
  * [Hamming Window {matlab code}](https://github.com/sayedul79/dsp-matlab/blob/main/lab-report-latex-file/Hamming%20window%20Hanning%20window%20Blackman%20Barlett%20window%20and%20fillter%20design/matlab-code/hamming_window.m)
  * [Hanning Window {matlab code}](lab-report-latex-file/Hamming window Hanning window Blackman Barlett window and fillter design/matlab-code/hanning_window.m)
  * [Blackman Window (matlab code)](lab-report-latex-file/Hamming window Hanning window Blackman Barlett window and fillter design/matlab-code/blackman_window.m)
  * [Barlett Window (matlab code)](lab-report-latex-file/Hamming window Hanning window Blackman Barlett window and fillter design/matlab-code/bartlett_window.m)
  * [Low Pass Kernal](lab-report-latex-file/Hamming window Hanning window Blackman Barlett window and fillter design/matlab-code/LowPassKernal.m)
  * [High Pass Kernal](lab-report-latex-file/Hamming window Hanning window Blackman Barlett window and fillter design/matlab-code/HighPassKernal.m)
  * [Low Pass Filter](lab-report-latex-file/Hamming window Hanning window Blackman Barlett window and fillter design/matlab-code/low_pass_filter.m)
  * [High Pass Filter](lab-report-latex-file/Hamming window Hanning window Blackman Barlett window and fillter design/matlab-code/high_pass_filter.m)
* [LPF, HPF, BPF Using Butterworth filter (Overleaf)](https://www.overleaf.com/read/rcvtpjdyqqkg)
  * [User defined butterworth filter](lab-report-latex-file/LPF-HPF-BPF-using-Butterworth-filter-04/matlab-code/lab_04_user_defined_buttter.m)
  * [Design a high pass filter and test it with a signal](lab-report-latex-file/LPF-HPF-BPF-using-Butterworth-filter-04/matlab-code/lab_4_high_pass_signal.m)
  * [Design a low pass filter and design it with a signal](lab-report-latex-file/LPF-HPF-BPF-using-Butterworth-filter-04/matlab-code/lab_4_low_pass.m)
* [LPF HPF BPF BSF using different window(Overleaf)](https://www.overleaf.com/read/nkgtbsfcqzpr)
  * [Design low pass filter using all window](lab-report-latex-file/LPF-HPF-BPF-BSF-using-different-window/matlab-code/All_window_low_pass_filter.m)
  * [Design high pass filter using all window](lab-report-latex-file/LPF-HPF-BPF-BSF-using-different-window/matlab-code/All_window_high_pass_filter.m)
  * [Design Bandpass filter using all window](lab-report-latex-file/LPF-HPF-BPF-BSF-using-different-window/matlab-code/All_window_band_pass_filter.m)
  * [Design band stop filter using all window](lab-report-latex-file/LPF-HPF-BPF-BSF-using-different-window/matlab-code/All_window_band_stop_filter.m)


