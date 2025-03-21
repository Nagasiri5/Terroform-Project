resource "spotify_playlist" "Bollywood" {
  name = "Bollywood"
  tracks = ["1twQpI67lgEWZvKf8HObSK"]
}

data "spotify_search_track" "eminem" {
  artist = "Eminem"
}

resource "spotify_playlist" "slimShady" {
  name = "Slim Shady"
  tracks = [data.spotify_search_track.eminem.tracks[0].id,
  data.spotify_search_track.eminem.tracks[1].id,
  data.spotify_search_track.eminem.tracks[2].id]
}