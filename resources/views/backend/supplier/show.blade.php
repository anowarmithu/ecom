@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')

<div class="content">
    <div class="row">
        <div class="col-12">
            <!-- Recent Order Table -->
            <div class="card card-table-border-none" id="recent-orders">
                <div class="card-header justify-content-between">
                    <h2>Show Supplier</h2>
                    <div class=" ">
                      <a href="{{ route('admin.suppliers') }}" class="btn btn-info" role="button" aria-pressed="true">All Suppliers</a>
                    </div>
                </div>
                <div class="card-body pt-0 pb-5">
                    <div class="row">
                        <div class="col-md-4">
                        <br>
                        <br>
                        <br>
                        <label for="logo">Supplier Logo</label>
                          <br>
                          <img id="logo" class="card-img-top" src="{{(!empty($supplier->logo))?url('images/supplier/logo/'.$supplier->logo):url('images/noimage/images.jpg')}}" style="width:220px" >
                          <br>
                          <br>
                          <br>
                        <label for="feature">Supplier Feature Image</label>
                        <br>
                          <img id="feature" class="card-img-top" src="{{(!empty($supplier->feature_image))?url('images/supplier/featureImages/'.$supplier->feature_image):url('images/noimage/images.jpg')}}" style="width:300px" >
                        </div>
                       
                        <div class="col-md-8">
                          <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                           
                            <tbody>
                               
                                <tr>
                                  <td>Supplier Name: </td>
                                  <td> {{ $supplier->name }}</td>
                                </tr>
                                <tr>
                                  <td>Supplier Mobile: </td>
                                  <td> {{ $supplier->mobile }}</td>
                                </tr>
                                <tr>
                                  <td>Description: </td>
                                  <td> {{ $supplier->description }} </td>
                                </tr>
                                <tr>
                                  <td>Popular: </td>
                                  <td>
                                    @if ($supplier->supplier_status === 'Active')
                                    <span class="badge badge-pill badge-info">Active</span>
                                    @else
                                    <span class="badge badge-pill badge-danger">Inactive</span>
                                        
                                    @endif
                                  </td>
                                </tr>
                            </tbody>

                            
                        </table>
                        <span>
                          
                              {{-- <a href="{{url('supplier/edit/'.$supplier->id)}}" class="btn btn-primary" role="button" aria-pressed="true">Edit supplier</a> --}}

                              <a href="" class="btn btn-primary" role="button" aria-pressed="true">Edit Supplier</a>
                          
                      </span>
                      <span>
                      
                              <a href="#" class="btn btn-danger" role="button" aria-pressed="true" data-toggle="modal" data-target="#exampleModal">Delete this Supplier!</a>
                        
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
          If you delete you won't able to find this supplier!
        </div>
        <div class="modal-footer">
          <form action=""></form>
          <button type="button" >
            <a href="{{route('delete.supplier',$supplier->id)}}" class="btn btn-danger">Delete</a>
           </button>
          <button type="button" class="btn btn-success" data-dismiss="modal">Don't Delete</button>
        </div>
      </div>
    </div>
  </div>

@endsection
