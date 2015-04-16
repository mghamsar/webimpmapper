
from bottle import route, run, template
import root	

if __name__ == "__main__":
    root.bottle.debug(True)
    run(root.app, host='localhost', port=8080, reloader=True)
