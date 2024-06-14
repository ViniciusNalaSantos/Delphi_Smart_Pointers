# Delphi_Smart_Pointers
This program is a simple implementation of Smart Pointers in Delphi.

How works the code:

- When clicked the "Button1", a TStringList is created with a single value. This list is not freeded from the memory, so when you close the application, appears a message alerting that a memory leak has occurred.

- When clicked the "Button2", a TStringList is created with a single value too, but this list is released from the memory manually, consequently the alerting message does not appear.

- When clicked the "Buttom3", a TStringList is created with a single value, but this list is released from the memory automatically by the smart pointer, not appearing the alerting message too.
