from data import data_manager

def get_languages():
    return data_manager.execute_select('SELECT id, name FROM language;')