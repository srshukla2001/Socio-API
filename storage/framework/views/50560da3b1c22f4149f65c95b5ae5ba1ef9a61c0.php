

<?php $__env->startSection('content'); ?>
    <!-- <div class="bg-light p-5 rounded">
        <?php if(auth()->guard()->check()): ?>
        <h1>Dashboard</h1>
        <?php endif; ?>

        <?php if(auth()->guard()->guest()): ?>
        <span>Homepage</span>
        <?php endif; ?>

    </div> -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Socio-API\resources\views/home/index.blade.php ENDPATH**/ ?>