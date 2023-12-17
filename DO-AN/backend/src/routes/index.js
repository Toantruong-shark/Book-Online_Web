// import homeRouter from './home.js'
import userRouter from './user.js'
import homeRouter from './home.js'
import productRouter from './product.js'
import orderRouter from './order.js'
import category from './category.js'
import banner from './banner.js'
import rating from './rating.js'
function route(app) {

    // app.use(flash());
    // app.use('/home', homeRouter);
    app.use('/user', userRouter);
    app.use('/home', homeRouter);
    app.use('/product', productRouter);
    app.use('/order', orderRouter);
    app.use('/category', category);
    app.use('/banner', banner);
    app.use('/rating', rating);


}

export { route };