from flask import Flask, render_template, request, redirect
import pandas as pd
import numpy as np
import requests
from datetime import datetime, date
import dill, os
from sklearn.ensemble import RandomForestRegressor

def predict_length(pickup_lat,pickup_long,dropoff_lat,dropoff_long,dow,hour):
    with open("length_pred", 'rb') as in_strm:
        length_pred = dill.load(in_strm)
    X_pred = [pickup_lat,pickup_long,dropoff_lat,dropoff_long,
                  0,1,0,0,0,0,
                  0,0,0,0,0,0,0,0,
                  0,0,0,0,0,0,0,0,
                  0,0,0,0,0,0,0,0]
    if dow <= 5:
        X_pred[dow+4] = 1
    X_pred[hour+10] = 1
    predicted_length = length_pred.predict([X_pred])
    return predicted_length

def predict_fare(pickup_lat,pickup_long,dropoff_lat,dropoff_long,dow,hour):
    with open("fare_pred", 'rb') as in_strm:
        fare_pred = dill.load(in_strm)
    X_pred = [pickup_lat,pickup_long,dropoff_lat,dropoff_long,
                  0,1,0,0,0,0,
                  0,0,0,0,0,0,0,0,
                  0,0,0,0,0,0,0,0,
                  0,0,0,0,0,0,0,0]
    if dow <= 5:
        X_pred[dow+4] = 1
    X_pred[hour+10] = 1
    predicted_fare = fare_pred.predict([X_pred])
    return predicted_fare

app = Flask(__name__)

@app.route('/')
def main():
    return redirect('/index')

@app.route('/index', methods=['GET', 'POST'])
def index():
    return render_template('index.html')

@app.route('/data', methods=['GET', 'POST'])
def data():
    return render_template('data.html')

@app.route('/overview', methods=['GET', 'POST'])
def overview():
    return render_template('overview.html')

@app.route('/location', methods=['GET', 'POST'])
def location():
    return render_template('location.html')

@app.route('/time', methods=['GET', 'POST'])
def time():
    return render_template('time.html')

@app.route('/fare', methods=['GET', 'POST'])
def fare():
    return render_template('fare.html')

@app.route('/ml1', methods=['GET', 'POST'])
def ml1():
    return render_template('ml1.html')

@app.route('/ml2', methods=['GET', 'POST'])
def ml2():
    global trip_date, trip_time, length, fare, pickup_lat, pickup_long, dropoff_lat, dropoff_long
    trip_date = str(date.today())
    trip_time = str('%02d' % datetime.now().hour) + ":" + str(datetime.now().minute)
    pickup_lat = 40.7527
    pickup_long = -73.9772
    dropoff_lat = 40.6413
    dropoff_long = -73.7781
    length = 0
    fare = 0
    if request.method == 'GET':
        return render_template('ml2.html', length=length, fare=fare, trip="")
    else:
        if request.form["trip_date"] != "":
            trip_date = request.form["trip_date"]
        if request.form["trip_time"] != "":
            trip_time = request.form["trip_time"]
        pickup_lat = request.form["pickup_lat"]
        pickup_long = request.form["pickup_long"]
        dropoff_lat = request.form["dropoff_lat"]
        dropoff_long = request.form["dropoff_long"]
        trip_date = datetime.strptime(trip_date, '%Y-%m-%d')
        day_of_week = trip_date.weekday()
        hour = int(trip_time[:2])
        length = "{0:.2f}".format(predict_length(pickup_lat,pickup_long,dropoff_lat,dropoff_long,day_of_week,hour)[0])
        fare = "{0:.2f}".format(predict_fare(pickup_lat,pickup_long,dropoff_lat,dropoff_long,day_of_week,hour)[0])
        info = "From (%s, %s) to (%s, %s) at %s %s." % (pickup_lat,pickup_long,dropoff_lat,dropoff_long,trip_date.date(),trip_time)
        return render_template('ml2.html', length=length, fare=fare, trip=info)


if __name__ == '__main__':
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)
