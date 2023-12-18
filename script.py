import numpy as np
import pandas as pd

A = pd.DataFrame({'v1': [12, 45], 'v2': [np.nan, 478]})

print(A.describe())
