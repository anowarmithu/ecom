@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')

<div class="content">
    <div class="row">
        <div class="col-12">


            <!-- Recent Order Table -->
            <div class="card card-table-border-none" id="recent-orders">
                <div class="card-header justify-content-between">
                    <h2>All Suppliers</h2>
                    <div class=" ">
                    <a href="{{ route('add.supplier') }}" class="btn btn-info" role="button" aria-pressed="true">Add Supplier</a>

                    </div>
                </div>
                <div class="card-body pt-0 pb-5">
                    <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th class="d-none d-md-table-cell">Logo</th>
                                <th class="d-none d-md-table-cell">Mobile</th>
                                <th class="d-none d-md-table-cell">Feature</th>
                                <th class="d-none d-md-table-cell">Status</th>
                                <th>Modifide</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($suppliers as $supplier )
                            <tr>
                                <td>{{ $supplier->id }}</td>
                                <td>
                                    <a class="text-dark" href="">{{ $supplier->name }}</a>
                                </td>
                               
                                <td>
                                    <img src="{{(!empty($supplier->logo))?url('images/supplier/logo/'.$supplier->logo):url('images/noimage/images.jpg')}}" style="width:100px"alt="{{ $supplier->name }}">
                                </td>
                                 <td>
                                    <a class="text-dark" href="">{{ $supplier->mobile }}</a>
                                </td>
                                <td>
                                    <img src="{{(!empty($supplier->feature_image))?url('images/supplier/featureImages/'.$supplier->feature_image):url('images/noimage/images.jpg')}}" style="width:100px"alt="{{ $supplier->name }}">
                                </td>
                                
                                <td class="d-none d-md-table-cell">
                                    @if ($supplier->supplier_status === 'Active')
                                    <span class="badge badge-pill badge-info">Active </span>
                                    @else
                                    <span class="badge badge-pill badge-danger">Inactive</span>
                                    @endif
                                </td>

                                <td class="d-none d-md-table-cell">
                                    @if ( $supplier->updated_at === null)
                                        {{ $supplier->created_at->diffForHumans()}}
                                    @else
                                        {{ $supplier->updated_at->diffForHumans()}}
                                    @endif 
                                </td>
                                
                                <td>
                                    <a href="{{ route('show.supplier', $supplier->id)}}"  class="btn btn-secondary" role="button" aria-pressed="true"><span class="mdi mdi-eye"> View</span></a>
                                </td>
                            </tr>
                            @endforeach                           
                        </tbody>
                    </table>
                   {{ $suppliers->links() }}
                   {{-- {!! $suppliers->appends(Request::all())->links() !!} --}}
                </div>
            </div>
        </div>
    </div>
</div>



@endsection
