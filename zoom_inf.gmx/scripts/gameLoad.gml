///gameLoad()

if file_exists("save.sav")
{
  var _file=file_text_open_read("save.sav");
  score_high=file_text_read_real(_file)
  file_text_close(_file)
}
else
{score_high=0}

score_cur=0
score_prev=0

