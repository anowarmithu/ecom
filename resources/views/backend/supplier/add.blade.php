@extends('backend.layouts.main')
@section('title', 'Admin Dashboard')
@section('content')

<div class="content">
    <div class="row">
        <div class="col-12">
            <!-- Recent Order Table -->
            <div class="card card-table-border-none" id="recent-orders">
                <div class="card-header justify-content-between">
                    <h2>Add Supplier</h2>
                    <div class=" "><a href="{{ route('admin.suppliers') }}" class="btn btn-info" role="button"
                            aria-pressed="true">All Supplier</a>
                    </div>
                </div>
                <hr>
                <div class="card-body pt-0 pb-5">

                    <form class="forms-sample" method="POST" action="{{route('store.supplier')}}"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="name">Supplier Name</label>
                                <input type="text" class="form-control" name="name" id="name">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="mobile">Supplier Mobile</label>
                                <input type="tel" class="form-control" name="mobile" id="mobile">
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-3">
                                <label for="logo">Upload Logo</label>
                                <input accept="image/*" type='file' id="logo" />
                            </div>

                            <div class="form-group col-md-3">
                                <label>Logo Preview</label><br>
                                <img id="blah" src="#" alt="your image" style="width: 120px" />
                            </div>


                            <div class="form-group col-md-3">
                                <label for="feature_image">Upload Feature Image</label>
                                <input type='file' accept='image/*' name="feature_image" id="feature_image"
                                    onchange='openFile(event)'><br>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Image Preview</label><br>
                                <img id='output' style="width: 120px">

                                <script>
                                    logo.onchange = evt => {
                                        const [file] = logo.files
                                        if (file) {
                                            blah.src = URL.createObjectURL(file)
                                        }
                                    };

                                    feature_image.onchange = evt => {
                                        const [file] = feature_image.files
                                        if (file) {
                                            output.src = URL.createObjectURL(file)
                                        }
                                    };

                                </script>

                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="description">Supplier Description</label>
                                <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="supplier_status">Select Supplier Status</label>
                                <select class="form-control" id="supplier_status" name="supplier_status">
                                    <option selected>--Select Supplier Status--</option>
                                    <option value="Active">Active</option>
                                    <option value="Inactive"> Inactive</option>
                                </select>
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
