

<?php $__env->startSection('content'); ?>
    <div class="text-light ">
        <?php if(auth()->guard()->check()): ?>
        <h1 class="headName">Welcome, <?php echo e(auth()->user()->username); ?></h1>
        <?php endif; ?>

        <?php if(auth()->guard()->guest()): ?>
        <h1 class="headName">Homepage</h1>
        <?php endif; ?>

    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\rohan\Socio-API\resources\views/home/index.blade.php ENDPATH**/ ?>