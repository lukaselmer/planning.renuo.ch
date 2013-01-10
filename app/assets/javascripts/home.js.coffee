redmines = ["redmine.renuo.ch", "redmine.elmermx.ch", "redmine2.studentbooks.ch.studentbooks2.nine.ch"]

generateRedmineLink = (redmine, from, to) ->
  "https://" + redmine + "/time_entries/report?columns=day&criteria%5B%5D=member&criteria%5B%5D=issue&criteria%5B%5D=&from=" + from + "&period_type=2&to=" + to + "&utf8=%E2%9C%93"

$(".redmine-kw").each (k, v) ->
  $(v).click () ->
    $(redmines).each (k, redmine) ->
      link = generateRedmineLink(redmine, $(v).data("kw-start-date"), $(v).data("kw-end-date"))
      window.open(link)

