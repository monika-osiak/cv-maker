import pdfkit
import json
import jinja2

options = {
    'page-size': 'Letter',
    'margin-top': '0in',
    'margin-right': '0in',
    'margin-bottom': '0in',
    'margin-left': '0in'
}

with open('data/data.json') as json_file:
    data = json.load(json_file)

env = jinja2.environment.Environment(
    loader=jinja2.FileSystemLoader('templates/')
)
template = env.get_template('template.tpl')
with open('basic-cv.html', "w") as f:
    f.write(template.render(**data))
pdfkit.from_file('basic-cv.html', 'basic-cv.pdf')

template = env.get_template('template2.tpl')
with open('basic-cv2.html', "w") as f:
    f.write(template.render(**data))
pdfkit.from_file('basic-cv2.html', 'basic-cv2.pdf', options=options)