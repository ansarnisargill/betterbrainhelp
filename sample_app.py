import os
import tweepy

from bottle import route, template, redirect, static_file, error, run


@route('/home')
def show_home():
    
    consumer_key= HrMuYU40iEONQ0xlJ7fpypUwq
    consumer_secret=OxARlBCFIuTJ0KKfSIAXOpdmdPK3jxNajFFt3nAlzVg8adkCjs
    access_token=2850234482-RqeBMI7cYehIjUtZIgkEULVu4WQNFvmwpfTeimb
    access_token_secret=9RFgcihh6DmSWIdH2fMJSweYDCnnZelqwhMTytBuEPX22


    auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)

    api = tweepy.API(auth)

    public_tweets = api.home_timeline()
    return public_tweets



@route('/')
def handle_root_url():
    redirect('/home')


@route('/profile')
def make_request():
    # make an API request here
    profile_data = {'name': 'Marcel Hellkamp', 'role': 'Developer'}
    return template('details', data=profile_data)


@route('/css/<filename>')
def send_css(filename):
    return static_file(filename, root='static/css')



@error(404)
def error404(error):
    return template('error', error_msg='404 error. Nothing to see here')


if os.environ.get('APP_LOCATION') == 'heroku':
    run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
else:
    run(host='localhost', port=8080, debug=True)
