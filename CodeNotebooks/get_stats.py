

import pandas as pd
import numpy as np
import sqlite3 as sql
import sklearn
from graphviz import Digraph



# Create database connection
db = 'c:/CL-Project/Database/titanic.db'
conn = sql.connect(db)



# Create a graph object...

dot = Digraph(comment='The Round Table')

dot  #doctest: +ELLIPSIS
graphviz.dot.Digraph 



# Add nodes and edges...

dot.node('A', 'King Arthur')
dot.node('B', 'Sir Bedevere the Wise')
dot.node('L', 'Sir Lancelot the Brave')

dot.edges(['AB', 'AL'])
dot.edge('B', 'L', constraint='false')



# Check the generated source code...

print(dot.source)  # doctest: +NORMALIZE_WHITESPACE
# The Round Table
digraph {
    A [label="King Arthur"]
    B [label="Sir Bedevere the Wise"]
    L [label="Sir Lancelot the Brave"]
    A -> B
    A -> L
    B -> L [constraint=false]
}



# Save and render the source code, optionally view the result...
dot.render('round-table.gv', view=True)  # doctest: +SKIP
'round-table.gv.pdf'



print(sys.path)



valid_class = {1,2,3}
valid_gender = list("M","F")
valid_age = list(range(0, 100))
valid_survived = list(0,1)


