# Quake Mash

A singular map made of of all the original Quake levels, allowing for a single contiguous play-through. Play from beginning to end without any load screens. Also featuring improved geometry and fixed bugs.

## Installation ##

Extract `quakemash.bsp` into the `/id1/maps/` directory (create if necessary) in your Quake directory.

### E1M8 ###

E1M8 is a secret level with low gravity. For this to work requires a mod that properly supports `trigger_setgravity` such as [dumptruckDS' progs_dump](http://www.quaketastic.com/files/single_player/mods/progs_dump_devkit_v112.zip) mod.

## Usage ##

Set your skill before loading the map, e.g.:

```
./darkplaces +skill 5 +map quakemash
```

