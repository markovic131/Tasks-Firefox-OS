<?php

Route::get('tasks', function(){

    return Response::json([
            'data' => [
                'uncompleted' => Task::where('completed',0)->get()->toArray(),
                'completed' => Task::where('completed',1)->get()->toArray()
            ]
        ]);

});

Route::post('tasks', function() {

    $task = new Task();
    $task->name = Input::get('name');
    $task->save();

	return Response::json([
            'data' => $task->toArray()
        ]);
});

Route::put('tasks/{id}/complete', function($id){

    $task = Task::find($id);
    $task->completed = 1;
    $task->save();

    return Response::json([
            'data' => [
                'uncompleted' => Task::where('completed',0)->get()->toArray(),
                'completed' => Task::where('completed',1)->get()->toArray()
            ]
        ]);

});

Route::get('/', function(){

    return "Firefox OS Tasks REST API <br> GET /tasks <br> POST /tasks <br> PUT /tasks/{id}/complete";
});