@extends('master')

@section('content')

@if($message = Session::get('success'))

<div class="alert alert-success">
    {{ $message }}
</div>
@endif
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col col-md-6"><b>List of employees</b></div>
            <div class="col col-md-6">
                <a href="{{ route('apples.create') }}" class="btn btn-success btn-sm float-end">Add</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Salary</th>
                <th>Action</th>
            </tr>
            @if(count($data) > 0)

                @foreach($data as $row)

                    <tr>
                        <td>{{ $row->name }}</td>
                        <td>{{ $row->address }}</td>
                        <td>{{ $row->salary }}</td>
                        <td>
                            <form method="post" action="{{ route('apples.destroy', $row->id) }}">
                                @csrf
                                @method('DELETE')
                                <a href="{{ route('apples.show', $row->id) }}" class="btn btn-primary btn-sm">View</a>
                                <a href="{{ route('apples.edit', $row->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                <input type="submit" class="btn btn-danger btn-sm" value="Delete" />
                            </form>

                        </td>
                    </tr>

                @endforeach

            @else
                <tr>
                    <td colspan="5" class="text-center">No Data Found</td>
                </tr>
            @endif
        </table>
