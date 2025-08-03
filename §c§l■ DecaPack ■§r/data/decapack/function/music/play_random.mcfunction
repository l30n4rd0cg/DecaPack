data merge storage decapack:songs { "songs": [ { id: "rick-roll", name: "Never Gonna Give You Up", author: "Rick Astley" }, { id: "thomas-the-train", name: "Thomas el tren", author: "Mike O'Donnell" }, { id: "viva-la-vida", name: "Viva la Vida", author: "Coldplay" }, { id: "kirby-gourmet-race", name: "Kirby: Gourmet Race", author: "Jun Ishikawa" } ] }

function decapack:misc/pick_random {storage: "decapack:songs", path: "songs"}

function decapack:music/play_song with storage decapack:tmp_args result