@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')


<div class="content">
    <div class="row">
        <div class="col-12">
            <!-- Recent Order Table -->
            <div class="card card-table-border-none" id="recent-orders">
                <div class="card-header justify-content-between">
                    <h2>All Products</h2>
                    <div class=" ">
                        <span>
                            <button type="button" class="btn btn-info">
                                <a href="{{ route('brands.add') }}" class="text-dark" >
                                    Add Product
                                </a>
                            </button>
                        </span>
                    </div>
                </div>
                <div class="card-body pt-0 pb-5">
                    <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th class="d-none d-md-table-cell">Image</th>
                                <th class="d-none d-md-table-cell">Price</th>
                                <th class="d-none d-md-table-cell">S.Price</th>
                                <th class="d-none d-md-table-cell">Stock</th>
                                <th class="d-none d-md-table-cell">Qty</th>
                                <th class="d-none d-md-table-cell">Feat.</th>
                                <th class="d-none d-md-table-cell">Tnd.</th>
                                <th class="d-none d-md-table-cell">Brand</th>
                                <th class="d-none d-md-table-cell">Categ.</th>
                                <th class="d-none d-md-table-cell">Supplier</th>
                                <th class="d-none d-md-table-cell">Status</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($products as $product )
                            <tr>
                                <td>
                                    <a class="text-dark" href="">{{ $product->name }}</a>
                                </td>
                                <td>
                                    <img src="{{ asset('images/products')}}/{{ $product->image }}" style="width:100px"alt="{{ $product->name }}">
                                </td>
                                
                                <td>{{ $product->regular_price }}</td>
                                <td>{{ $product->sale_price }}</td>
                                <td>
                                    @if ($product->stock_status === 'inStock')
                                    <span class="badge badge-warning">O</span>
                                    @else
                                    <span class="badge badge-success">I</span>  
                                    @endif
                                </td>
                                <td>{{ $product->quantity }}</td>
                                <td>
                                    @if ($product->featured === 0)
                                    <span class="badge badge-warning">N</span>
                                    @else
                                    <span class="badge badge-success">Y</span>
                                        
                                    @endif
                                </td>
                                <td>
                                    @if ($product->treanding === 0)
                                    <span class="badge badge-warning">N</span>
                                    @else
                                    <span class="badge badge-success">Y</span>
                                        
                                    @endif
                                </td>
                                
                                <td>
                                    <a class="text-dark" href="">
                                        {{ $product->brand->name }}
                                    </a>
                                </td>
                                <td>
                                    <a class="text-dark" href="">
                                        {{ $product->category->name }}
                                    </a>
                                </td>
                                <td>
                                    <a class="text-dark" href="">
                                        {{ $product->supplier->name }}
                                    </a>
                                </td>
                                <td class="d-none d-md-table-cell">
                                    @if ($product->product_status === 'Inactive')
                                    <span class="badge badge-warning">I</span>
                                    @else
                                    <span class="badge badge-success">A</span>  
                                    @endif
                                </td>

                                
                                <td class="text-right">
                                    <div class="dropdown show d-inline-block widget-dropdown">
                                        <a class="dropdown-toggle icon-burger-mini" href="" role="button"
                                            id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false" data-display="static"></a>
                                        <ul class="dropdown-menu dropdown-menu-right"
                                            aria-labelledby="dropdown-recent-order1">
                                            <li class="dropdown-item">
                                                <a href="">View</a>
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
