# Perancangan Sistem Data Mart dan Dashboard Spotify

## General Discription
Spotify memproses banyak data karena berbagai alasan, termasuk pelaporan bisnis, rekomendasi musik, penayangan iklan, dan wawasan artis. Miliaran aliran disajikan di 61 pasar yang berbeda dan ribuan trek baru ditambahkan ke katalog setiap hari. Untuk menangani aliran data yang sangat besar ini, Spotify memiliki ~2500 node cluster Apache Hadoop di lokasi, salah satu penerapan terbesar di Eropa, yang menjalankan lebih dari 20 ribu pekerjaan sehari.

## Analysis

#### Business Process : Top Track Reporting
Top Track Reporting adalah salah satu fitur yang disediakan oleh spotify berupa tangga lagu yang dimana akan diupdate secara berkala berdasarkan popularitas lagu, genre, atau mood. Top Track spotify dapat dilihat dengan masuk ke spotify kemudian memilih playlist top track. 

#### Atribut dan Metrik
+ Dimension/Fact Table :
1. Dimension Albums
2. Dimension Artists
3. Fact Tracks
4. Dimension Genres

+ Fact Grain Type : Periodic Snapshot

+ Granularity : one row per popularity track

+ Facts : Most popular track, album with the most popular track, artist with the most popular track

## Data Source
https://www.kaggle.com/datasets/maltegrosse/8-m-spotify-tracks-genre-audio-features 

## Contributors
+ 12S19014 - Kartika Lidya Rotua Sianipar (@kartikalidya)
+ 12S19018 - Agnes Abigael Hutauruk (@agnesabigaelhutauruk)
+ 12S19020 - Imelda Sarah Dwiva Siregar (@imeldasiregar)
+ 12S19051 - Corri Hutahaean (@12s19051corrihutahaean)
+ 12S19052 - Mulyani Gabe Sayoni Simanjuntak (@MulyaniSimanjuntak)

