# RunTime-ToolKit
The toolkit is a runtime component for inspection (RT Marshal) and a client to read and oragnize logs (RT Caddie).  
These tools enable you to fully diagnose problems at runtime.  
## RT Marshal - Component inspection in Delphi
Marshal provides tree view of your application and an object inspector to adjust settings.  
### Feature Overview

![Marshal Main Features](/images/Marshal_Main_Features.png)

1. Tree of forms and components

2. Tabs of inspected components 

3. Tools by component type (all components get an object inspector)

4. Tool detail area

5. Path in form

6. View session log

7. Add session note

### Use case - Label and Edit formatting
In the provided demos on the label tab there are controls missing alignment and the listbox is not wide enough.  
The problems are:  
1. Label is not aligned to client
2. Edit is not aligned to client
3. list box is not wide enough

### Side by Side 
Marshal creates its own form so that you can put it next to your application or on a second monitor.

![Marshal Side by Side view](/images/SxS_Label_Marshal_Start.PNG)

#### FIX
1. Change the alignment of label1 to client

![Marshal SXS fix panel width](/images/SxS_Label_Marshal_LabelAlignChange.PNG)

2. Change the alignment of Edit1 to client

![Marshal SXS fix label font](/images/SxS_Label_Marshal_EditAlignChange.PNG)

3. Change the Listbox width to 300

![Marshal SXS fix edit width](/images/SxS_Label_Marshal_ListboxWidthChange.PNG)

4. Review the Log

![Marshal SXS fix label font](/images/SxS_Label_Marshal_Log.PNG)




