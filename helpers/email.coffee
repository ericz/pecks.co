{Mailgun} = require('mailgun')
conf =  require('32pt-conf')
mg = new Mailgun(conf.mailgun.private)

###
Usage:
  email.send(
    to: 'really.ez@gmail.com'
    subject: 'important!'
    body: '<b>test</b>'
  , (err) ->
    console.error('Error!', err)
  )
###

email =
  # message =
  #   from: (Optional)
  #   to:
  #   subject:
  #   body:
  send: (message, cb) ->
    from = message.from ? "32pt Team <no-reply@#{conf.mailgun.domain}>"
    to = if Array.isArray(message.to) then message.to else [message.to]
    mg.sendRaw(from
    , to
    , "From: #{from}\nTo: #{to.join(', ')}\nContent-Type: text/html; charset=utf-8\nSubject: #{message.subject}\n\n#{message.body}"
    , cb
    )


module.exports = email
