require.config({
    paths: {
        'skeleton': 'src/skeleton',
        'jquery': 'vendor/jquery'
    }
});

require([
    'skeleton'
], function (
    Skeleton
) {
    Skeleton.yo();
});
