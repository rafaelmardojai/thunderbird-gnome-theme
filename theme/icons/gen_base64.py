import base64
import os

results: dict[str, str] = {}

for file in os.listdir("."):
    if file.endswith(".svg"):
        with open(file, "rb") as f:
            result = base64.b64encode(f.read())
            result = result.decode("utf-8")
            name = file.replace(".svg", "")
            results[name] = result


with open("icons.css", "w") as css:
    css.write(":root {\n")

    for name, code in results.items():
        css.write(f'\t--gnome-icon-{name}:  url("data:image/svg+xml;base64,{code}");\n') 

    css.write("}")
