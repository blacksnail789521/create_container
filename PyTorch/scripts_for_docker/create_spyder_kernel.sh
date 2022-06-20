kill -9 $(ps a | grep [p]ython | awk '{print $1}')
rm -f /workspace/remotemachine.json
python -m spyder_kernels.console — matplotlib=’inline’ -f=/workspace/remotemachine.json &
sleep 10
chmod 755 /workspace/remotemachine.json