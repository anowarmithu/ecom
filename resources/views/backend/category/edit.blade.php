@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')


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

                          <form class="forms-sample" method="POST" action="{{route('update.category',$category->id)}}" enctype="multipart/form-data">
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
                                        <textarea class="form-control" id="description" name="description" rows="3" >{{ $category->description }}</textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="meta_title">Meta Title</label>
                                    <input type="text" class="form-control" name="meta_title" id="meta_title" value="{{ $category->meta_title }}">
                                </div>
                                
                                <div class="form-group col-md-4">
                                    <label for="meta_description">Meta Description</label>
                                    <textarea type="text" class="form-control" name="meta_description" id="meta_description" rows="">{{ $category->meta_description }}</textarea>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="meta_keywords">Meta Key Words</label>
                                    <input type="text" class="form-control" name="meta_keywords" id="meta_keywords" value="{{ $category->meta_keywords }}">
                                </div>
                            </div>
                            <div class="row">
                              <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="popular" name="popular"
                                {{ $category->popular == 1 ? 'checked' : '' }}>
                                <label class="form-check-label" for="popular">
                                  Popularity
                                </label>
                              </div>
                              <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="status" name="status"
                                {{ $category->status == 1 ? 'checked' : '' }}>
                                <label class="form-check-label" for="status">
                                  Status
                                </label>
                              </div>
                            </div>
                            <br>

                            <div class="row">
                                  <button type="submit" class="btn btn-primary mr-2">Update</button>
                                </div>
                          </form>
                        
                    


                </div>
            </div>
        </div>
    </div>
</div>



@endsection
