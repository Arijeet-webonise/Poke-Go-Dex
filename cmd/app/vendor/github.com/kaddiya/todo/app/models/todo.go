// Package models contains the types for schema 'public'.
package models

// Code generated by xo. DO NOT EDIT.

import (
	"database/sql"
	"errors"

	"github.com/lib/pq"
)

// Todo represents a row from 'public.todo'.
type Todo struct {
	ID      int          `json:"id"`       // id
	Title   string       `json:"title"`    // title
	Done    sql.NullBool `json:"done"`     // done
	DueDate pq.NullTime  `json:"due_date"` // due_date

	// xo fields
	_exists, _deleted bool
}

// Exists determines if the Todo exists in the database.
func (t *Todo) Exists() bool {
	return t._exists
}

// Deleted provides information if the Todo has been deleted from the database.
func (t *Todo) Deleted() bool {
	return t._deleted
}

// Insert inserts the Todo to the database.
func (t *Todo) Insert(db XODB) error {
	var err error

	// if already exist, bail
	if t._exists {
		return errors.New("insert failed: already exists")
	}

	// sql insert query, primary key provided by sequence
	const sqlstr = `INSERT INTO public.todo (` +
		`title, done, due_date` +
		`) VALUES (` +
		`$1, $2, $3` +
		`) RETURNING id`

	// run query
	XOLog(sqlstr, t.Title, t.Done, t.DueDate)
	err = db.QueryRow(sqlstr, t.Title, t.Done, t.DueDate).Scan(&t.ID)
	if err != nil {
		return err
	}

	// set existence
	t._exists = true

	return nil
}

// Update updates the Todo in the database.
func (t *Todo) Update(db XODB) error {
	var err error

	// if doesn't exist, bail
	if !t._exists {
		return errors.New("update failed: does not exist")
	}

	// if deleted, bail
	if t._deleted {
		return errors.New("update failed: marked for deletion")
	}

	// sql query
	const sqlstr = `UPDATE public.todo SET (` +
		`title, done, due_date` +
		`) = ( ` +
		`$1, $2, $3` +
		`) WHERE id = $4`

	// run query
	XOLog(sqlstr, t.Title, t.Done, t.DueDate, t.ID)
	_, err = db.Exec(sqlstr, t.Title, t.Done, t.DueDate, t.ID)
	return err
}

// Save saves the Todo to the database.
func (t *Todo) Save(db XODB) error {
	if t.Exists() {
		return t.Update(db)
	}

	return t.Insert(db)
}

// Upsert performs an upsert for Todo.
//
// NOTE: PostgreSQL 9.5+ only
func (t *Todo) Upsert(db XODB) error {
	var err error

	// if already exist, bail
	if t._exists {
		return errors.New("insert failed: already exists")
	}

	// sql query
	const sqlstr = `INSERT INTO public.todo (` +
		`id, title, done, due_date` +
		`) VALUES (` +
		`$1, $2, $3, $4` +
		`) ON CONFLICT (id) DO UPDATE SET (` +
		`id, title, done, due_date` +
		`) = (` +
		`EXCLUDED.id, EXCLUDED.title, EXCLUDED.done, EXCLUDED.due_date` +
		`)`

	// run query
	XOLog(sqlstr, t.ID, t.Title, t.Done, t.DueDate)
	_, err = db.Exec(sqlstr, t.ID, t.Title, t.Done, t.DueDate)
	if err != nil {
		return err
	}

	// set existence
	t._exists = true

	return nil
}

// Delete deletes the Todo from the database.
func (t *Todo) Delete(db XODB) error {
	var err error

	// if doesn't exist, bail
	if !t._exists {
		return nil
	}

	// if deleted, bail
	if t._deleted {
		return nil
	}

	// sql query
	const sqlstr = `DELETE FROM public.todo WHERE id = $1`

	// run query
	XOLog(sqlstr, t.ID)
	_, err = db.Exec(sqlstr, t.ID)
	if err != nil {
		return err
	}

	// set deleted
	t._deleted = true

	return nil
}

// GetAllTodos returns all rows from 'public.todo',
// ordered by "created_at" in descending order.
func GetAllTodos(db XODB) ([]*Todo, error) {
	const sqlstr = `SELECT ` +
		`*` +
		`FROM public.todo`

	q, err := db.Query(sqlstr)
	if err != nil {
		return nil, err
	}
	defer q.Close()

	// load results
	var res []*Todo
	for q.Next() {
		t := Todo{}

		// scan
		err = q.Scan(&t.ID, &t.Title, &t.Done, &t.DueDate)
		if err != nil {
			return nil, err
		}

		res = append(res, &t)
	}

	return res, nil
}

// GetChunkedTodos returns pagingated rows from 'public.todo',
// ordered by "created_at" in descending order.
func GetChunkedTodos(db XODB, limit int, offset int) ([]*Todo, error) {
	const sqlstr = `SELECT ` +
		`*` +
		`FROM public.todo LIMIT $1 OFFSET $2`

	q, err := db.Query(sqlstr, limit, offset)
	if err != nil {
		return nil, err
	}
	defer q.Close()

	// load results
	var res []*Todo
	for q.Next() {
		t := Todo{}

		// scan
		err = q.Scan(&t.ID, &t.Title, &t.Done, &t.DueDate)
		if err != nil {
			return nil, err
		}

		res = append(res, &t)
	}

	return res, nil
}

// TodoByID retrieves a row from 'public.todo' as a Todo.
//
// Generated from index 'todo_pkey'.
func TodoByID(db XODB, id int) (*Todo, error) {
	var err error

	// sql query
	const sqlstr = `SELECT ` +
		`id, title, done, due_date ` +
		`FROM public.todo ` +
		`WHERE id = $1`

	// run query
	XOLog(sqlstr, id)
	t := Todo{
		_exists: true,
	}

	err = db.QueryRow(sqlstr, id).Scan(&t.ID, &t.Title, &t.Done, &t.DueDate)
	if err != nil {
		return nil, err
	}

	return &t, nil
}

// TodoByTitle retrieves a row from 'public.todo' as a Todo.
//
// Generated from index 'todo_title_key'.
func TodoByTitle(db XODB, title string) (*Todo, error) {
	var err error

	// sql query
	const sqlstr = `SELECT ` +
		`id, title, done, due_date ` +
		`FROM public.todo ` +
		`WHERE title = $1`

	// run query
	XOLog(sqlstr, title)
	t := Todo{
		_exists: true,
	}

	err = db.QueryRow(sqlstr, title).Scan(&t.ID, &t.Title, &t.Done, &t.DueDate)
	if err != nil {
		return nil, err
	}

	return &t, nil
}
