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
                    <h2>Add Supplier</h2>
                    <div class=" "><a href="{{ route('admin.suppliers') }}" class="btn btn-info" role="button" aria-pressed="true">All Supplier</a>
                    </div>
                </div>
                <hr>
                <div class="card-body pt-0 pb-5">

                          <form class="forms-sample" method="POST" action="{{route('store.supplier')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                  <div class="form-group col-md-6">
                                      <label for="name">Supplier Name</label>
                                      <input type="text" class="form-control" name="name" id="name">
                                  </div>
                                  <div class="form-group col-md-6">
                                      <label for="mobile">Supplier Mobile</label>
                                      <input type="tel" class="form-control" name="mobile" id="mobile" >
                                  </div>
                              </div>
                              
                             
                            
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <label for="logo">Upload Logo</label>
                                    <input name="logo" id="logo" type="file" class="form-control file-upload-info" >
                                    <img src="" alt="">
                                  </div>
                                  <div class="form-group col-md-3">
                                    <label>Image Preview</label>
                                    <img src="" alt="">
                                    
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="feature_image">Upload Feature Image</label>
                                    <input name="feature_image" id="feature_image" type="file" class="form-control file-upload-info" >
                                    <img src="" alt="">
                                  </div>
                                  <div class="form-group col-md-3">
                                    <label>Image Preview</label>
                                    <img src="" alt="">
                                    
                                </div>
                                 </div>
                                <div class="row">
                                <div class="form-group col-md-6">
                                        <label for="description">Supplier Description</label>
                                        <textarea class="form-control" id="description" name="description" rows="3" ></textarea>
                                </div>
                                 <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="supplier_status" name="supplier_status" checked>
                                <label class="form-check-label" for="supplier_status">
                                  Status
                                </label>
                              </div>
                            </div>
                            
                            <br>
                          
                              <button type="submit" class="btn btn-primary mr-2">Add</button>
                          </form>
                        
                    


                </div>
            </div>
        </div>
    </div>
</div>



@endsection
