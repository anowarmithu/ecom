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
    
    input:checked + .slider {
      background-color: #2196F3;
    }
    
    input:focus + .slider {
      box-shadow: 0 0 1px #2196F3;
    }
    
    input:checked + .slider:before {
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
    
    input:checked + .slider {
      background-color: #2196F3;
    }
    
    input:focus + .slider {
      box-shadow: 0 0 1px #2196F3;
    }
    
    input:checked + .slider:before {
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
                    <div class=" ">
                        <span>
                            <button type="button" class="btn btn-info">
                                <a href="{{ route('admin.categories') }}" class="text-dark" >
                                    All Categories
                                </a>
                            </button>
                        </span>
                    </div>
                </div>
                <hr>
                <div class="card-body pt-0 pb-5">

                          <form class="forms-sample" method="POST" action="{{route('store.category')}}" enctype="multipart/form-data">
                            @csrf
          
                            <div class="row">
                                  <div class="form-group col-md-6">
                                      <label for="name">Category Name</label>
                                      <input type="text" class="form-control" name="name" id="name" value="{{ $category->name }}">
                                  </div>
                                  <div class="form-group col-md-6">
                                      <label for="slug">Category Slug</label>
                                      <input type="text" class="form-control" name="slug" id="slug"  value="{{ $category->slug }}" >
                                  </div>
                              </div>
                              
                             
                            
                            <div class="row">
                                <input type="hidden" name="old_image" value="{{ $category->feature_image }}">
                                <div class="form-group col-md-3">
                                    <label for="image">Image upload</label>
                                    <input name="feature_image" id="image" type="file" class="form-control file-upload-info" placeholder="Upload Feature Image">
                                    <img src="" alt="">
                                  </div>
                                  <div class="form-group col-md-3">
                                    <label>Image Preview</label>
                                  
                                    <img src="" alt="">
                                    
                                </div>
                                <div class="form-group col-md-6">
                                        <label for="description">Category Description</label>
                                        <textarea class="form-control" id="description" name="description" rows="3" >{{ $category->description }}"</textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="meta_title">Meta Title</label>
                                    <input type="text" class="form-control" name="meta_title" id="meta_title" value="{{ $category->meta_title }}">
                                </div>
                                
                                <div class="form-group col-md-4">
                                    <label for="meta_description">Meta Description</label>
                                    <textarea type="text" class="form-control" name="meta_description" id="meta_description" rows=""></textarea>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="meta_keywords">Meta Key Words</label>
                                    <input type="text" class="form-control" name="meta_keywords" id="meta_keywords" value="{{ $category->meta_keywords }}">
                                </div>

                            </div>
                            <br>
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <label class="form-check-label" style="padding-bottom: 20px">Popularity</label>
                                    <br>
                                    @if ($category->popular ===0)
                                    <input type="checkbox" data-toggle="toggle" data-on="Not Popular" data-off="Not Active" data-onstyle="danger" data-offstyle="success" name="popular" value="1" >
                                    @else
                                    <input type="checkbox" checked data-toggle="toggle" data-on="Not Popular" data-off="Not Active" data-onstyle="danger" data-offstyle="success" name="popular" value="0" >
                                    @endif
                                    
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-check-label" style="padding-bottom: 20px">Category Status</label>
                                    <br>
                                    <input type="checkbox" checked value="1" data-toggle="toggle" data-on="Active" data-off="Not Active" data-onstyle="success" data-offstyle="danger" name="status" value="1" >
                                </div>
                            </div>
                              <hr>
                              <br>
                              <button type="submit" class="btn btn-primary mr-2">Update</button>
                          </form>
                        
                    


                </div>
            </div>
        </div>
    </div>
</div>



@endsection
