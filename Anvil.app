from ._anvil_designer import Form1Template
from anvil import *
import anvil.server
import anvil.tables as tables
import anvil.tables.query as q
from anvil.tables import app_tables

class Form1(Form1Template):
  def __init__(self, **properties):
    # Set Form properties and Data Bindings.
    self.init_components(**properties)

    # Any code you write here will run when the form opens.

    

  def button_1_click(self, **event_args):
  #Lấy dãy số từ textbox và chuyển thành list
        input_numbers = [int(num.strip()) for num in self.txtNumbers.text.split(',') if num.strip()]

   # Thực hiện sắp xếp bằng thuật toán Insertion Sort
        for i in range(1, len(input_numbers)):
            key = input_numbers[i]
            j = i - 1
            while j >=0 and key < input_numbers[j]:
                input_numbers[j + 1] = input_numbers[j]
                j -= 1
            input_numbers[j + 1] = key

        # Hiển thị kết quả sắp xếp trên label
        self.lblSortedNumbers.text = ', '.join(map(str, input_numbers))


