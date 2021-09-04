@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')

<div class="content">
    <div class="row">
        <div class="col-12">
            <!-- Recent Order Table -->
            <div class="card card-table-border-none" id="recent-orders">
                <div class="card-header justify-content-between">
                    <h2>Show Category</h2>
                    <div class=" ">
                      
                          <button type="button" class="btn btn-info">
                              <a href="{{ route('admin.categories') }}" class="text-dark" >
                                  All Categories
                              </a>
                          </button>
                      </span>
                        
                    </div>
                </div>
                <div class="card-body pt-0 pb-5">
                    <div class="row">
                        <div class="col-md-4">
                          <img class="card-img-top" src="{{(!empty($category->feature_image))?url('images/category/featureImages/'.$category->feature_image):url('images/noimage/images.jpg')}}" style="margin-top:80px">
                        </div>
                       
                        <div class="col-md-8">
                          <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                           
                            <tbody>
                               
                                <tr>
                                  <td>Category Title: </td>
                                  <td> {{ $category->name }}</td>
                                </tr>
                                <tr>
                                  <td>Description: </td>
                                  <td> {{ $category->description }} </td>
                                </tr>
                                <tr>
                                  <td>Popular: </td>
                                  <td>
                                    @if ($category->popular === 0)
                                    <span class="badge badge-pill badge-info">Not Popular</span>
                                    @else
                                    <span class="badge badge-success">Popular</span>
                                        
                                    @endif
                                  </td>
                                </tr>
                                <tr>
                                  <td>Meta Title: </td>
                                  <td>{{ $category->meta_title }}</td>
                                </tr>
                                <tr>
                                  <td>Meta Description: </td>
                                  <td>{{ $category->meta_description }}</td>
                                </tr>
                                <tr>
                                  <td>Meta Key Words:  </td>
                                  <td>{{ $category->meta_keywords }}</td>
                                </tr> 

                            </tbody>

                            
                        </table>
                        <span>
                          <button type="button" class="btn btn-success">
                              <a href="{{url('category/edit/'.$category->id)}}" class="text-dark" >
                                  Edit Category
                              </a>
                          </button>
                          
                      </span>
                      <span>
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
                          Delete this Category!
                        </button>
                    </span>
                        </div>

                      
                        <hr>
                        
                    </div>

                    

                </div>
            </div>
        </div>
    </div>
</div>

	<!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Are your sure to DELETE!</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body text-danger">
          If you delete you won't able to find this category!
        </div>
        <div class="modal-footer">
          <form action=""></form>
          <button type="button" >
            <a href="{{route('delete.category',$category->id)}}" class="btn btn-danger">Delete</a>
           </button>
          <button type="button" class="btn btn-success" data-dismiss="modal">Don't Delete</button>
        </div>
      </div>
    </div>
  </div>

@endsection
