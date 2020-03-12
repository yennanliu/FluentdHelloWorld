from fluent import sender
from fluent import event

sender.setup('fluentd.test', host='localhost', port=8888)
event.Event('follow', {
  'from': 'userA',
  'to':   'userB'
})