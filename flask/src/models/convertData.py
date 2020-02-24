from decimal import Decimal
import json

def dictDecimalToInt(data_obj):
    for k, v in data_obj.items():
        if(type(v) == type(Decimal())):
            data_obj[k] = int(v)
    return data_obj