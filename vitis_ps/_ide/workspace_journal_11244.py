# 2025-07-18T13:24:58.654641600
import vitis

client = vitis.create_client()
client.set_workspace(path="1")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

