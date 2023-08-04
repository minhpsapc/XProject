@extends('master')

@section('content')

<div class="card">
    <div class="card-header">Edit Eployees</div>
    <div class="card-body">
        <form method="post" action="{{ route('apples.update', $apple->id) }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Name</label>
                <div class="col-sm-10">
                    <input type="text" name="name" class="form-control" value="{{ $apple->name }}" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Address</label>
                <div class="col-sm-10">
                    <input type="text" name="address" class="form-control" value="{{ $apple->address }}" />
                </div>
                <div class="row mb-3">
                    <label class="col-sm-2 col-label-form">Salary</label>
                    <div class="col-sm-10">
                        <input type="text" name="salary" class="form-control" value="{{ $apple->salary }}" />
            </div>
            
                    </select>
                </div>
            <div class="text-center">
                <input type="hidden" name="hidden_id" value="{{ $apple->id }}" />
                <input type="submit" class="btn btn-primary" value="Edit" />
            </div>
        </form>
    </div>
</div>

@endsection('content')
