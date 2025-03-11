clear; clc;


t = 0:0.001:1;   
fc = 50;         
beta = 5;        
N = 10;          


[fm_signal, message_signal] = fm(t, fc, beta, N);


zoom_start = 0.2; 
zoom_end = 0.3;   
zoom_idx = (t >= zoom_start) & (t <= zoom_end);


figure;

subplot(2,1,1); 
plot(t, fm_signal, 'b', 'LineWidth', 1.5); hold on;
plot(t, message_signal, 'r', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Full FM Modulated Signal & Message Signal');
legend('FM Signal', 'Message Signal');
grid on;


subplot(2,1,2);
plot(t(zoom_idx), fm_signal(zoom_idx), 'b', 'LineWidth', 1.5); hold on;
plot(t(zoom_idx), message_signal(zoom_idx), 'r', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Zoomed-In View (FM & Message Signal)');
legend('FM Signal', 'Message Signal');
grid on;
