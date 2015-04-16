import bottle
from bottle import route, run, template
from bottle import template, static_file, request, FormsDict
from bottle import static_file

import gestnetwork

app = bottle.Bottle()

@app.route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')

@app.get('/')
@app.get('/pyimp')
def index(errors=[]):
    inputs = '2'
    outputs = '4'
    forms = 'hii'
    return template('training_ui', inputs=inputs, outputs=outputs, errors=errors, forms=forms)

@app.get('/savedataset')
def save_dataset():
    print "Saving Dataset"


@app.get('/savenetwork')
def save_dataset():
    print "Saving Dataset"

@app.get('/snapshot')
def create_snapshot():
    PyImpNetwork.learn_callback()

@app.post('/')
@app.post('/pyimp')
def train_network():
    PyImpNetwork.train_callback()

    #if PyImpNetwork.train_callback() != None: 
    #    PyImpNetwork.train_callback()
    #    return {"success": True, "data": shortname}
    #else:
    #    return {"success": False, "error" : "shortname does not exist"}   
