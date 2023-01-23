object frmYouTubeVideo: TfrmYouTubeVideo
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  TabOrder = 0
  object wdivCardBody: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    ElementClassName = 'card-body'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    Align = alClient
    ElementPosition = epIgnore
    HTML.Strings = (
      
        '        <h5 class="card-title">Card title</h5>'#10'        <p class=' +
        '"card-text">This is a wider card with supporting text below as a' +
        ' natural lead-in to additional '
      
        'content.</p>'#10'        <p class="card-text"><small class="text-mut' +
        'ed">Last updated 3 mins ago</small></p>')
    Role = ''
  end
end
