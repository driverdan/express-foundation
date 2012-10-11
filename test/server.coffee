expect = require('chai').expect

describe 'API', ->
  describe 'GET /users', ->
    it 'should list users'
  describe 'GET /users/1', ->
    it 'should get user with ID 1'
  describe 'POST /users', ->
    it 'should create a new user'
  describe 'PUT /users/1', ->
    it 'should update user 1'
  describe 'PUT /users', ->
    it 'should update the current user'
