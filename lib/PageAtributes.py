import json
import os
import random
from collections import namedtuple
import  yaml
from robot.libraries.BuiltIn import BuiltIn

def load_page_attributes(page):
    print("----------")
    
    file_name = "{}.yaml".format(page)
    
    test_path = os.path.abspath(
        os.path.join(BuiltIn().get_variable_value("${SUITE_SOURCE}"), os.pardir)
    )
    local_page = "{}/pages/{}".format(test_path, file_name)
    
    try:
        print("Trying to load local page object: {}".format(local_page))
        with open(local_page) as file:
            return yaml.load(file, Loader=yaml.FullLoader)
    except Exception:
        print("Could not load local page object")
        
def select_os(yaml_page):
    page = {}
    for key in yaml_page.keys():
        print("key: ")
        print(key)
        if yaml_page[key]["selector"] == "text":
            page[key] = yaml_page[key]["value"]
        else:
            if yaml_page[key]["selector"] and yaml_page[key]["value"]:
                page[key] = yaml_page[key]["selctor"] + yaml_page[key]["value"]
            else:
                page[key] = "Selector empty, please go to the page object definition and fill it with a not empty value"
        
    return page

def get_page_attributes(page):
    yaml_page = load_page_attributes(page)
    page_current_device = json.dumps(select_os(yaml_page))
    
    try:
        page_object = json.loads(
            page_current_device, object_hook=lambda d: namedtuple("X", d.keys())(*d.values())
        )
        return page_object
    except Exception:
        print("An exception ocurred when trying to convert json to object")
