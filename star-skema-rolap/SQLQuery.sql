Create Database SpotifyDW;
GO

Use SpotifyDW;
GO

Create SCHEMA spotify; 
GO

DROP TABLE IF EXISTS spotify.DimAlbum;
DROP TABLE IF EXISTS spotify.DimArtist;
DROP TABLE IF EXISTS spotify.DimGenre;
DROP TABLE IF EXISTS spotify.FactTracks;
GO

--Albums Dimension
CREATE TABLE spotify.DimAlbum (
   AlbumKey  int   NOT NULL,
   id_album  varchar(255)   NULL,
   name  varchar(255)   NOT NULL,
   album_type varchar(255) NOT NULL,
   release_date  date NOT NULL,
   CONSTRAINT [PK_spotify.DimAlbum] PRIMARY KEY ( AlbumKey )
) ON [PRIMARY];
GO

--Artists Dimension
CREATE TABLE spotify.DimArtist (
   ArtistKey  int   NOT NULL,
   id_artist  varchar(255)   NULL,
   name_artist  varchar(255)   NOT NULL,
   genre_artist varchar(255) NOT NULL,
   followers int NOT NULL,
   CONSTRAINT [PK_spotify.DimArtist] PRIMARY KEY ( ArtistKey )
) ON [PRIMARY];
GO

--Genres Dimension
CREATE TABLE spotify.DimGenre (
   GenreKey  int   NOT NULL,
   id_Genres  varchar(255)   NULL,
   name_Genres  varchar(255)   NOT NULL,
   CONSTRAINT [PK_spotify.DimGenre] PRIMARY KEY ( GenreKey)
) ON [PRIMARY];
GO

--Fact Tracks
CREATE TABLE spotify.FactTracks (
   AlbumKey int NOT NULL,
   ArtistKey int NOT NULL,
   GenreKey int NOT NULL,
   TrackKey  int   NOT NULL,
   id_track  varchar(255)   NULL,
   name  varchar(255)   NOT NULL,
   preview_url varchar(255)   NOT NULL,
   duration int NOT NULL,
   track_number int NOT NULL,
   CONSTRAINT [PK_spotify.FactTracks] PRIMARY KEY ( TrackKey, AlbumKey, ArtistKey, GenreKey),
   CONSTRAINT [FK_spotify_FactTracks_AlbumKey] FOREIGN KEY (AlbumKey)
		REFERENCES spotify.DimAlbum(AlbumKey),
	CONSTRAINT [FK_spotify_FactTracks_ArtistKey] FOREIGN KEY (ArtistKey)
		REFERENCES spotify.DimArtist(ArtistKey),
	CONSTRAINT [FK_spotify_FactTracks_GenreKey] FOREIGN KEY (GenreKey)
		REFERENCES spotify.DimGenre(GenreKey),
) ON [PRIMARY];
GO