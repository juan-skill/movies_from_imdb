#!/usr/bin/env node

'use strict'

import mysql from 'mysql2';
import myConnection from 'express-myconnection';

const dbOptions = {
		host : 'db',
		port : 3306,
		user : 'root',
		password : 'password',
		database : 'movies' 
	};

const movies = myConnection(mysql, dbOptions, 'request')

export default movies;