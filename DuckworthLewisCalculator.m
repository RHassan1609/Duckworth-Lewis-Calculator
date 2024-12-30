clc
close all
clear all
DL_Table=[50 100.0 93.4 85.1 74.9 62.7 49.0 34.9 22.0 11.9 4.7 0
49.5 99.8 93.2 85.0 74.8 62.7 49.0 34.9 22.0 11.9 4.7 0
49.4 99.7 93.1 84.9 74.7 62.6 48.9 34.9 22.0 11.9 4.7 0
49.3 99.5 93.0 84.8 74.6 62.6 48.9 34.9 22.0 11.9 4.7 0
49.2 99.4 92.8 84.7 74.6 62.5 48.9 34.9 22.0 11.9 4.7 0
49.1 99.2 92.7 84.6 74.5 62.5 48.9 34.9 22.0 11.9 4.7 0
49 99.1 92.6 84.5 74.4 62.5 48.9 34.9 22.0 11.9 4.7 0
48.5 98.9 92.4 84.4 74.4 62.4 48.9 34.9 22.0 11.9 4.7 0
48.4 98.7 92.3 84.3 74.3 62.4 48.8 34.9 22.0 11.9 4.7 0
48.3 98.6 92.2 84.2 74.2 62.3 48.8 34.9 22.0 11.9 4.7 0
48.2 98.4 92.0 84.0 74.1 62.3 48.8 34.9 22.0 11.9 4.7 0
48.1 98.2 91.9 83.9 74.1 62.2 48.8 34.9 22.0 11.9 4.7 0
48 98.1 91.7 83.8 74.0 62.2 48.8 34.9 22.0 11.9 4.7 0
47.5 97.9 91.6 83.7 73.9 62.2 48.7 34.9 22.0 11.9 4.7 0
47.4 97.8 91.5 83.6 73.8 62.1 48.7 34.9 22.0 11.9 4.7 0
47.3 97.6 91.3 83.5 73.8 62.1 48.7 34.9 22.0 11.9 4.7 0
47.2 97.4 91.2 83.4 73.7 62.0 48.7 34.9 22.0 11.9 4.7 0
47.1 97.3 91.0 83.3 73.6 62.0 48.7 34.9 22.0 11.9 4.7 0
47 97.1 90.9 83.2 73.5 61.9 48.6 34.9 22.0 11.9 4.7 0
46.5 96.9 90.8 83.1 73.4 61.9 48.6 34.9 22.0 11.9 4.7 0
46.4 96.7 90.6 82.9 73.4 61.8 48.6 34.9 22.0 11.9 4.7 0
46.3 96.6 90.5 82.8 73.3 61.8 48.6 34.8 22.0 11.9 4.7 0
46.2 96.4 90.3 82.7 73.2 61.7 48.6 34.8 22.0 11.9 4.7 0
46.1 96.2 90.2 82.6 73.1 61.7 48.5 34.8 22.0 11.9 4.7 0
46 96.1 90.0 82.5 73.0 61.6 48.5 34.8 22.0 11.9 4.7 0
45.5 95.9 89.9 82.4 73.0 61.6 48.5 34.8 22.0 11.9 4.7 0
45.4 95.7 89.7 82.3 72.9 61.5 48.5 34.8 22.0 11.9 4.7 0
45.3 95.5 89.6 82.1 72.8 61.5 48.5 34.8 22.0 11.9 4.7 0
45.2 95.4 89.4 82.0 72.7 61.4 48.4 34.8 22.0 11.9 4.7 0
45.1 95.2 89.3 81.9 72.6 61.4 48.4 34.8 22.0 11.9 4.7 0
45 95.0 89.1 81.8 72.5 61.3 48.4 34.8 22.0 11.9 4.7 0
44.5 94.8 89.0 81.7 72.4 61.3 48.4 34.8 22.0 11.9 4.7 0
44.4 94.6 88.8 81.5 72.4 61.2 48.3 34.8 22.0 11.9 4.7 0
44.3 94.5 88.7 81.4 72.3 61.2 48.3 34.8 22.0 11.9 4.7 0
44.2 94.3 88.5 81.3 72.2 61.1 48.3 34.8 22.0 11.9 4.7 0
44.1 94.1 88.4 81.2 72.1 61.1 48.3 34.8 22.0 11.9 4.7 0
44 93.9 88.2 81.0 72.0 61.0 48.3 34.8 22.0 11.9 4.7 0
43.5 93.7 88.1 80.9 71.9 61.0 48.2 34.8 22.0 11.9 4.7 0
43.4 93.5 87.9 80.8 71.8 60.9 48.2 34.8 22.0 11.9 4.7 0
43.3 93.4 87.7 80.7 71.7 60.8 48.2 34.7 22.0 11.9 4.7 0
43.2 93.2 87.6 80.5 71.6 60.8 48.1 34.7 22.0 11.9 4.7 0
43.1 93.0 87.4 80.4 71.5 60.7 48.1 34.7 22.0 11.9 4.7 0
43 92.8 87.3 80.3 71.4 60.7 48.1 34.7 22.0 11.9 4.7 0
42.5 92.6 87.1 80.1 71.3 60.6 48.1 34.7 22.0 11.9 4.7 0
42.4 92.4 86.9 80.0 71.3 60.6 48.0 34.7 22.0 11.9 4.7 0
42.3 92.2 86.8 79.9 71.2 60.5 48.0 34.7 22.0 11.9 4.7 0
42.2 92.0 86.6 79.7 71.1 60.4 48.0 34.7 22.0 11.9 4.7 0
42.1 91.8 86.4 79.6 71.0 60.4 48.0 34.7 22.0 11.9 4.7 0
42 91.7 86.3 79.5 70.9 60.3 47.9 34.7 22.0 11.9 4.7 0
41.5 91.5 86.1 79.3 70.8 60.3 47.9 34.7 22.0 11.9 4.7 0
41.4 91.3 85.9 79.2 70.7 60.2 47.9 34.7 22.0 11.9 4.7 0
41.3 91.1 85.8 79.1 70.6 60.1 47.8 34.7 22.0 11.9 4.7 0
41.2 90.9 85.6 78.9 70.5 60.1 47.8 34.7 22.0 11.9 4.7 0
41.1 90.7 85.4 78.8 70.4 60.0 47.8 34.6 22.0 11.9 4.7 0
41 90.5 85.3 78.7 70.3 59.9 47.8 34.6 22.0 11.9 4.7 0
40.5 90.3 85.1 78.5 70.2 59.9 47.7 34.6 22.0 11.9 4.7 0
40.4 90.1 84.9 78.4 70.1 59.8 47.7 34.6 22.0 11.9 4.7 0
40.3 89.9 84.7 78.2 69.9 59.7 47.7 34.6 22.0 11.9 4.7 0
40.2 89.7 84.6 78.1 69.8 59.7 47.6 34.6 22.0 11.9 4.7 0
40.1 89.5 84.4 77.9 69.7 59.6 47.6 34.6 22.0 11.9 4.7 0
40 89.3 84.2 77.8 69.6 59.5 47.6 34.6 22.0 11.9 4.7 0
39.5 89.1 84.0 77.7 69.5 59.5 47.5 34.6 22.0 11.9 4.7 0
39.4 88.9 83.9 77.5 69.4 59.4 47.5 34.6 22.0 11.9 4.7 0
39.3 88.6 83.7 77.4 69.3 59.3 47.5 34.6 22.0 11.9 4.7 0
39.2 88.4 83.5 77.2 69.2 59.3 47.4 34.5 22.0 11.9 4.7 0
39.1 88.2 83.3 77.1 69.1 59.2 47.4 34.5 22.0 11.9 4.7 0
39 88.0 83.1 76.9 69.0 59.1 47.4 34.5 22.0 11.9 4.7 0
38.5 87.8 83.0 76.8 68.9 59.0 47.3 34.5 21.9 11.9 4.7 0
38.4 87.6 82.8 76.6 68.7 59.0 47.3 34.5 21.9 11.9 4.7 0
38.3 87.4 82.6 76.5 68.6 58.9 47.3 34.5 21.9 11.9 4.7 0
38.2 87.2 82.4 76.3 68.5 58.8 47.2 34.5 21.9 11.9 4.7 0
38.1 87.0 82.2 76.2 68.4 58.8 47.2 34.5 21.9 11.9 4.7 0
38 86.7 82.0 76.0 68.3 58.7 47.1 34.5 21.9 11.9 4.7 0
37.5 86.5 81.8 75.8 68.2 58.6 47.1 34.4 21.9 11.9 4.7 0
37.4 86.3 81.6 75.7 68.0 58.5 47.1 34.4 21.9 11.9 4.7 0
37.3 86.1 81.5 75.5 67.9 58.4 47.0 34.4 21.9 11.9 4.7 0
37.2 85.9 81.3 75.4 67.8 58.4 47.0 34.4 21.9 11.9 4.7 0
37.1 85.6 81.1 75.2 67.7 58.3 46.9 34.4 21.9 11.9 4.7 0
37 85.4 80.9 75.0 67.6 58.2 46.9 34.4 21.9 11.9 4.7 0
36.5 85.2 80.7 74.9 67.4 58.1 46.9 34.4 21.9 11.9 4.7 0
36.4 85.0 80.5 74.7 67.3 58.0 46.8 34.4 21.9 11.9 4.7 0
36.3 84.8 80.3 74.6 67.2 58.0 46.8 34.3 21.9 11.9 4.7 0
36.2 84.5 80.1 74.4 67.1 57.9 46.7 34.3 21.9 11.9 4.7 0
36.1 84.3 79.9 74.2 66.9 57.8 46.7 34.3 21.9 11.9 4.7 0
36 84.1 79.7 74.1 66.8 57.7 46.6 34.3 21.9 11.9 4.7 0
35.5 83.8 79.5 73.9 66.7 57.6 46.6 34.3 21.9 11.9 4.7 0
35.4 83.6 79.3 73.7 66.6 57.5 46.6 34.3 21.9 11.9 4.7 0
35.3 83.4 79.1 73.6 66.4 57.4 46.5 34.3 21.9 11.9 4.7 0
35.2 83.2 78.9 73.4 66.3 57.4 46.5 34.2 21.9 11.9 4.7 0
35.1 82.9 78.7 73.2 66.2 57.3 46.4 34.2 21.9 11.9 4.7 0
35 82.7 78.5 73.0 66.0 57.2 46.4 34.2 21.9 11.9 4.7 0
34.5 82.5 78.3 72.9 65.9 57.1 46.3 34.2 21.9 11.9 4.7 0
34.4 82.2 78.0 72.7 65.8 57.0 46.3 34.2 21.9 11.9 4.7 0
34.3 82.0 77.8 72.5 65.6 56.9 46.2 34.2 21.9 11.9 4.7 0
34.2 81.7 77.6 72.3 65.5 56.8 46.2 34.2 21.9 11.9 4.7 0
34.1 81.5 77.4 72.2 65.3 56.7 46.1 34.1 21.9 11.9 4.7 0
34 81.3 77.2 72.0 65.2 56.6 46.1 34.1 21.9 11.9 4.7 0
33.5 81.0 77.0 71.8 65.1 56.5 46.0 34.1 21.9 11.9 4.7 0
33.4 80.8 76.8 71.6 64.9 56.4 46.0 34.1 21.9 11.9 4.7 0
33.3 80.5 76.6 71.4 64.8 56.3 45.9 34.1 21.9 11.9 4.7 0
33.2 80.3 76.3 71.3 64.6 56.2 45.9 34.0 21.9 11.9 4.7 0
33.1 80.0 76.1 71.1 64.5 56.1 45.8 34.0 21.9 11.9 4.7 0
33 79.8 75.9 70.9 64.4 56.0 45.8 34.0 21.9 11.9 4.7 0
32.5 79.5 75.7 70.7 64.2 55.9 45.7 34.0 21.9 11.9 4.7 0
32.4 79.3 75.5 70.5 64.1 55.8 45.7 34.0 21.9 11.9 4.7 0
32.3 79.0 75.2 70.3 63.9 55.7 45.6 33.9 21.9 11.9 4.7 0
32.2 78.8 75.0 70.1 63.8 55.6 45.5 33.9 21.9 11.9 4.7 0
32.1 78.5 74.8 69.9 63.6 55.5 45.5 33.9 21.9 11.9 4.7 0
32 78.3 74.6 69.7 63.5 55.4 45.4 33.9 21.9 11.9 4.7 0
31.5 78.0 74.3 69.6 63.3 55.3 45.4 33.9 21.9 11.9 4.7 0
31.4 77.8 74.1 69.4 63.2 55.2 45.3 33.8 21.9 11.9 4.7 0
31.3 77.5 73.9 69.2 63.0 55.1 45.2 33.8 21.9 11.9 4.7 0
31.2 77.3 73.6 69.0 62.8 55.0 45.2 33.8 21.9 11.9 4.7 0
31.1 77.0 73.4 68.8 62.7 54.9 45.1 33.8 21.9 11.9 4.7 0
31 76.7 73.2 68.6 62.5 54.8 45.1 33.7 21.9 11.9 4.7 0
30.5 76.5 72.9 68.4 62.4 54.7 45.0 33.7 21.9 11.9 4.7 0
30.4 76.2 72.7 68.2 62.2 54.5 44.9 33.7 21.9 11.9 4.7 0
30.3 75.9 72.5 68.0 62.0 54.4 44.9 33.7 21.8 11.9 4.7 0
30.2 75.7 72.2 67.8 61.9 54.3 44.8 33.6 21.8 11.9 4.7 0
30.1 75.4 72.0 67.6 61.7 54.2 44.7 33.6 21.8 11.9 4.7 0
30 75.1 71.8 67.3 61.6 54.1 44.7 33.6 21.8 11.9 4.7 0
29.5 74.9 71.5 67.1 61.4 54.0 44.6 33.6 21.8 11.9 4.7 0
29.4 74.6 71.3 66.9 61.2 53.8 44.5 33.5 21.8 11.9 4.7 0
29.3 74.3 71.0 66.7 61.1 53.7 44.4 33.5 21.8 11.9 4.7 0
29.2 74.1 70.8 66.5 60.9 53.6 44.4 33.5 21.8 11.9 4.7 0
29.1 73.8 70.5 66.3 60.7 53.5 44.3 33.5 21.8 11.9 4.7 0
29 73.5 70.3 66.1 60.5 53.4 44.2 33.4 21.8 11.9 4.7 0
28.5 73.2 70.0 65.9 60.4 53.2 44.2 33.4 21.8 11.9 4.7 0
28.4 73.0 69.8 65.6 60.2 53.1 44.1 33.4 21.8 11.9 4.7 0
28.3 72.7 69.5 65.4 60.0 53.0 44.0 33.3 21.8 11.9 4.7 0
28.2 72.4 69.3 65.2 59.8 52.8 43.9 33.3 21.8 11.9 4.7 0
28.1 72.1 69.0 65.0 59.7 52.7 43.9 33.3 21.8 11.9 4.7 0
28 71.8 68.8 64.8 59.5 52.6 43.8 33.2 21.8 11.9 4.7 0
27.5 71.5 68.5 64.5 59.3 52.4 43.7 33.2 21.8 11.9 4.7 0
27.4 71.3 68.2 64.3 59.1 52.3 43.6 33.2 21.8 11.9 4.7 0
27.3 71.0 68.0 64.1 58.9 52.2 43.5 33.1 21.8 11.9 4.7 0
27.2 70.7 67.7 63.9 58.7 52.0 43.4 33.1 21.8 11.9 4.7 0
27.1 70.4 67.5 63.6 58.5 51.9 43.4 33.1 21.7 11.9 4.7 0
27 70.1 67.2 63.4 58.4 51.8 43.3 33.0 21.7 11.9 4.7 0
26.5 69.8 66.9 63.2 58.2 51.6 43.2 33.0 21.7 11.9 4.7 0
26.4 69.5 66.7 62.9 58.0 51.5 43.1 33.0 21.7 11.9 4.7 0
26.3 69.2 66.4 62.7 57.8 51.3 43.0 32.9 21.7 11.9 4.7 0
26.2 68.9 66.1 62.5 57.6 51.2 42.9 32.9 21.7 11.9 4.7 0
26.1 68.6 65.9 62.2 57.4 51.1 42.8 32.8 21.7 11.9 4.7 0
26 68.3 65.6 62.0 57.2 50.9 42.8 32.8 21.7 11.9 4.7 0
25.5 68.0 65.3 61.7 57.0 50.8 42.7 32.8 21.7 11.9 4.7 0
25.4 67.7 65.0 61.5 56.8 50.6 42.6 32.7 21.7 11.9 4.7 0
25.3 67.4 64.8 61.3 56.6 50.5 42.5 32.7 21.7 11.9 4.7 0
25.2 67.1 64.5 61.0 56.4 50.3 42.4 32.6 21.7 11.9 4.7 0
25.1 66.8 64.2 60.8 56.2 50.2 42.3 32.6 21.7 11.9 4.7 0
25 66.5 63.9 60.5 56.0 50.0 42.2 32.6 21.6 11.9 4.7 0
24.5 66.2 63.6 60.3 55.8 49.8 42.1 32.5 21.6 11.9 4.7 0
24.4 65.9 63.3 60.0 55.6 49.7 42.0 32.5 21.6 11.9 4.7 0
24.3 65.6 63.1 59.8 55.4 49.5 41.9 32.4 21.6 11.9 4.7 0
24.2 65.2 62.8 59.5 55.2 49.4 41.8 32.4 21.6 11.9 4.7 0
24.1 64.9 62.5 59.3 54.9 49.2 41.7 32.3 21.6 11.9 4.7 0
24 64.6 62.2 59.0 54.7 49.0 41.6 32.3 21.6 11.9 4.7 0
23.5 64.3 61.9 58.7 54.5 48.9 41.5 32.2 21.6 11.9 4.7 0
23.4 64.0 61.6 58.5 54.3 48.7 41.4 32.2 21.6 11.9 4.7 0
23.3 63.7 61.3 58.2 54.1 48.5 41.2 32.1 21.6 11.9 4.7 0
23.2 63.3 61.0 58.0 53.8 48.4 41.1 32.1 21.5 11.9 4.7 0
23.1 63.0 60.7 57.7 53.6 48.2 41.0 32.0 21.5 11.9 4.7 0
23 62.7 60.4 57.4 53.4 48.0 40.9 32.0 21.5 11.9 4.7 0
22.5 62.4 60.1 57.2 53.2 47.9 40.8 31.9 21.5 11.9 4.7 0
22.4 62.0 59.8 56.9 52.9 47.7 40.7 31.8 21.5 11.9 4.7 0
22.3 61.7 59.5 56.6 52.7 47.5 40.6 31.8 21.5 11.9 4.7 0
22.2 61.4 59.2 56.3 52.5 47.3 40.4 31.7 21.5 11.9 4.7 0
22.1 61.0 58.9 56.1 52.3 47.1 40.3 31.7 21.4 11.9 4.7 0
22 60.7 58.6 55.8 52.0 47.0 40.2 31.6 21.4 11.9 4.7 0
21.5 60.4 58.3 55.5 51.8 46.8 40.1 31.5 21.4 11.9 4.7 0
21.4 60.0 58.0 55.2 51.5 46.6 40.0 31.5 21.4 11.9 4.7 0
21.3 59.7 57.7 55.0 51.3 46.4 39.8 31.4 21.4 11.9 4.7 0
21.2 59.3 57.3 54.7 51.1 46.2 39.7 31.4 21.4 11.9 4.7 0
21.1 59.0 57.0 54.4 50.8 46.0 39.6 31.3 21.3 11.9 4.7 0
21 58.7 56.7 54.1 50.6 45.8 39.4 31.2 21.3 11.9 4.7 0
20.5 58.3 56.4 53.8 50.3 45.6 39.3 31.1 21.3 11.9 4.7 0
20.4 58.0 56.1 53.5 50.1 45.4 39.2 31.1 21.3 11.9 4.7 0
20.3 57.6 55.7 53.2 49.8 45.2 39.0 31.0 21.3 11.9 4.7 0
20.2 57.3 55.4 52.9 49.6 45.0 38.9 30.9 21.2 11.9 4.7 0
20.1 56.9 55.1 52.6 49.3 44.8 38.8 30.9 21.2 11.9 4.7 0
20 56.6 54.8 52.4 49.1 44.6 38.6 30.8 21.2 11.9 4.7 0
19.5 56.2 54.4 52.1 48.8 44.4 38.5 30.7 21.2 11.9 4.7 0
19.4 55.9 54.1 51.8 48.6 44.2 38.3 30.6 21.2 11.9 4.7 0
19.3 55.5 53.8 51.5 48.3 44.0 38.2 30.6 21.1 11.9 4.7 0
19.2 55.1 53.4 51.1 48.0 43.8 38.0 30.5 21.1 11.9 4.7 0
19.1 54.8 53.1 50.8 47.8 43.6 37.9 30.4 21.1 11.9 4.7 0
19 54.4 52.8 50.5 47.5 43.4 37.7 30.3 21.1 11.9 4.7 0
18.5 54.1 52.4 50.2 47.2 43.2 37.6 30.2 21.0 11.9 4.7 0
18.4 53.7 52.1 49.9 47.0 42.9 37.4 30.1 21.0 11.9 4.7 0
18.3 53.3 51.7 49.6 46.7 42.7 37.3 30.0 21.0 11.9 4.7 0
18.2 52.9 51.4 49.3 46.4 42.5 37.1 30.0 21.0 11.9 4.7 0
18.1 52.6 51.0 49.0 46.1 42.3 36.9 29.9 20.9 11.9 4.7 0
18 52.2 50.7 48.6 45.9 42.0 36.8 29.8 20.9 11.9 4.7 0
17.5 51.8 50.3 48.3 45.6 41.8 36.6 29.7 20.9 11.9 4.7 0
17.4 51.5 50.0 48.0 45.3 41.6 36.4 29.6 20.8 11.9 4.7 0
17.3 51.1 49.6 47.7 45.0 41.3 36.3 29.5 20.8 11.9 4.7 0
17.2 50.7 49.3 47.4 44.7 41.1 36.1 29.4 20.8 11.9 4.7 0
17.1 50.3 48.9 47.0 44.4 40.9 35.9 29.3 20.7 11.9 4.7 0
17 49.9 48.5 46.7 44.1 40.6 35.8 29.2 20.7 11.9 4.7 0
16.5 49.5 48.2 46.4 43.8 40.4 35.6 29.1 20.7 11.9 4.7 0
16.4 49.2 47.8 46.0 43.6 40.1 35.4 29.0 20.6 11.9 4.7 0
16.3 48.8 47.5 45.7 43.3 39.9 35.2 28.9 20.6 11.9 4.7 0
16.2 48.4 47.1 45.4 43.0 39.6 35.0 28.8 20.5 11.9 4.7 0
16.1 48.0 46.7 45.0 42.7 39.4 34.8 28.6 20.5 11.8 4.7 0
16 47.6 46.3 44.7 42.3 39.1 34.7 28.5 20.5 11.8 4.7 0
15.5 47.2 46.0 44.3 42.0 38.9 34.5 28.4 20.4 11.8 4.7 0
15.4 46.8 45.6 44.0 41.7 38.6 34.3 28.3 20.4 11.8 4.7 0
15.3 46.4 45.2 43.6 41.4 38.4 34.1 28.2 20.3 11.8 4.7 0
15.2 46.0 44.8 43.3 41.1 38.1 33.9 28.1 20.3 11.8 4.7 0
15.1 45.6 44.5 42.9 40.8 37.8 33.7 27.9 20.2 11.8 4.7 0
15 45.2 44.1 42.6 40.5 37.6 33.5 27.8 20.2 11.8 4.7 0
14.5 44.8 43.7 42.2 40.2 37.3 33.3 27.7 20.1 11.8 4.7 0
14.4 44.4 43.3 41.8 39.8 37.0 33.1 27.5 20.1 11.8 4.7 0
14.3 44.0 42.9 41.5 39.5 36.8 32.8 27.4 20.0 11.8 4.7 0
14.2 43.5 42.5 41.1 39.2 36.5 32.6 27.3 20.0 11.8 4.7 0
14.1 43.1 42.1 40.8 38.9 36.2 32.4 27.1 19.9 11.8 4.7 0
14 42.7 41.7 40.4 38.5 35.9 32.2 27.0 19.9 11.8 4.7 0
13.5 42.3 41.3 40.0 38.2 35.6 32.0 26.9 19.8 11.8 4.7 0
13.4 41.9 40.9 39.6 37.9 35.3 31.8 26.7 19.7 11.8 4.7 0
13.3 41.5 40.5 39.3 37.5 35.0 31.5 26.6 19.7 11.7 4.7 0
13.2 41.0 40.1 38.9 37.2 34.8 31.3 26.4 19.6 11.7 4.7 0
13.1 40.6 39.7 38.5 36.8 34.5 31.1 26.3 19.5 11.7 4.7 0
13 40.2 39.3 38.1 36.5 34.2 30.8 26.1 19.5 11.7 4.7 0
12.5 39.8 38.9 37.7 36.1 33.9 30.6 25.9 19.4 11.7 4.7 0
12.4 39.3 38.5 37.4 35.8 33.6 30.4 25.8 19.3 11.7 4.7 0
12.3 38.9 38.1 37.0 35.4 33.2 30.1 25.6 19.3 11.7 4.7 0
12.2 38.5 37.7 36.6 35.1 32.9 29.9 25.5 19.2 11.7 4.7 0
12.1 38.0 37.2 36.2 34.7 32.6 29.6 25.3 19.1 11.6 4.7 0
12 37.6 36.8 35.8 34.3 32.3 29.4 25.1 19.0 11.6 4.7 0
11.5 37.1 36.4 35.4 34.0 32.0 29.1 24.9 18.9 11.6 4.7 0
11.4 36.7 36.0 35.0 33.6 31.7 28.8 24.8 18.9 11.6 4.7 0
11.3 36.2 35.5 34.6 33.2 31.3 28.6 24.6 18.8 11.6 4.7 0
11.2 35.8 35.1 34.2 32.9 31.0 28.3 24.4 18.7 11.6 4.7 0
11.1 35.3 34.7 33.8 32.5 30.7 28.0 24.2 18.6 11.5 4.7 0
11 34.9 34.2 33.4 32.1 30.4 27.8 24.0 18.5 11.5 4.7 0
10.5 34.4 33.8 32.9 31.7 30.0 27.5 23.8 18.4 11.5 4.7 0
10.4 34.0 33.4 32.5 31.4 29.7 27.2 23.6 18.3 11.5 4.7 0
10.3 33.5 32.9 32.1 31.0 29.3 26.9 23.4 18.2 11.5 4.7 0
10.2 33.1 32.5 31.7 30.6 29.0 26.6 23.2 18.1 11.4 4.7 0
10.1 32.6 32.0 31.3 30.2 28.6 26.4 23.0 18.0 11.4 4.7 0
10 32.1 31.6 30.8 29.8 28.3 26.1 22.8 17.9 11.4 4.7 0
9.5 31.7 31.1 30.4 29.4 27.9 25.8 22.6 17.7 11.4 4.7 0
9.4 31.2 30.7 30.0 29.0 27.6 25.5 22.3 17.6 11.3 4.7 0
9.3 30.7 30.2 29.6 28.6 27.2 25.2 22.1 17.5 11.3 4.7 0
9.2 30.3 29.8 29.1 28.2 26.8 24.9 21.9 17.4 11.3 4.7 0
9.1 29.8 29.3 28.7 27.8 26.5 24.5 21.7 17.2 11.2 4.7 0
9 29.3 28.9 28.2 27.4 26.1 24.2 21.4 17.1 11.2 4.7 0
8.5 28.8 28.4 27.8 26.9 25.7 23.9 21.2 17.0 11.1 4.7 0
8.4 28.3 27.9 27.3 26.5 25.3 23.6 20.9 16.8 11.1 4.7 0
8.3 27.9 27.5 26.9 26.1 25.0 23.3 20.7 16.7 11.1 4.7 0
8.2 27.4 27.0 26.4 25.7 24.6 22.9 20.4 16.5 11.0 4.7 0
8.1 26.9 26.5 26.0 25.3 24.2 22.6 20.2 16.4 11.0 4.7 0
8 26.4 26.0 25.5 24.8 23.8 22.3 19.9 16.2 10.9 4.7 0
7.5 25.9 25.6 25.1 24.4 23.4 21.9 19.6 16.0 10.9 4.7 0
7.4 25.4 25.1 24.6 24.0 23.0 21.6 19.4 15.9 10.8 4.7 0
7.3 24.9 24.6 24.1 23.5 22.6 21.2 19.1 15.7 10.7 4.7 0
7.2 24.4 24.1 23.7 23.1 22.2 20.9 18.8 15.5 10.7 4.7 0
7.1 23.9 23.6 23.2 22.6 21.8 20.5 18.5 15.3 10.6 4.7 0
7 23.4 23.1 22.7 22.2 21.4 20.1 18.2 15.2 10.5 4.7 0
6.5 22.9 22.6 22.3 21.7 20.9 19.8 17.9 15.0 10.5 4.7 0
6.4 22.4 22.1 21.8 21.3 20.5 19.4 17.6 14.8 10.4 4.7 0
6.3 21.9 21.6 21.3 20.8 20.1 19.0 17.3 14.6 10.3 4.7 0
6.2 21.4 21.1 20.8 20.3 19.7 18.6 17.0 14.4 10.2 4.7 0
6.1 20.8 20.6 20.3 19.9 19.2 18.2 16.7 14.1 10.1 4.7 0
6 20.3 20.1 19.8 19.4 18.8 17.8 16.4 13.9 10.1 4.6 0
5.5 19.8 19.6 19.3 18.9 18.3 17.4 16.0 13.7 10.0 4.6 0
5.4 19.3 19.1 18.8 18.5 17.9 17.0 15.7 13.5 9.8 4.6 0
5.3 18.8 18.6 18.3 18.0 17.4 16.6 15.4 13.2 9.7 4.6 0
5.2 18.2 18.1 17.8 17.5 17.0 16.2 15.0 13.0 9.6 4.6 0
5.1 17.7 17.5 17.3 17.0 16.5 15.8 14.7 12.7 9.5 4.6 0
5 17.2 17.0 16.8 16.5 16.1 15.4 14.3 12.5 9.4 4.6 0
4.5 16.6 16.5 16.3 16.0 15.6 15.0 13.9 12.2 9.2 4.6 0
4.4 16.1 16.0 15.8 15.5 15.1 14.5 13.6 11.9 9.1 4.6 0
4.3 15.6 15.4 15.3 15.0 14.7 14.1 13.2 11.6 8.9 4.6 0
4.2 15.0 14.9 14.7 14.5 14.2 13.6 12.8 11.3 8.8 4.5 0
4.1 14.5 14.4 14.2 14.0 13.7 13.2 12.4 11.0 8.6 4.5 0
4 13.9 13.8 13.7 13.5 13.2 12.7 12.0 10.7 8.4 4.5 0
3.5 13.4 13.3 13.2 13.0 12.7 12.3 11.6 10.4 8.3 4.5 0
3.4 12.8 12.7 12.6 12.5 12.2 11.8 11.2 10.1 8.1 4.4 0
3.3 12.3 12.2 12.1 11.9 11.7 11.3 10.8 9.7 7.9 4.4 0
3.2 11.7 11.6 11.5 11.4 11.2 10.9 10.3 9.4 7.7 4.3 0
3.1 11.1 11.1 11.0 10.9 10.7 10.4 9.9 9.0 7.4 4.3 0
3 10.6 10.5 10.4 10.3 10.2 9.9 9.5 8.7 7.2 4.2 0
2.5 10.0 10.0 9.9 9.8 9.6 9.4 9.0 8.3 6.9 4.2 0
2.4 9.4 9.4 9.3 9.3 9.1 8.9 8.5 7.9 6.7 4.1 0
2.3 8.9 8.8 8.8 8.7 8.6 8.4 8.1 7.5 6.4 4.0 0
2.2 8.3 8.3 8.2 8.2 8.0 7.9 7.6 7.1 6.1 3.9 0
2.1 7.7 7.7 7.7 7.6 7.5 7.4 7.1 6.7 5.8 3.8 0
2 7.2 7.1 7.1 7.0 7.0 6.8 6.6 6.2 5.5 3.7 0
1.5 6.6 6.5 6.5 6.5 6.4 6.3 6.1 5.8 5.1 3.6 0
1.4 6.0 6.0 5.9 5.9 5.9 5.8 5.6 5.3 4.8 3.4 0
1.3 5.4 5.4 5.4 5.3 5.3 5.2 5.1 4.9 4.4 3.2 0
1.2 4.8 4.8 4.8 4.8 4.7 4.7 4.6 4.4 4.0 3.0 0
1.1 4.2 4.2 4.2 4.2 4.2 4.1 4.0 3.9 3.6 2.8 0
1 3.6 3.6 3.6 3.6 3.6 3.5 3.5 3.4 3.2 2.5 0
0.5 3.0 3.0 3.0 3.0 3.0 3.0 2.9 2.9 2.7 2.2 0
0.4 2.4 2.4 2.4 2.4 2.4 2.4 2.4 2.3 2.2 1.9 0
0.3 1.8 1.8 1.8 1.8 1.8 1.8 1.8 1.8 1.7 1.5 0
0.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.1 0
0.1 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0];
n1=input('number of interruption in the first innnings: ');
%Now we will check whether this input is valid or not.
%This number cant be a fraction and less than zero.
shakib1=round(n1);
mushfiq1=(n1-shakib1);
if mushfiq1>=0
mashrafee1=shakib1;
else
mashrafee1=shakib1-1;
end
tamim1=mashrafee1; %This is the integer part from the given number.
if tamim1~=n1
disp('Your input is invalid. The number of interruptins cant be a fraction.');
else
if n1<0
disp('The input is invalid. The number of interruptions cant be negative.');
else
%The input is valid. Now we may proceed.
if n1==0
%There is no interruption in the first innings.
Total_Resource1=100; %Total amount of resources available in an innings is always 100.
fprintf('\n');
x=input('First innings score: ');
%Now we will check whether this score is valid or not.
%This score cant be a fraction and less than zero
shakib2=round(x);
mushfiq2=(x-shakib2);
if mushfiq2>=0
mashrafee2=shakib2;
else
mashrafee2=shakib2-1;
end
tamim2=mashrafee2; %This is the integer part from the given score.
if tamim2~=x
disp('Your input is invalid. Any cricket match score cant be a fraction.');
else
if x<0
disp('Your input is invalid. Any cricket match score cant be negative.');
else
%The score is valid. Now we may proceed.
fprintf('\n');
n2=input('number of interruptions in the second innings: ');
%Now we will check whether this input is valid or not.
%This number cant be a fraction and less than zero.
shakib3=round(n2);
mushfiq3=(n2-shakib3);
if mushfiq3>=0
mashrafee3=shakib3;
else
mashrafee3=shakib3-1;
end
tamim3=mashrafee3; %This is the integer part from the given number.
if tamim3~=n2
disp('Your input is invalid. The number of interruptins cant be a fraction.');
else
if n2<0
disp('your input is invalid. The number of interruptions cant be negative.');
else
%The input is valid. Now we may proceed.
if n2==0
%There is no interruption in the second innings too.
Second_innings_target=x+1;
fprintf('\n');
fprintf('Second team needs %d runs in 50 overs.\n',Second_innings_target);
else
%There is interruptions in the second innings.
%Now you have to give data about the interruptions.
%Then the programme will check whether this data are valid or not.
%Number of overs cant be a fraction, cant be less than 0 or more than 50.
%Number of balls cant be a fraction, cant be less than 0 or more than 6.
%Number of wickets cant be a fraction, cant be less than 0 or more than 10.
%Over at the time of an interruption cant be less than that of previous one
%Similarly reduced total number of overs cant be more than the earlier one.
%And any reduced total overs cant be less than that during the interruption
%Wickets lost during an interruption cant be less than the previous one.
%Any score cant be a fraction or less than zero.
%If any above mentioned faults are found,
%The program will show that and wont show any output.
%Here are some variables that change their values if any input is invalid.
aa2=1;
aaa2=1;
aaaa2=1;
bb2=1;
bbb2=1;
bbbb2=1;
ss2=1;
sss2=1;
ss22=1;
ww2=1;
www2=1;
ww12=1;
cc2=1;
ccc2=1;
cccc2=1;
dd2=1;
ddd2=1;
dddd2=1;
cd2=1;
pq2=1;
pp2=1;
qq2=1;
ssss2=1;
wwww2=1;
for ii=1:n2
fprintf('\n');
fprintf('Interruption %d:',ii);
fprintf('\n');
num=input('Over during which the match is interrupted: ');
Aa(ii,1)=floor(num);
shakib31=round(Aa(ii,1));
mushfiq31=(Aa(ii,1)-shakib31);
if mushfiq31>=0
mashrafee31=shakib31;
else
mashrafee31=shakib31-1;
end
tamim31=mashrafee31; %This is the integer part from the given number of overs.
if tamim31~=Aa(ii,1)
aa2=aa2+1;
end
if Aa(ii,1)<0
aaa2=aaa2+1;
end
if Aa(ii,1)>=50
aaaa2=aaaa2+1;
end
fractionalPart11 = num - Aa(ii,1);
Bb(ii,1) = round(fractionalPart11 * 10);
shakib30=round(Bb(ii,1));
mushfiq30=(Bb(ii,1)-shakib30);
if mushfiq30>=0
mashrafee30=shakib30;
else
mashrafee30=shakib30-1;
end
tamim30=mashrafee30; %This is the integer part from the given number of balls.
if tamim30~=Bb(ii,1)
bb2=bb2+1;
end
if Bb(ii,1)<0
bbb2=bbb2+1;
end
if Bb(ii,1)>6
bbbb2=bbbb2+1;
end
Ss(ii,1)=input('score of the second team at that time: ');
shakib6=round(Ss(ii,1));
mushfiq6=(Ss(ii,1)-shakib6);
if mushfiq6>=0
mashrafee6=shakib6;
else
mashrafee6=shakib6-1;
end
tamim6=mashrafee6; %This is the integer part from the given score.
if tamim6~=Ss(ii,1)
ss2=ss2+1;
end
if Ss(ii,1)<0
sss2=sss2+1;
end
if Ss(ii,1)>x
ss22=ss22+1;
end
Ww1(ii,1)=input('Wickets fallen at that time: ');
shakib7=round(Ww1(ii,1));
mushfiq7=(Ww1(ii,1)-shakib7);
if mushfiq7>=0
mashrafee7=shakib7;
else
mashrafee7=shakib7-1;
end
tamim7=mashrafee7; %This is the integer part from the given number of wickets.
if tamim7~=Ww1(ii,1)
ww2=ww2+1;
end
if Ww1(ii,1)<0
www2=www2+1;
end
if Ww1(ii,1)>=10
ww12=ww12+1;
end
num2=input('Reduced total overs after the match restarts: ');
Cc(ii,1)=floor(num2);
shakib32=round(Cc(ii,1));
mushfiq32=(Cc(ii,1)-shakib32);
if mushfiq32>=0
mashrafee32=shakib32;
else
mashrafee32=shakib32-1;
end
tamim32=mashrafee32; %This is the integer part from the given number of overs.
if tamim32~=Cc(ii,1)
cc2=cc2+1;
end
if Cc(ii,1)<0
ccc2=ccc2+1;
end
if Cc(ii,1)>=50
cccc2=cccc2+1;
end
fractionalPart12 = num2 - Cc(ii,1);
Dd(ii,1) = round(fractionalPart12 * 10);
shakib33=round(Dd(ii,1));
mushfiq33=(Dd(ii,1)-shakib33);
if mushfiq33>=0
mashrafee33=shakib33;
else
mashrafee33=shakib33-1;
end
tamim33=mashrafee33; %This is the integer part from the given number of balls.
if tamim33~=Dd(ii,1)
dd2=dd2+1;
end
if Dd(ii,1)<0
ddd2=ddd2+1;
end
if Dd(ii,1)>6
dddd2=dddd2+1;
end
end
for jj=1:n2
Pp(jj)=6*Aa(jj,1)+Bb(jj,1); %Total nunber of balls bowled before the inturreption.
Qq(jj)=6*Cc(jj,1)+Dd(jj,1); %Total nunber of balls to be bowled in the innings.
end
for abc=1:n2
if Pp(abc)>Qq(abc)
pq2=pq2+1;
end
end
for acd=2:n2
if Pp(acd)<Pp(acd-1)
pp2=pp2+1;
end
if Qq(acd)>Qq(acd-1)
qq2=qq2+1;
end
if Ss(acd,1)<Ss(acd-1,1)
ssss2=ssss2+1;
end
if Ww1(acd,1)<Ww1(acd-1,1)
wwww2=wwww2+1;
end
end
if aa2~=1
fprintf('Your input is invalid. Number of overs cant be a fraction. You have used invalid input %d times.\n',(aa2-1));
else
if aaa2~=1
fprintf('Your input is invalid. Number of overs cant be less than zero. You have used invalid input %d times.\n',(aaa2-1));
else
if aaaa2~=1
fprintf('Your input is invalid. Number of overs cant be more than fifty. You have used invalid input %d times.\n',(aaaa2-1));
else
if bb2~=1
fprintf('Your input is invalid. Number of balls in an over cant be a fraction. You have used invalid input %d times.\n',(bb2-1));
else
if bbb2~=1
fprintf('Your input is invalid. Number of balls in an over cant be less than zero. You have used invalid input %d times.\n',(bbb2-1));
else
if bbbb2~=1
fprintf('Your input is invalid. Number of balls in an over cant be more than six. You have used invalid input %d times.\n',(bbbb2-1));
else
if ss2~=1
fprintf('Your input is invalid. The score during the interruption cant be a fraction. You have used invalid input %d times.\n',(ss2-1));
else
if sss2~=1
fprintf('Your input is invalid. The score during the interruption cant be less than zero. You have used invalid input %d times.\n',(sss2-1));
else
if ss22~=1
fprintf('Your input is invalid. Any score during the interruption cant be more than first innings score. You have used invalid input %d times.\n',(ss22-1));
else
if ssss2~=1
fprintf('Your input is invalid. The score during any interruption cant be less than the one during previous interruption. You have used invalid input %d times.\n',(sss2-1));
else
if ww2~=1
fprintf('Your input is invalid. The wickets fallen cant be a fraction. You have used invalid input %d times.\n',(ww2-1));
else
if www2~=1
fprintf('Your input is invalid. The wickets fallen cant be less than zero. You have used invalid input %d times.\n',(www2-1));
else
if wwww2~=1
fprintf('Your input is invalid. The wickets fallen during any interruption cant be less than the previous one. You have used invalid input %d times.\n',(wwww2-1));
else
if ww12~=1
fprintf('Your input is invalid. The wickets fallen cant be more than ten. You have used invalid input %d times.\n',(ww12-1));
else
if cc2~=1
fprintf('Your input is invalid. Number of overs cant be a fraction. You have used invalid input %d times.\n',(cc2-1));
else
if ccc2~=1
fprintf('Your input is invalid. The reduced number of overs cant be less than zero. You have used invalid input %d times.\n',(ccc2-1));
else
if cccc2~=1
fprintf('Your input is invalid. The reduced number of overs cant be more than fifty. You have used invalid input %d times.\n',(cccc2-1));
else
if dd2~=1
fprintf('Your input is invalid. Number of balls in an over cant be a fraction. You have used invalid input %d times.\n',(dd2-1));
else
if ddd2~=1
fprintf('Your input is invalid. The number of balls in the last over cant be less than zero. You have used invalid input %d times.\n',(ddd2-1));
else
if dddd2~=1
fprintf('Your input is invalid. The number of balls in the last over cant be more than six. You have used invalid input %d times.\n',(dddd2-1));
else
if pq2~=1
fprintf('Your input is invalid. The reduced number of total overs cant be less than where the interruption occured. You have used invalid input %d times.\n',(pq2-1));
else
if pp2~=1
fprintf('Your input is invalid. The over during an interruption cant be less than the previous one. You have used invalid input %d times.\n',(pp2-1));
else
if qq2~=1
fprintf('Your input is invalid. The reduced number of total overs due to an interruption cant be more than the previous one. You have used invalid input %d times.\n',(qq2-1));
else
if Qq(n2)<120
disp('No result, The match is abandoned. It needs atleast 20 overs in each innings to complete a match.');
else
%The given data are valid. Now we may proceed.
Ee(1)=Pp(1);
for kk=2:n2
Ee(kk)=300-Qq(kk-1)+Pp(kk); %Total number of played overs and lost overs before the kk_th interruption.
end
Ff(1)=300-Qq(1)+Ee(1);
for ll=2:n2
Ff(ll)=Qq(ll-1)-Qq(ll)+Ee(ll); %Total number of played overs and lost overs after the kk_th interruption.
end
for mm=1:n2
RR2(mm)=DL_Table((Ee(mm)+1),(Ww1(mm,1)+2))-DL_Table((Ff(mm)+1),(Ww1(mm,1)+2));
%(Ee(mm)+1) denotes the row number of the DL table
%And (Ww1(mm)+2) denotes the column number of the DL table
%Which shows the total resource available before the mm_th interruption.
%(Ff(mm)+1) denotes the row number of the DL table
%And (Ww1(mm)+2) denotes the column number of the DL table
%Which shows the total resource available after the mm_th interruption.
% Therefore RR2(mm) denotes the amount of resource lost due to the mm_th interruption.
end
Total_Resource2=100-sum(RR2); %Total amount of resources used by the team batting second.
zzz=((x/Total_Resource1)*Total_Resource2); %This is the formula used to calculte D\L par score of the team batting second when resources used in the second innings is less that of the first innings. 
shakib10=round(zzz);
mushfiq10=(zzz-shakib10);
if mushfiq10>=0
mashrafee10=shakib10;
else
mashrafee10=shakib10-1;
end
tamim10=mashrafee10; %The integer part of the D\L score.
DL_Par_Score=tamim10; %This is the real D\L score as any cricket match score is always an integer.
Second_innings_target=DL_Par_Score+1;
if Pp(n2)==Qq(n2)
%The match couldnot restart after an interruption and is declared finished.
%Now we have to find out the result.
Difference=DL_Par_Score-Ss(n2); %The difference of the D\L par scores during that interruption.
if Difference>0
%Won by the team batted first.
fprintf('First team won by %d runs(D/L). DL Par Score of the first team is %d.\n',Difference,DL_Par_Score);
else
if Difference==0
%The scores are equal.
fprintf('Match Tied. The scores are level, %d each(D/L).\n',DL_Par_Score);
else
%Won by the team batted second.
ddd=Difference*(-1); %The difference is negative. So we have to make it positive.
fprintf('Second team won by %d runs(D/L). DL Par Score of the first team is %d.\n',ddd,DL_Par_Score);
end
end
else
%The match is not finished yet and restarts now.
ttt=Second_innings_target-Ss(n2); %Runs which the batting team requires still.
bbb=Qq(n2)-Pp(n2); %Number of balls remaining in their hand.
fprintf('Target for second team is %d runs in %d.%d overs(D/L). Still they need %d more runs to win in %d balls.\n',Second_innings_target,Cc(n2,1),Dd(n2,1),ttt,bbb);
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
else
%There is interruptions in the first innings.
%Now you have to give data about the interruptions.
%Then the programme will check whether this data are valid or not.
%Number of overs cant be a fraction, cant be less than 0 or more than 50.
%Number of balls cant be a fraction, cant be less than 0 or more than 6.
%Number of wickets cant be a fraction, cant be less than 0 or more than 10.
%Over at the time of an interruption cant be less than that of previous one
%Similarly reduced total number of overs cant be more than the earlier one.
%And any reduced total overs cant be less than that during the interruption
%Wickets lost during an interruption cant be less than the previous one.
%Any score cant be a fraction or less than zero.
%If any above mentioned faults are found,
%The program will show that and will not show any output.
%Here are some variables that change their values if any input is invalid.
aa1=1;
aaa1=1;
aaaa1=1;
bb1=1;
bbb1=1;
bbbb1=1;
ww1=1;
www1=1;
ww11=1;
cc1=1;
ccc1=1;
cccc1=1;
dd1=1;
ddd1=1;
dddd1=1;
pq1=1;
pp1=1;
qq1=1;
ssss1=1;
wwww1=1;
for i=1:n1
fprintf('\n');
fprintf('Interruption %d:\n',i);
over=input('Over during which the match is interrupted: ');
A(i,1) = floor(over);
shakib34=round(A(i,1));
mushfiq34=(A(i,1)-shakib34);
if mushfiq34>=0
mashrafee34=shakib34; 
else
mashrafee34=shakib34-1;
end
tamim34=mashrafee34; %The integer part of the given number of overs.
if tamim34~=A(i,1)
aa1=aa1+1;
end
if A(i,1)<0
aaa1=aaa1+1;
end
if A(i,1)>=50
aaaa1=aaaa1+1;
end
fractionalPart = over - A(i,1);
B(i,1) = round(fractionalPart * 10);
shakib35=round(B(i,1));
mushfiq35=(B(i,1)-shakib35);
if mushfiq35>=0
mashrafee35=shakib35;
else
mashrafee35=shakib35-1; %The integer part of the given number of balls.
end
tamim35=mashrafee35;
if tamim35~=B(i,1)
bb1=bb1+1;
end
if B(i,1)<0
bbb1=bbb1+1;
end
if B(i,1)>6
bbbb1=bbbb1+1;
end
W1(i,1)=input('Wickets fallen at that time: ');
shakib13=round(W1(i,1));
mushfiq13=(W1(i,1)-shakib13);
if mushfiq13>=0
mashrafee13=shakib13;
else
mashrafee13=shakib13-1;
end
tamim13=mashrafee13; %The integer part of the given number of wickets.
if tamim13~=W1(i,1)
ww1=ww1+1;
end
if W1(i,1)<0
www1=www1+1;
end
if W1(i,1)>=10
ww11=ww11+1;
end
over2=input('Reduced total overs after the match restarts: ');
C(i,1)=floor(over2);
shakib40=round(C(i,1));
mushfiq40=(C(i,1)-shakib40);
if mushfiq40>=0
mashrafee40=shakib40;
else
mashrafee40=shakib40-1;
end
tamim40=mashrafee40; %The integer part of the given number of overs.
if tamim40~=C(i,1)
cc1=cc1+1;
end
if C(i,1)<0
ccc1=ccc1+1;
end
if C(i,1)>=50
cccc1=cccc1+1;
end
fractionalPart2 = over2 - C(i,1);
D(i,1) = round(fractionalPart2 * 10);
shakib41=round(D(i,1));
mushfiq41=(D(i,1)-shakib41);
if mushfiq41>=0
mashrafee41=shakib41;
else
mashrafee41=shakib41-1;
end
tamim41=mashrafee41; %The integer part of the given number of balls.
if tamim41~=D(i,1)
dd1=dd1+1;
end
if D(i,1)<0
ddd1=ddd1+1;
end
if D(i,1)>6
dddd1=dddd1+1;
end
end
for j=1:n1
P(j)=6*A(j,1)+B(j,1); %Total number of balls bowled before an interruption.
Q(j)=6*C(j,1)+D(j,1); %Total number of balls bowled after an interruption.
end
for abcd=1:n1
if P(abcd)>Q(abcd)
pq1=pq1+1;
end
end
for abcde=2:n1
if P(abcde)<P(abcde-1)
pp1=pp1+1;
end
if Q(abcde)>Q(abcde-1)
qq1=qq1+1;
end
if W1(abcde,1)<W1(abcde-1,1)
wwww1=wwww1+1;
end
end
if aa1~=1
fprintf('Your input is invalid. Number of overs cant be a fraction. You have used invalid input %d times.\n',(aa1-1));
else
if aaa1~=1
fprintf('Your input is invalid. Number of overs cant be less than zero. You have used invalid input %d times.\n',(aaa1-1));
else
if aaaa1~=1
fprintf('Your input is invalid. Number of overs cant be more than fifty. You have used invalid input %d times.\n',(aaaa1-1));
else
if bb1~=1
fprintf('Your input is invalid. Number of bowls in an over cant be a fraction. You have used invalid input %d times.\n',(bb1-1));
else
if bbb1~=1
fprintf('Your input is invalid. Number of balls in an over cant be less than zero. You have used invalid input %d times.\n',(bbb1-1));
else
if bbbb1~=1
fprintf('Your input is invalid. Number of balls in an over cant be more than six. You have used invalid input %d times.\n',(bbbb1-1));
else
if ww1~=1
fprintf('Your input is invalid. The wickets fallen cant be a fraction. You have used invalid input %d times.\n',(ww1-1));
else
if www1~=1
fprintf('Your input is invalid. The wickets fallen cant be less than zero. You have used invalid input %d times.\n',(www1-1));
else
if wwww1~=1
fprintf('Your input is invalid. The wickets fallen during any interruption cant be less than the previous one. You have used invalid input %d times.\n',(wwww1-1));
else
if ww11~=1
fprintf('Your input is invalid. The wickets fallen cant be more than ten. You have used invalid input %d times.\n',(ww11-1));
else
if cc1~=1
fprintf('Your input is invalid. Number of total overs cant be a fraction. You have used invalid input %d times.\n',(cc1-1));
else
if ccc1~=1
fprintf('Your input is invalid. The reduced number of overs cant be less than zero. You have used invalid input %d times.\n',(ccc1-1));
else
if cccc1~=1
fprintf('Your input is invalid. The reduced number of overs cant be more than fifty. You have used invalid input %d times.\n',(cccc1-1));
else
if dd1~=1
fprintf('Your input is invalid. Number of balls in the last over cant be a fraction. You have used invalid input %d times.\n',(dd1-1));
else
if ddd1~=1
fprintf('Your input is invalid. The number of balls in the last over cant be less than zero. You have used invalid input %d times.\n',(ddd1-1));
else
if dddd1~=1
fprintf('Your input is invalid. The number of balls in the last over cant be more than six. You have used invalid input %d times.\n',(dddd1-1));
else
if pq1~=1
fprintf('Your input is invalid. The reduced total number of overs cant be less than where the interruption occured. You have used invalid input %d times.\n',(pq1-1));
else
if pp1~=1
fprintf('Your input is invalid. The over during an interruption cant be less than the previous one. You have used invalid input %d times.\n',(pp1-1));
else
if qq1~=1
fprintf('Your input is invalid. The reduced number of total overs due to an interruption cant be more than the previous one. You have used invalid input %d times.\n',(qq1-1));
else
if Q(n1)<120
disp('No result, The match is abandoned. It needs atleast 20 overs in each innings to complete a match.');
else
%The given data are valid. Now we may proceed.
E(1)=P(1);
for k=2:n1
E(k)=300-Q(k-1)+P(k); %Total number of played overs and lost overs before k_th interruption.
end
F(1)=300-Q(1)+E(1); 
for l=2:n1
F(l)=Q(l-1)-Q(l)+E(l); %Total number of played overs and lost overs after k_th interruption.
end
for m=1:n1
RR1(m)=DL_Table((E(m)+1),(W1(m,1)+2))-DL_Table((F(m)+1),(W1(m,1)+2));
%(E(m)+1) denotes the row number of the DL table
%And (W1(k)+2) denotes the column number of the DL table
%Which shows the total resource available before the m_th interruption.
%(F(m)+1) denotes the row number of the DL table
%And (W1(m)+2) denotes the column number of the DL table
%Which shows the total resource available after the m_th interruption.
% Therefore RR1(m) denotes the amount of resource lost due to the mm_th interruption.
end
Total_Resource1=100-sum(RR1); %Total amount of resources used by the team batted first.
fprintf('\n');
x=input('First innings score: ');
%Now it will be checked whether this score is valid or not.
%It cant be a fraction and cant be less than zero.
shakib16=round(x);
mushfiq16=(x-shakib16);
if mushfiq16>=0
mashrafee16=shakib16;
else
mashrafee16=shakib16-1;
end
tamim16=mashrafee16; %The integer part of the score.
if tamim16~=x
disp('Your input is invalid. Any cricket match score cant be a fraction.');
else
if x<0
disp('Your input is invalid. Any cricket match score cant be negative.');
else
%The score is valid. Now we may proceed.
fprintf('\n');
n2=input('number of interruptions in the second innings: ');
%Now it will be checked whether this input is valid or not.
%It cant be a fraction and cant be less than zero.
shakib17=round(n2);
mushfiq17=(n2-shakib17);
if mushfiq17>=0
mashrafee17=shakib17;
else
mashrafee17=shakib17-1;
end
tamim17=mashrafee17; %The integer part of the number.
if tamim17~=n2
disp('Your input is invalid. The number of interruptions cant be a fraction.');
else
if n2<0
disp('Your input is invalid. The number of interruptions cant be negative.');
else
%The input is valid. We may proceed.
if n2==0
%There is no interruption in the second innings.
% But if there is no interruption in the second innings, the total number of overs available in the second innings is equal to that played in the first innings.
r=301-Q(n1);
rr=DL_Table(r,2);
%301-Q1 denotes the row number of the D\L table.
%And as they have all 10 wickets at the start, the column number is 2.
%Which shows the total resources used in the second innings.
Total_Resource2=rr;
if Total_Resource2>Total_Resource1
fprintf('\n');
y=input('G50 of the ground: ');
%G50 is required only when resources used in the first innings is less than
%that of the second innings.
%It is the average first innings ODI score of the particular ground.
%Now we have to check whether it is valid or not.
%It cant be a fraction and cant be less than zero.
shakib18=round(y);
mushfiq18=(y-shakib18);
if mushfiq18>=0
mashrafee18=shakib18;
else
mashrafee18=shakib18-1;
end
tamim18=mashrafee18; %Integer part of the G50.
if tamim18~=y
disp('Your input is invalid. Any cricket match G50 cant be a fraction.');
else
if y<0
disp('Your input is invalid. Any cricket match G50 cant be negative.');
else
%The given G50 is valid.
z=(((Total_Resource2-Total_Resource1)/100)*y)+x;
%The formula used to calculate D\L par score of the team batted first
%When resources used by them is less than that of the team batted second.
shakib19=round(z);
mushfiq19=(z-shakib19);
if mushfiq19>=0
mashrafee19=shakib19;
else
mashrafee19=shakib19-1;
end
tamim19=mashrafee19; %Integer part of the D\L score of the team batted first.
mmm=tamim19; %This is the real D\L score of the team batted first, as a cricket match score is always an integer.
Second_innings_target=mmm+1; %To win the match the second team must score at least one run more than the first team.
nnn=C(n1,1); %Total number of overs available in their innings.
ooo=D(n1,1); %Balls to be bowled in the last over.
fprintf('Target for second team is %d runs in %d.%d overs(D/L).\n',Second_innings_target,nnn,ooo);
end
end
else
z=((x/Total_Resource1)*Total_Resource2);
%The formula used to calculate D\L par score of the team batted first
%When resources used by them is more than that of the team batted second.
shakib20=round(z);
mushfiq20=(z-shakib20);
if mushfiq20>=0
mashrafee20=shakib20;
else
mashrafee20=shakib20-1;
end
tamim20=mashrafee20; %Integer part of the D\L score of the team batted first.
mmm=tamim20; %This is the real D\L score of the team batted first, as a cricket match score is always an integer.
Second_innings_target=mmm+1; %To win the match the second team must score one run more.
nnn=C(n1,1); %Total number of overs available in their innings.
ooo=D(n1,1); %Balls to be bowled in the last over.
fprintf('Target for second team is %d runs in %d.%d overs(D/L).\n',Second_innings_target,nnn,ooo);
end 
else
%There is interruptions in the second innings.
%Now you have to give data about the interruptions.
%Then the programme will check whether these data are valid or not.
%Number of overs cant be a fraction, cant be less than 0 or more than 50.
%Number of balls cant be a fraction, cant be less than 0 or more than 6.
%Number of wickets cant be a fraction, cant be less than 0 or more than 10.
%Over at the time of an interruption cant be less than that of previous one
%Similarly reduced total number of overs cant be more than the earlier one.
%And any reduced total overs cant be less than that during the interruption
%Wickets lost during an interruption cant be less than the previous one.
%Any score cant be a fraction or less than zero.
%If any above mentioned faults are found,
%The program will show that and will not show any output.
%Here are some variables that change their values if any input is invalid.
aa2=1;
aaa2=1;
aaaa2=1;
bb2=1;
bbb2=1;
bbbb2=1;
ss2=1;
sss2=1;
ss22=1;
ww2=1;
www2=1;
ww12=1;
cc2=1;
ccc2=1;
cccc2=1;
dd2=1;
ddd2=1;
dddd2=1;
cd2=1;
pq2=1;
pp2=1;
qq2=1;
ssss2=1;
wwww2=1;
%When there is any interruption in the first innings, 
%The total over in the second innings is equal to the reduced total over
%Of the first innings.
%Therefore tha data of the first interruption of the second innings
%Will be like this.
Aa(1,1)=0; %Over during the first interruption.
Bb(1,1)=0; %Balls bowled in that over.
Ww1(1,1)=0; %Wickets lost during the first interruption.
Cc(1,1)=C(n1,1); %Reduced total overs after the first interruption.
Dd(1,1)=D(n1,1); %Balls to be bowled in the last over.
%Now you have to give data about the next interruptions.
for ii=2:n2+1
fprintf('\n');
fprintf('Interruption %d:',ii-1);
fprintf('\n');
over3=input('Over during which the match is interrupted: ');
Aa(ii,1)=floor(over3);
shakib55=round(Aa(ii,1));
mushfiq55=(Aa(ii,1)-shakib55);
if mushfiq55>=0
mashrafee55=shakib55;
else
mashrafee55=shakib55-1; %Integer part of the over.
end
tamim55=mashrafee55;
if tamim55~=Aa(ii,1)
aa2=aa2+1;
end
if Aa(ii,1)<0
aaa2=aaa2+1;
end
if Aa(ii,1)>=50
aaaa2=aaaa2+1;
end
fractionalPart3 = over3 - Aa(ii,1);
Bb(ii,1) = round(fractionalPart3 * 10);
shakib60=round(Bb(ii,1));
mushfiq60=(Aa(ii,1)-shakib60);
if mushfiq60>=0
mashrafee60=shakib60;
else
mashrafee60=shakib60-1;
end
tamim60=mashrafee60; %Integer part of the number of balls.
if tamim60~=Bb(ii,1)
bb2=bb2+1;
end
if Bb(ii,1)<0
bbb2=bbb2+1;
end
if Bb(ii,1)>6
bbbb2=bbbb2+1;
end
Ss(ii,1)=input('score of the second team at that time: ');
shakib23=round(Ss(ii,1));
mushfiq23=(Ss(ii,1)-shakib23);
if mushfiq23>=0
mashrafee23=shakib23;
else
mashrafee23=shakib23-1;
end
tamim23=mashrafee23; %Integer part of the score.
if tamim23~=Ss(ii,1)
ss2=ss2+1;
end
if Ss(ii,1)<0
sss2=sss2+1;
end
if Ss(ii,1)>x
ss22=ss22+1;
end
Ww1(ii,1)=input('Wickets fallen at that time: ');
shakib24=round(Ww1(ii,1));
mushfiq24=(Ww1(ii,1)-shakib24);
if mushfiq24>=0
mashrafee24=shakib24;
else
mashrafee24=shakib24-1;
end
tamim24=mashrafee24; %Integer part of the wickets fallen.
if tamim24~=Ww1(ii,1)
ww2=ww2+1;
end
if Ww1(ii,1)<0
www2=www2+1;
end
if Ww1(ii,1)>=10
ww12=ww12+1;
end
over4=input('Reduced total overs after the match restarts: ');
Cc(ii,1)=floor(over4);
shakib75=round(Cc(ii,1));
mushfiq75=(Cc(ii,1)-shakib75);
if mushfiq75>=0
mashrafee75=shakib75;
else
mashrafee75=shakib75-1;
end
tamim75=mashrafee75; %Integer part of the over.
if tamim75~=Cc(ii,1)
cc2=cc2+1;
end
if Cc(ii,1)<0
ccc2=ccc2+1;
end
if Cc(ii,1)>=50
cccc2=cccc2+1;
end
fractionalPart4 = over4 - Cc(ii,1);
Dd(ii,1) = round(fractionalPart4 * 10);
shakib100=round(Dd(ii,1));
mushfiq100=(Dd(ii,1)-shakib100);
if mushfiq100>=0
mashrafee100=shakib100;
else
mashrafee100=shakib100-1;
end
tamim100=mashrafee100; %Integer part of the number of balls.
if tamim100~=Dd(ii,1)
dd2=dd2+1;
end
if Dd(ii,1)<0
ddd2=ddd2+1;
end
if Dd(ii,1)>6
dddd2=dddd2+1;
end
if ((6*Cc(ii,1))+Dd(ii,1))>300
cd2=cd2+1;
end
end
for jj=1:n2+1
Pp(jj)=6*Aa(jj,1)+Bb(jj,1); %Total number of balls bowled before tha interruption.
Qq(jj)=6*Cc(jj,1)+Dd(jj,1); %Reduced total number of balls to be bowled due to the interruption.
end
for abc=2:n2+1
if Pp(abc)>Qq(abc)
pq2=pq2+1;
end
if Pp(abc)<Pp(abc-1)
pp2=pp2+1;
end
if Qq(abc)>Qq(abc-1)
qq2=qq2+1;
end
if Ss(abc,1)<Ss(abc-1,1)
ssss2=ssss2+1;
end
if Ww1(abc,1)<Ww1(abc-1,1)
wwww2=wwww2+1;
end
end
if aa2~=1
fprintf('Your input is invalid. Number of overs cant be a fraction. You have used invalid input %d times.\n',(aa2-1));
else
if aaa2~=1
fprintf('Your input is invalid. Number of overs cant be less than zero. You have used invalid input %d times.\n',(aaa2-1));
else
if aaaa2~=1
fprintf('Your input is invalid. Number of overs cant be more than fifty. You have used invalid input %d times.\n',(aaaa2-1));
else
if bb2~=1
fprintf('Your input is invalid. Number of balls in an over cant be a fraction. You have used invalid input %d times.\n',(bb2-1));
else
if bbb2~=1
fprintf('Your input is invalid. Number of balls in an over cant be of more than one digit. You have used invalid input %d times.\n',(bbb2-1));
else
if bbbb2~=1
fprintf('Your input is invalid. Number of balls in an over cant be more than six. You have used invalid input %d times.\n',(bbbb2-1));
else
if ss2~=1;
fprintf('Your input is invalid. The score during the interruption cant be a fraction. You have used invalid input %d times.\n',(ss2-1));
else
if sss2~=1
fprintf('Your input is invalid. The score during the interruption cant be less than zero. You have used invalid input %d times.\n',(sss2-1));
else
if ss22~=1
fprintf('Your input is invalid. Any score during the interruption cant be more than first innings score. You have used invalid input %d times.\n',(ss22-1));
else
if ssss2~=1
fprintf('Your input is invalid. The score during any interruption cant be less than the one during previous interruption. You have used invalid input %d times.\n',(sss2-1));
else
if ww2~=1
fprintf('Your input is invalid. The wickets fallen cant be a fraction. You have used invalid input %d times.\n',(ww2-1));
else
if www2~=1
fprintf('Your input is invalid. The wickets fallen cant be less than zero. You have used invalid input %d times.\n',(www2-1));
else
if wwww2~=1
fprintf('Your input is invalid. The wickets fallen during any interruption cant be less than the previous one. You have used invalid input %d times.\n',(wwww2-1));
else
if ww12~=1
fprintf('Your input is invalid. The wickets fallen cant be more than ten. You have used invalid input %d times.\n',(ww12-1));
else
if cc2~=1
fprintf('Your input is invalid. Number of total overs cant be a fraction. You have used invalid input %d times.\n',(cc2-1));
else
if ccc2~=1
fprintf('Your input is invalid. The reduced number of overs cant be less than zero. You have used invalid input %d times.\n',(ccc2-1));
else
if cccc2~=1
fprintf('Your input is invalid. The reduced number of overs cant be more than fifty. You have used invalid input %d times.\n',(cccc2-1));
else
if dd2~=1
fprintf('Your input is invalid. Number of balls in the last over cant be a fraction. You have used invalid input %d times.\n',(dd2-1));
else
if ddd2~=1
fprintf('Your input is invalid. The number of balls in the last over cant be less than zero. You have used invalid input %d times.\n',(dd2-1));
else
if dddd2~=1
fprintf('Your input is invalid. The number of balls in the last over cant be more than six. You have used invalid input %d times.\n',(dddd2-1));
else
if pq2~=1
fprintf('Your input is invalid. The reduced number of total overs cant be more than where the interruption occured. You have used invalid input %d times.\n',(pq2-1));
else
if pp2~=1
fprintf('Your input is invalid. The over during an interruption cant be less than the previous one. You have used invalid input %d times.\n',(pp2-1));
else
if qq2~=1
fprintf('Your input is invalid. The reduced number of total overs due to an interruption cant be more than the previous one. You have used invalid input %d times.\n',(qq2-1));
else
if Qq(n2+1)<120
disp('No result, The match is abandoned. It needs atleast 20 overs in each innings to complete a match.');
else
%The data are valid. Now we may proceed.
Ee(1)=Pp(1);
for kk=2:n2+1
Ee(kk)=300-Qq(kk-1)+Pp(kk); %Total number of played overs and lost overs before the kk_th interruption.
end
Ff(1)=300-Qq(1)+Ee(1);
for ll=2:n2+1
Ff(ll)=Qq(ll-1)-Qq(ll)+Ee(ll); %Total number of played overs and lost overs after the kk_th interruption.
end
for mm=1:n2+1
RR2(mm)=DL_Table((Ee(mm)+1),(Ww1(mm,1)+2))-DL_Table((Ff(mm)+1),(Ww1(mm,1)+2));
%(Ee(mm)+1) denotes the row number of the DL table
%And (Ww1(mm)+2) denotes the column number of the DL table
%Which shows the total resource available before the mm_th interruption.
%(Ff(mm)+1) denotes the row number of the DL table
%And (Ww1(mm)+2) denotes the column number of the DL table
%Which shows the total resource available after the mm_th interruption.
% Therefore RR2(mm) denotes the amount of resource lost due to the mm_th interruption.
end
Total_Resource2=100-sum(RR2); %Total amount of resources used by the team batted second.
if Total_Resource2>Total_Resource1
fprintf('\n');
y=input('G50 of the ground: ');
%G50 is required only when resources used in the first innings is less than
%that of the second innings.
%It is the average first innings ODI score of the particular ground.
%Now we have to check whether it is valid or not.
%It cant be a fraction and cant be less than zero.
shakib27=round(y);
mushfiq27=(y-shakib27);
if mushfiq27>=0
mashrafee27=shakib27;
else
mashrafee27=shakib27-1;
end
tamim27=mashrafee27; %Integer part of the G50.
if tamim27~=y
disp('Your input is invalid. Any cricket match G50 cant be a fraction.');
else
if y<0
disp('Your input is invalid. Any cricket match G50 score cant be negative.');
else
%The given G50 is valid. Now we may proceed.
ppp=(((Total_Resource2-Total_Resource1)/100)*y)+x;
%The formula used to calculate D\L score of the team batted second
%When resources used by them is less than that of the team batted first.
shakib80=round(ppp);
mushfiq80=(ppp-shakib80);
if mushfiq80>=0
mashrafee80=shakib80;
else
mashrafee80=shakib80-1;
end
tamim80=mashrafee80; %Integer part of the D\L score of the second team.
DL_Par_Score=tamim80; %This is the real D\L score, as a cricket match score is always positive.
Second_innings_target=DL_Par_Score+1; %To win the match the second team must score at least one run more.
if Pp(n2+1)==Qq(n2+1)
%The match couldnot restart after an interruption. Its declared finished.
%Now we have to find out the result.
Difference=DL_Par_Score-Ss(n2+1); %The difference of the D\L par scores during that interruption.
if Difference>0.
%Won by the first team
fprintf('First team won by %d runs(D/L). DL Par Score of the first team is %d.\n',Difference,DL_Par_Score);
else
if Difference==0
%The D\L scores are equal.
fprintf('\n');
fprintf('Match Tied. The scores are level, %d each(D/L).',DL_Par_Score);
else
%Won by the second team.
ddd=Difference*(-1); %The difference is to be made positive.
fprintf('\n');
fprintf('Second team won by %d runs(D/L). DL Par Score of the first team is %d.\n',ddd,DL_Par_Score);
end
end
else
%The match didnot finish. It restarted again.
ttt=Second_innings_target-Ss(n2+1); %Runs which the second team require more.
bbb=Qq(n2+1)-Pp(n2+1); %Number of balls remaining in their hand.
fprintf('\n');
fprintf('Target for second team is %d runs in %d.%d overs(D/L). Still they need %d more runs to win in %d balls.\n',Second_innings_target,Cc(n2+1,1),Dd(n2+1,1),ttt,bbb);
end
end
end
else
%Total resources used by the first team is more than that of second team.
ppp=((x/Total_Resource1)*Total_Resource2);
%The formula used to calculate D\L Score of the second team when total resources used by the first team is more than that of second team.
shakib80=round(ppp);
mushfiq80=(ppp-shakib80);
if mushfiq80>=0
mashrafee80=shakib80;
else
mashrafee80=shakib80-1;
end
tamim80=mashrafee80; %Integer part of the D\L score.
DL_Par_Score=tamim80; %The real D\L score, as a cricket match score is always positive.
Second_innings_target=DL_Par_Score+1; %To win the match the second team must score at least one run more.
if Pp(n2+1)==Qq(n2+1)
%The match couldnot restart after an interruption. Its declared finished.
%Now we have to find out the result.
Difference=DL_Par_Score-Ss(n2+1); %Difference of the D\L scores.
if Difference>0
%Won by the first team.
fprintf('First team won by %d runs(D/L). DL Par Score of the first team is %d.\n',Difference,DL_Par_Score);
else
if Difference==0
%D\L scores are equal.
fprintf('Match Tied. The scores are level, %d each(D/L).\n',DL_Par_Score);
else
%Won by the second team.
ddd=Difference*(-1); %As the difference is negative, it is to make positive.
fprintf('Second team won by %d runs(D/L). DL Par Score of the first team is %d.\n',ddd,DL_Par_Score);
end
end
else
%The match didnot finish. It restarted again.
ttt=Second_innings_target-Ss(n2+1); %Runs which the second team require more.
bbb=Qq(n2+1)-Pp(n2+1); %Number of balls remaining in their hand.
fprintf('Target for second team is %d runs in %d.%d overs(D/L). Still they need %d more runs to win in %d balls.\n',Second_innings_target,Cc(n2+1,1),Dd(n2+1,1),ttt,bbb);
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
