# 2025-07-16T19:24:46.748070500
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_cnn")

comp = client.get_component(name="hls_component")
comp.run(operation="CO_SIMULATION")

vitis.dispose()

vitis.dispose()

