# Args:
#   - length[int]: The length of the song in ticks.
#   - tick[int]: The current tick of the song.

$bossbar set decapack:music_progress value $(tick)
$bossbar set decapack:music_progress max $(length)