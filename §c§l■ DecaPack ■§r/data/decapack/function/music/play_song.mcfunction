# Args:
#   - id[string]: The ID of the song to play.
#   - name[string]: The name of the song.
#   - author[string]: The author of the song.

$function notty:songs/$(id)

$title @a[tag=notty] actionbar "§cReproduciendo canción: §6$(name)§r por §a$(author)§r"