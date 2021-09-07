@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')

<style>
    .switch {
        position: relative;
        display: inline-block;
        width: 60px;
        height: 34px;
    }

    .switch input {
        opacity: 0;
        width: 0;
        height: 0;
    }

    .slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #ccc;
        -webkit-transition: .4s;
        transition: .4s;
    }

    .slider:before {
        position: absolute;
        content: "";
        height: 26px;
        width: 26px;
        left: 4px;
        bottom: 4px;
        background-color: white;
        -webkit-transition: .4s;
        transition: .4s;
    }

    input:checked+.slider {
        background-color: #2196F3;
    }

    input:focus+.slider {
        box-shadow: 0 0 1px #2196F3;
    }

    input:checked+.slider:before {
        -webkit-transform: translateX(26px);
        -ms-transform: translateX(26px);
        transform: translateX(26px);
    }

    /* Rounded sliders */
    .slider.round {
        border-radius: 34px;
    }

    .slider.round:before {
        border-radius: 50%;
    }

</style>

<style>
    .switch {
        position: relative;
        display: inline-block;
        width: 60px;
        height: 34px;
    }

    .switch input {
        opacity: 0;
        width: 0;
        height: 0;
    }

    .slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #ccc;
        -webkit-transition: .4s;
        transition: .4s;
    }

    .slider:before {
        position: absolute;
        content: "";
        height: 26px;
        width: 26px;
        left: 4px;
        bottom: 4px;
        background-color: white;
        -webkit-transition: .4s;
        transition: .4s;
    }

    input:checked+.slider {
        background-color: #2196F3;
    }

    input:focus+.slider {
        box-shadow: 0 0 1px #2196F3;
    }

    input:checked+.slider:before {
        -webkit-transform: translateX(26px);
        -ms-transform: translateX(26px);
        transform: translateX(26px);
    }

    /* Rounded sliders */
    .slider.round {
        border-radius: 34px;
    }

    .slider.round:before {
        border-radius: 50%;
    }

</style>

<div class="content">
    <div class="row">
        <div class="col-12">
            <!-- Recent Order Table -->
            <div class="card card-table-border-none" id="recent-orders">
                <div class="card-header justify-content-between">
                    <h2>Add Category</h2>
                    <div class=" "><a href="{{ route('admin.categories') }}" class="btn btn-info" role="button"
                            aria-pressed="true">Add Category</a>
                    </div>
                </div>
                <hr>
                <div class="card-body pt-0 pb-5">

                    <form class="forms-sample" method="POST" action="{{route('store.category')}}"
                        enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="name">Category Name</label>
                                <input type="text" class="form-control" name="name" id="name">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="slug">Category Slug</label>
                                <input type="text" class="form-control" name="slug" id="slug">
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-3">
                                <label for="image">Image upload</label>
                                <input name="feature_image" id="feature_image" type="file"
                                    class="form-control file-upload-info" placeholder="Upload Feature Image">
                            </div>
                            <div class="form-group col-md-3">
                                <label>Image Preview</label>
                                <br>
                                <img id='output' style="width: 120px">
                                <script>
                                    feature_image.onchange = evt => {
                                        const [file] = feature_image.files
                                        if (file) {
                                            output.src = URL.createObjectURL(file)
                                        }
                                    };

                                </script>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="description">Category Description</label>
                                <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-4">
                                <label for="meta_title">Meta Title</label>
                                <input type="text" class="form-control" name="meta_title" id="meta_title">
                            </div>

                            <div class="form-group col-md-4">
                                <label for="meta_description">Meta Description</label>
                                <textarea type="text" class="form-control" name="meta_description" id="meta_description"
                                    rows=""></textarea>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="meta_keywords">Meta Key Words</label>
                                <input type="text" class="form-control" name="meta_keywords" id="meta_keywords">
                            </div>

                        </div>
                        <br>
                        <div class="row">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="popular" name="popular">
                                <label class="form-check-label" for="popular">
                                    Popularity
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="status" name="status">
                                <label class="form-check-label" for="status">
                                    Status
                                </label>
                            </div>
                        </div>
                        <hr>
                        <br>
                        <button type="submit" class="btn btn-primary mr-2">Add</button>
                    </form>




                </div>
            </div>
        </div>
    </div>
</div>



@endsection
