clear; clc; close all;

%% === 1) Ler dados
data = readtable('dados_filtrados.xlsx', 'VariableNamingRule','preserve');

t = data{:,1};   % primeira coluna = tempo
y = data{:,2};   % segunda coluna = saída

disp('Colunas do arquivo:')
disp(data.Properties.VariableNames)

figure;
plot(t, y, 'b', 'LineWidth', 1.2);
grid on;
xlabel('Tempo (s)');
ylabel('Saída (V)');
title('Dados Filtrados');