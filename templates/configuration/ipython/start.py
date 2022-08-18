from __future__ import unicode_literals
print """from __future__ import unicode_literals"""
print """
import sys
import os
import requests
import json
from django.db.models import Count, Min, Max, Sum
"""
import sys
import os
import requests
import json
try:
    from django.db.models import Count, Min, Max, Sum
    print \
    """
    """
except:
    pass
