import pdfkit
import json
import jinja2

with open('data/data.json') as json_file:
    data = json.load(json_file)

env = jinja2.environment.Environment(
    loader=jinja2.FileSystemLoader('templates/')
)
template = env.get_template('template.tpl')
with open('basic-cv.html', "w") as f:
    f.write(template.render(**data))
pdfkit.from_file('basic-cv.html', 'basic-cv.pdf')