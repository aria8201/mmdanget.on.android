#initialize
0	11	<eps>			CAMERA|0,16,-45|0,0,0|80.0|16.0
11	12	<eps>			MODEL_ADD|model|Model\Lat_miku2.31\Lat_mikuVer2.31_White.pmd|0.0,0.0,0.0|0.0,0.0,0.0|ON
12	13	<eps>			STAGE|Stage\building2\floor.bmp,Stage\building2\background.bmp
13	1	<eps>			MOTION_ADD|model|base|Motion\miku\miku_wait.vmd|FULL|LOOP|ON|OFF

#touch display
1	21	MOUSECLICK				MOTION_ADD|model|action|Motion\mei_surprise\mei_surprise_normal.vmd|PART|ONCE
21	1	MOTION_EVENT_DELETE|model|action	<eps>

#light off
1	31	RECOG_EVENT_STOP|ライト,オフ		REMOCON|39
31	32	REMOCON_EVENT_END|model			SYNTH_START|model|miku_voice_lat|ライトを消します。
32	33	<eps>					MOTION_ADD|model|action|Motion\miku\point_left.vmd|PART|ONCE
33	1	MOTION_EVENT_DELETE|model|action	<eps>

#light on
1	41	RECOG_EVENT_STOP|ライト,オン		REMOCON|34
41	42	REMOCON_EVENT_END|model			SYNTH_START|model|miku_voice_lat|ライトをつけます。
42	43	<eps>					MOTION_ADD|model|action|Motion\miku\point_left.vmd|PART|ONCE
43	1	MOTION_EVENT_DELETE|model|action	<eps>

#greeting
1	51	RECOG_EVENT_STOP|こんにちは		SYNTH_START|model|miku_voice_lat|こんにちは
51	52	<eps>					MOTION_ADD|model|action|Motion\mei_greeting\mei_greeting.vmd|PART|ONCE
52	1	MOTION_EVENT_DELETE|model|action	<eps>

#tv on
1	61	RECOG_EVENT_STOP|テレビ,オン		REMOCON|1
61	62	REMOCON_EVENT_END|model			SYNTH_START|model|miku_voice_lat|テレビをつけます。
62	63	<eps>					MOTION_ADD|model|action|Motion\miku\point_left.vmd|PART|ONCE
63	1	MOTION_EVENT_DELETE|model|action	<eps>

#tv off
1	71	RECOG_EVENT_STOP|テレビ,オフ		REMOCON|1
71	72	REMOCON_EVENT_END|model			SYNTH_START|model|miku_voice_lat|テレビをけします。
72	73	<eps>					MOTION_ADD|model|action|Motion\miku\point_left.vmd|PART|ONCE
73	1	MOTION_EVENT_DELETE|model|action	<eps>

# Model
# MODEL_ADD|(model alias)|(model file name)|(x position),(y position),(z position)|(x rotation),(y rotation),(z rotation)|(ON or OFF for cartoon)|(parent model alias)|(parent bone name)
# MODEL_CHANGE|(model alias)|(model file name)
# MODEL_DELETE|(model alias)
# MODEL_EVENT_ADD|(model alias)
# MODEL_EVENT_CHANGE|(model alias)
# MODEL_EVENT_DELETE|(model alias)
#
# Motion
# MOTION_ADD|(model alias)|(motion alias)|(motion file name)|(FULL or PART)|(ONCE or LOOP)|(ON or OFF for smooth)|(ON or OFF for repos)
# MOTION_ACCELERATE|(model alias)|(motion alias)|(speed)|(duration)|(specified time for end)
# MOTION_CHANGE|(model alias)|(motion alias)|(motion file name)
# MOTION_DELETE|(mpdel alias)|(motion alias)
# MOTION_EVENT_ADD|(model alias)|(motion alias)
# MOTION_EVENT_ACCELERATE|(model alias)|(motion alias)
# MOTION_EVENT_CHANGE|(model alias)|(motion alias)
# MOTION_EVENT_DELETE|(model alias)|(motion alias)
#
# Move and Rotate
# MOVE_START|(model alias)|(x position),(y position),(z position)|(GLOBAL or LOCAL position)|(move speed)
# MOVE_STOP|(model alias)
# MOVE_EVENT_START|(model alias)
# MOVE_EVENT_STOP|(model alias)
# TURN_START|(model alias)|(x position),(y position),(z position)|(GLOBAL or LOCAL position)|(rotation speed)
# TURN_STOP|(model alias)
# TURN_EVENT_START|(model alias)
# TURN_EVENT_STOP|(model alias)
# ROTATE_START|(model alias)|(x rotation),(y rotaion),(z rotation)|(GLOBAL or LOCAL rotation)|(rotation speed)
# ROTATE_STOP|(model alias)
# ROTATE_EVENT_START|(model alias)
# ROTATE_EVENT_STOP|(model alias)
#
# Sound
# SOUND_START|(sound alias)|(sound file name)
# SOUND_STOP|(sound alias)
# SOUND_EVENT_START|(sound alias)
# SOUND_EVENT_STOP|(sound alias)
#
# Stage
# STAGE|(stage file name)
# STAGE|(bitmap file name for floor),(bitmap file name for background)
#
# Light
# LIGHTCOLOR|(red),(green),(blue)
# LIGHTDIRECTION|(x position),(y position),(z position)
#
# Camera
# CAMERA|(x position),(y position),(z position)|(x rotation),(y rotation),(z rotation)|(distance)|(fovy)|(time)
# CAMERA|(motion file name)
#
# Speech recognition
# RECOG_EVENT_START
# RECOG_EVENT_STOP|(word sequence)
# RECOG_MODIFY|GAIN|(ratio)
# RECOG_MODIFY|USERDICT_SET|(dictionary file name)
# RECOG_MODIFY|USERDICT_UNSET
#
# Speech synthesis
# SYNTH_START|(model alias)|(voice alias)|(synthesized text)
# SYNTH_STOP|(model alias)
# SYNTH_EVENT_START|(model alias)
# SYNTH_EVENT_STOP|(model alias)
# LIPSYNC_START|(model alias)|(phoneme and millisecond pair sequence)
# LIPSYNC_STOP|(model alias)
# LIPSYNC_EVENT_START|(model alias)
# LIPSYNC_EVENT_STOP|(model alias)
#
# Variable
# VALUE_SET|(variable alias)|(value)
# VALUE_SET|(variable alias)|(minimum value for random)|(maximum value for random)
# VALUE_UNSET|(variable alias)
# VALUE_EVAL|(variable alias)|(EQ or NE or LE or LT or GE or GT for evaluation)|(value)
# VALUE_EVENT_SET|(variable alias)
# VALUE_EVENT_UNSET|(variable alias)
# VALUE_EVENT_EVAL|(variable alias)|(EQ or NE or LE or LT or GE or GT for evaluation)|(value)|(TRUE or FALSE)
# TIMER_START|(count down alias)|(value)
# TIMER_STOP|(count down alias)
# TIMER_EVENT_START|(count down alias)
# TIMER_EVENT_STOP|(count down alias)
#
# Plugin
# PLUGIN_ENABLE|(plugin name)
# PLUGIN_DISABLE|(plugin name)
# PLUGIN_EVENT_ENABLE|(plugin name)
# PLUGIN_EVENT_DISABLE|(plugin name)
#
# Other events
# DRAGANDDROP|(file name)
# KEY|(key name)
#
# Other commands
# EXECUTE|(file name)
# KEY_POST|(window class name)|(key name)|(ON or OFF for shift-key)|(ON or OFF for ctrl-key)|(On or OFF for alt-key)
#
# Additional events
# (detects touching the screen)
# MOUSECLICK
# (detects the end of REMOCON command)
# REMOCON_EVENT_END|(model name)
# 
# Additional commands
# REMOCON|(number)
