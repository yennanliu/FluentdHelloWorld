from fluent import sender
from fluent import event

print (">>> insert log")
# for remote fluent
logger = sender.FluentSender('app', host='localhost', port=24224)

sender.setup('fluentd.test', host='localhost', port=24224)
event.Event('follow', {
  'from': 'userA',
  'to':   'userB'
})