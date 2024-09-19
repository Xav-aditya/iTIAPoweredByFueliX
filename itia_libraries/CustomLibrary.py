# CustomLibrary.py

from robot.libraries.BuiltIn import BuiltIn


class CustomLibrary:
    @staticmethod
    def get_all_text_from_elements(locator):
        seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
        elements = seleniumlib.get_webelements(locator)
        print(elements)
        # Get all text from the elements and store it in a list
        all_text = [element.text for element in elements]
        print(all_text)

        # Store the list of text in a Robot Framework variable
        BuiltIn().set_global_variable('${ALL_TEXT}', all_text)
