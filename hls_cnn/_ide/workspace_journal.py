# 2025-07-18T21:56:06.384545900
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_cnn")

vitis.dispose()

