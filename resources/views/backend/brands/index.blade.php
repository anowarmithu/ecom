@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')

<div class="content">
    <div class="row">
        <div class="col-12">
            <!-- Recent Order Table -->
            <div class="card card-table-border-none" id="recent-orders">
                <div class="card-header justify-content-between">
                    <h2>All Brands</h2>
                    <div class=" ">
                        <span>
                            <button type="button" class="btn btn-info">
                                <a href="{{ route('brands.add') }}" class="text-dark" >
                                    Add Brand
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
                                <th class="d-none d-md-table-cell">logo</th>
                                <th class="d-none d-md-table-cell">Feature</th>
                                <th class="d-none d-md-table-cell">Popular</th>
                                <th class="d-none d-md-table-cell">Supplier</th>
                                <th class="d-none d-md-table-cell">Status</th>
                                <th>Created</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($brands as $brand )
                            <tr>
                                <td>{{ $brand->id }}</td>
                                <td>
                                    <a class="text-dark" href="">{{ $brand->name }}</a>
                                </td>
                                <td>
                                    <img src="{{ asset('images/brands/logos')}}/{{ $brand->logo }}" style="width:100px"alt="{{ $brand->name }}">
                                </td>
                                <td>
                                    <img src="{{ asset('images/brands/features')}}/{{ $brand->feature_image }}" style="width:100px"alt="{{ $brand->name }}">
                                </td>
                                <td>
                                    @if ($brand->popular_brand === 'Inactive')
                                    <span class="badge badge-warning">No</span>
                                    @else
                                    <span class="badge badge-success">Yes</span>
                                        
                                    @endif
                                </td>
                                
                                <td>
                                    <a class="text-dark" href="">{{ $brand->supplier->name }}</a>
                                </td>
                                <td class="d-none d-md-table-cell">
                                    @if ($brand->popular_brand === 'Inactive')
                                    <span class="badge badge-warning">Inactive</span>
                                    @else
                                    <span class="badge badge-success">Active</span>
                                        
                                    @endif
                                </td>

                                
                                <td class="d-none d-md-table-cell">{{ $brand->created_at->diffForHumans()}}</td>
                                
                                <td class="text-right">
                                    <div class="dropdown show d-inline-block widget-dropdown">
                                        <a class="dropdown-toggle icon-burger-mini" href="" role="button"
                                            id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false" data-display="static"></a>
                                        <ul class="dropdown-menu dropdown-menu-right"
                                            aria-labelledby="dropdown-recent-order1">
                                            <li class="dropdown-item">
                                                <a href="#">View</a>
                                            </li>
                                            <li class="dropdown-item">
                                                <a href="#">Remove</a>
                                            </li>
                                        </ul>
                                    </div>
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
