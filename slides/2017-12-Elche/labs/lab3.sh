set -x

echo "Killing all VLC instances"
killall vlc
sleep 1

echo "Run a second Icecast2 server listening at port 9000"
killall icecast2
sleep 1
# The file ~/icecast/icecast.xml must be configured to listen at port
# 9000 and to relay all the master's channels
/usr/bin/icecast2 -b -c ~/icecast/icecast.xml
sleep 5

echo "Feed the fist (8000) icecast server"
cvlc ~/Videos/LBig_Buck_Bunny_small.ogv --sout "#std{access=shout,mux=ogg,dst=source:hackme@localhost:8000/BBB.ogv}" --loop &
sleep 1
cvlc ~/Videos/Lchi84_14_m4.ogv --sout "#std{access=shout,mux=ogg,dst=source:hackme@localhost:8000/chi.ogv}" --loop &
sleep 1

echo "Feed the second (9000) icecast server"
cvlc ~/Videos/Lhcil2003_01.ogv --sout "#std{access=shout,mux=ogg,dst=source:hackme@localhost:9000/hcil.ogv}" --loop &
sleep 1

echo "Check the infrastructure"
firefox http://localhost:8000 2> /dev/null &
sleep 10
firefox http://localhost:9000  2> /dev/null
sleep 2
echo "Plase, push <enter> to continue"
read

echo "Run the listeners, one for the 8000 and two for the 9000"
cvlc http://localhost:8000/BBB.ogv 2> /dev/null &
sleep 1
cvlc http://localhost:9000/chi.ogv 2> /dev/null &
sleep 1
cvlc http://localhost:9000/hcil.ogv 2> /dev/null &

set +x
