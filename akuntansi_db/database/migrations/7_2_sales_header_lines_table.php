<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('sales_header_lines', function (Blueprint $table) {
            $table->id();
            $table->bigInteger("line_no");
            $table->bigInteger("sh_id");
            $table->bigInteger("i_id");
            $table->mediumInteger("qty");
            $table->bigInteger("unit_price");
            $table->bigInteger("net_amount");
            $table->string("note")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sales_header_lines');
    }
};
