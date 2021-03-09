from flask import Flask, render_template, request, session, redirect,flash
import math
import json
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import hashlib
crypt=hashlib.md5()
with open('config.json', 'r') as c:
    params = json.load(c) ["params"]

local_server=True
app=Flask(__name__)
app.secret_key= 'king-of-avalon'

if(local_server==True):
    app.config['SQLALCHEMY_DATABASE_URI']= params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']
db= SQLAlchemy(app)

class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(50), unique=True, nullable=False)
    content = db.Column(db.String(1000), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    pdf = db.Column(db.String(12), nullable=True)
    subtitle = db.Column(db.String(80), nullable=False)

class Contacts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    subject = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    message = db.Column(db.String(80), nullable=False)
    date = db.Column(db.String(12), nullable=True)

class User_login(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), nullable=False)
    password = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    date = db.Column(db.String(12), nullable=True)

@app.route("/",methods=['GET', 'POST'])
def index():
    if (request.method == 'POST'):
        name = request.form.get('name')
        subject = request.form.get('subject')
        email = request.form.get('email')
        message = request.form.get('message')
        entry = Contacts(name=name, subject=subject, email=email, message=message, date=datetime.now())
        db.session.add(entry)
        db.session.commit()
    if('user' not in session):
        posts=Posts.query.filter_by().all()
        last = math.ceil(len(posts) / int(params['no_of_posts']))
        page = request.args.get('page')
        if (not str(page).isnumeric()):
            page = 1
        page = int(page)
        posts = posts[(page - 1) * int(params['no_of_posts']): (page - 1) * int(params['no_of_posts']) + int(
            params['no_of_posts'])]
        if (page == 1):
            prev = "#"
            next = "/?page=" + str(page + 1)
        elif (page == last):
            prev = "/?page=" + str(page - 1)
            next = "#"
        else:
            prev = "/?page=" + str(page - 1)
            next = "/?page=" + str(page + 1)
        return render_template("index.html", params=params, posts=posts, prev=prev, next=next)
    else:
        posts = Posts.query.filter_by().all()
        last = math.ceil(len(posts) / int(params['no_of_posts']))
        page = request.args.get('page')
        if (not str(page).isnumeric()):
            page = 1
        page = int(page)
        posts = posts[(page - 1) * int(params['no_of_posts']): (page - 1) * int(params['no_of_posts']) + int(
            params['no_of_posts'])]
        if (page == 1):
            prev = "#"
            next = "/?page=" + str(page + 1)
        elif (page == last):
            prev = "/?page=" + str(page - 1)
            next = "#"
        else:
            prev = "/?page=" + str(page - 1)
            next = "/?page=" + str(page + 1)
        return render_template("log_home.html", params=params, posts=posts, prev=prev, next=next)

@app.route("/home")
def home():
    posts = Posts.query.all()
    return render_template("home.html", params=params,posts=posts)

@app.route("/admin/home", methods=['GET', 'POST'])
def dashboard():
    if('user' in session and session['user']== params['admin_user'] ):
        return render_template('admin.html', params=params)

    if request.method=='POST':
        username=request.form.get('user')
        password=request.form.get('password')
        if (username == params['admin_user'] and password == params['admin_password']):
            session['user'] = username
            posts=Posts.query.all()
            return render_template('admin.html', params=params, posts=posts)
    else:
        return render_template("login.html", params=params)

@app.route("/logout")
def logout():
    session.pop('user')
    return redirect('/')

@app.route("/edit-delete")
def edit_delete():
    if ('user' in session and session['user'] == params['admin_user']):
        posts = Posts.query.all()
        return render_template("edit_delete.html", params =params, posts=posts)

@app.route("/edit/<string:sno>", methods=['GET', 'POST'])
def edit(sno):
    if('user' in session and session['user'] == params['admin_user']):
        if request.method == 'POST':
            box_title= request.form.get('title')
            subt= request.form.get('subtitles')
            slug=request.form.get('slug')
            content= request.form.get('content')
            pdf= request.form.get('pdf')
            date=datetime.now()

            if(sno=='0'):
                post=Posts(title = box_title, subtitle= subt, slug=slug, content=content, pdf=pdf, date=date)
                db.session.add(post)
                db.session.commit()
            else:
                post=Posts.query.filter_by(sno=sno).first()
                post.title= box_title
                post.subtitle= subt
                post.slug= slug
                post.content=content
                post.pdf=pdf
                db.session.commit()
                return redirect('/edit/'+sno)
        post=Posts.query.filter_by(sno=sno).first()
        return render_template("log_home.html", params= params, post=post, sno=sno)

@app.route("/log_home", methods=['GET', "POST"])
def log_home():
    posts = Posts.query.filter_by().all()
    last = math.ceil(len(posts) / int(params['no_of_posts']))
    page = request.args.get('page')
    if (not str(page).isnumeric()):
        page = 1
    page = int(page)
    posts = posts[(page - 1) * int(params['no_of_posts']): (page - 1) * int(params['no_of_posts']) + int(
        params['no_of_posts'])]
    if (page == 1):
        prev = "#"
        next = "/?pagenew=" + str(page + 1)
    elif (page == last):
        prev = "/?pagenew=" + str(page - 1)
        next = "#"
    else:
        prev = "/?pagenew=" + str(page - 1)
        next = "/?pagenew=" + str(page + 1)
    return render_template("log_home.html", params=params, posts=posts, prev=prev, next=next)

@app.route("/login-user", methods=['GET', 'POST'])
def login_user():
    if(request.method== 'POST'):
        user=request.form.get('username')
        password=request.form.get('pass')
        valid_user= User_login.query.filter_by(username=user).first()
        if(valid_user):
            pas = hashlib.md5(str.encode(password)).hexdigest()
            if valid_user.password == pas:
                session['user']=user;
                return redirect("/log_home")
            else:
                flash('Not Valid Username or Password')
                redirect("/login-user")
        else:
            flash('Not Valid Username or Password')
            redirect("/login-user")
    return render_template("login_user.html", params=params)

@app.route("/post/<string:post_slug>", methods=['GET','POST'])
def post_route(post_slug):
    if('user' in session):
        user=session["user"];
        post=Posts.query.filter_by(slug=post_slug).first()
        return render_template("post.html", params=params, post=post)
    else:
        return redirect('/login-user')


@app.route("/register", methods=['GET', 'POST'])
def reg_user():
    if(request.method=='POST'):
        uname=request.form.get('username')
        password=request.form.get('pass')
        email=request.form.get('email')
        username_exit= User_login.query.filter_by(username=uname).first()
        if(username_exit):
            flash('Username already exist please try different username!')
            return redirect("register")

        else:
            pas=hashlib.md5(str.encode(password)).hexdigest()
            entry= User_login(username=uname, password=pas, email=email, date=datetime.now())
            db.session.add(entry)
            db.session.commit()
            flash('Register Successful you can login now')
            return redirect("/")
    return render_template("reg.html", params=params)

@app.route("/delete/<string:sno>", methods=['GET', 'POST'])
def delete(sno):
    if('user' in session and session['user']== params['admin_user']):
        post=Posts.query.filter_by(sno=sno).first()
        db.session.delete(post)
        db.session.commit()
    return redirect("edit_delete.html")

@app.route("/reviews")
def review():
    posts=Contacts.query.all()
    return render_template("review.html", params=params, posts=posts)




app.run(debug=True)