@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')

<div class="content">
    <div class="row">
        <div class="col-12">


            <!-- Recent Order Table -->
            <div class="card card-table-border-none" id="recent-orders">
                <div class="card-header justify-content-between">
                    <h2>All Categories</h2>
                    <div class=" ">
                        <span>
                            <button type="button" class="btn btn-info">
                                <a href="{{ route('category.add') }}" class="text-dark" >
                                    Add Category
                                </a>
                            </button>
                        </span>
                    </div>
                </div>
                <div class="card-body pt-0 pb-5">
                    <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th class="d-none d-md-table-cell">Feature</th>
                                <th class="d-none d-md-table-cell">Popular</th>
                                <th class="d-none d-md-table-cell">Status</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($categories as $category )
                            <tr>
                                <td>{{ $category->id }}</td>
                                <td>
                                    <a class="text-dark" href="">{{ $category->name }}</a>
                                </td>
                                <td>
                                    <img src="{{(!empty($category->feature_image))?url('images/category/featureImages/'.$category->feature_image):url('images/noimage/images.jpg')}}" style="width:100px"alt="{{ $category->name }}">
                                </td>
                                
                                <td>
                                    @if ($category->popular === 0)
                                    <span class="badge badge-warning">No</span>
                                    @else
                                    <span class="badge badge-success">Yes</span>
                                        
                                    @endif
                                </td>

                               
                                <td class="d-none d-md-table-cell">
                                    @if ($category->status === 0)
                                    <span class="badge badge-success">Active</span>
                                    @else
                                    <span class="badge badge-warning">Inactive</span>
                                        
                                    @endif
                                </td>

                                
                                <td class="d-none d-md-table-cell">{{ $category->created_at->diffForHumans()}}</td>
                                
                                <td>
                                    <button>
                                        <a href="{{ route('show.category', $category->id)}}"><span class="mdi mdi-eye"> View</span></a>
                                        
                                    </button>
                                </td>
                            </tr>
                            @endforeach                           
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>



@endsection
