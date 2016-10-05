require.config({
    paths: {
        'skeleton': 'build/skeleton.min'
    }
});

require([
    'skeleton'
], function (
    Skeleton
) {
    Skeleton.yo();
});
