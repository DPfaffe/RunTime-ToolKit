# RunTime-ToolKit
The toolkit is a runtime component for inspection (RT Marshal) and a client to oragnize sessions and bookmarks (RT Caddie).  
The toolkit enables diagnostics at runtime and review sessions offline. Marshal documents your actions by automatically creating a session file and capturing screenshots and modifications as you inspect. Caddie gathers the sessions and indexes bookmarks to return to important sessions.
## RT Marshal - Component Inspection @ Runtime
Marshal provides tree view of your application and an object inspector to adjust settings.  Create a bookmark for offline review.
#### Sessions
Sessions provide logging of screen shots and bookmarks.  Sessions are saved when the application exits to later be indexed by Caddie.
#### Bookmarks
Bookmarks provide marking points in sessions and an optional description.  

### Feature Overview

![Marshal Main Features](/images/marshal_features_map.png)

1. View session log

2. Add session bookmarks

3. Tree of forms and components

4. Tabs of inspected components 

5. Tools by component type (all components get an object inspector)

6. Tool detail area

7. Path in form

## RT Caddie - Session review offline
Caddie provides session collection and display for review after you have closed your application.  Sessions are parsed for bookmarks to quickly get you back to the session after you have closed your application.  Bookmarks provide a filter to your sessions. 
### Bookmarks usage
- [X] Bookmark a point in the session for later review (The session will have screenshot along with your bookmark)


### Feature Overview

![Caddie Main Features](/images/caddie_features_map.png)

1. Sessions list and bookmarks

2. Index of bookmarks set in Marshal

3. Individual sessions opened for review

4. Bookmarks automatically open the session so you can review further

5. Tabs of your applications

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




