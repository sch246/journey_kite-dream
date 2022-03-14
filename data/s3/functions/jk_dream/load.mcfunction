scoreboard objectives add tmp dummy
scoreboard objectives add int dummy
scoreboard objectives add debug.must_dream dummy
scoreboard objectives add debug.log dummy
scoreboard objectives add jk_dreamer_uid dummy

scoreboard objectives add jk_lastDreamTime dummy

scoreboard objectives add jk_dream_death custom:deaths
scoreboard objectives add sleep_in_bed custom:sleep_in_bed

execute in s3:jk_dream/sys run forceload add 0 0