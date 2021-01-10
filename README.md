# RunTime-ToolKit
The toolkit is a runtime component for inspection (RT Marshal) and a client to read and oragnize logs (RT Caddie).  
These tools enable you to fully diagnose problems at runtime.  
## RT Marshal - Component inspection in Delphi
Marshal provides tree view of your application and an object inspector to adjust settings.  
### Feature Overview

![Marshal Main Features](/images/Marshal_Main_Features.PNG)

1. Tree of forms and components

2. Tabs of inspected components 

3. Tools by component type (all components get an object inspector)

4. Tool detail area

5. Path in form

6. View session log

7. Add session note

### Use case - Label and Edit in a panel
In the provided demos on the label tab there is a poorly formatted aligned set of controls: panel, edit, label.  
The problems are:  
1. Panel is to narrow width needs to change
2. Edit is to narrow width needs to change
3. Label font is too large
4. Edit overlaps the label, change alignment

### Side by Side 
Marshal creates its own form so that you can put it next to your application or on a second monitor.

![Marshal Side by Side view](/images/SxS_Label_Marshal_Start.PNG)

#### FIX
1. Adjust the panel (choose the panel tab and scroll down to width)

![Marshal SXS fix panel width](/images/SxS_Label_Marshal_PanelWidthChange.PNG)

2. Adjust the Edit width (choose the edit tab and adjust width)

![Marshal SXS fix edit width](/images/SxS_Label_Marshal_EditWidthChange.PNG)

3. Adjust the Label Font size

![Marshal SXS fix label font](/images/SxS_Label_Marshal_LabelFontChange.PNG)

4. Adjust the Edit alignment to show not overlap the label

![Marshal SXS fix label font](/images/SxS_Label_Marshal_EditAlignChange.PNG)


