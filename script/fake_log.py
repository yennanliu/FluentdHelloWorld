from fluent import sender
from fluent import event

print (">>> insert log")
sender.setup('fluentd.test', host='localhost', port=9880)
event.Event('follow', {
  'from': 'userA',
  'to':   'userB'
})