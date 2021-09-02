@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')

<div class="content">
    <div class="row">
        <div class="col-12">
            <!-- Recent Order Table -->
            <div class="card card-table-border-none" id="recent-orders">
                <div class="card-header justify-content-between">
                    <h2>Add Product</h2>
                    <div class=" ">
                        <span>
                            <button type="button" class="btn btn-info">
                                <a href="{{ route('admin.categories') }}" class="text-dark" >
                                    All Products
                                </a>
                            </button>
                        </span>
                    </div>
                </div>
                <div class="card-body pt-0 pb-5">
                    


                </div>
            </div>
        </div>
    </div>
</div>

@endsection
