exercises = [
  {title: 'Jumping Jacks'
  image: 'http://f.cl.ly/items/1W3X2x3q1j313s1l0q1z/Screen%20Shot%202013-05-16%20at%2010.47.57%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Wall Sit'
  image: 'http://f.cl.ly/items/2b3K3n0a343T0Y1M1s1m/Screen%20Shot%202013-05-16%20at%2010.48.03%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Pushups'
  image: 'http://f.cl.ly/items/0b2Q3Y3O0d1t1b0X3Q39/Screen%20Shot%202013-05-16%20at%2010.48.07%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Cruches'
  image: 'http://f.cl.ly/items/1E0e1X3a1O3n0p2N3c3D/Screen%20Shot%202013-05-16%20at%2010.48.15%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Step up onto chair'
  image: 'http://f.cl.ly/items/2b3g3I3m2B1b0Y2E2i2p/Screen%20Shot%202013-05-16%20at%2010.48.19%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Squat' 
  image: 'http://f.cl.ly/items/0V3M3y1N1r1P221f241W/Screen%20Shot%202013-05-16%20at%2010.48.23%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Tricep-dip on chair'
  image: 'http://f.cl.ly/items/321G0I1I0H0G1v422726/Screen%20Shot%202013-05-16%20at%2010.48.35%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Plank'
  image: 'http://f.cl.ly/items/1C001P3X1I3t0l3x111A/Screen%20Shot%202013-05-16%20at%2010.48.42%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'High Knee Run In Place'
  image: 'http://f.cl.ly/items/1g0o260r2g0M3Q323n0p/Screen%20Shot%202013-05-16%20at%2010.48.46%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Lunge'
  image: 'http://f.cl.ly/items/1G1u350i1j131q1R322w/Screen%20Shot%202013-05-16%20at%2010.48.50%20AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Pushup and Rotation'
  image: 'http://s12.postimg.org/elnaw7fdp/Screen_Shot_2013_05_16_at_10_52_14_AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
  {title: 'Side Plank' 
  image: 'http://s24.postimg.org/9y5xu7pph/Screen_Shot_2013_05_16_at_10_52_18_AM.png'}
  {title: 'Rest'
  image: 'http://3.bp.blogspot.com/-SUT8v0l9Ap0/Twe7fxC6_xI/AAAAAAAAE90/e0h2l4_0X04/s1600/sleepy-status-updates-facebook.jpg'}
]

$ ->
  $('#timer').on('next', window.shift)

window.shift = ->
  if exercises.length > 0
    setSlide exercises[0]
    exercises = exercises[1..]
  else
    $('#timer').html '0'
    speak 'Done!'

setSlide = (x) ->
  if x.title is 'Rest'
    $('#timer').html '10'
  else
    $('#timer').html '30'
  $('#slide').attr('src', x.image)
  speak x.title
  interval()

window.interval = () -> setTimeout(->
    timer = $('#timer').html()
    seconds = parseInt(timer, 10)
    if seconds <= 1
      $('#timer').trigger 'next'
    else
      seconds -= 1
      $('#timer').html seconds
      interval()
  , 1000)