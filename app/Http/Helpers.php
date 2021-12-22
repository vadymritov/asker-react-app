<?php
use App\Models\Message;
use App\Models\Category;
use App\Models\PostTag;
use App\Models\PostCategory;
use App\Models\Order;
use App\Models\Wishlist;
use App\Models\Shipping;
use App\Models\Cart;
use Illuminate\Http\Request;

class Helper{
    
    /**
     * Without read display message list
     * 
     * @return array
     */
    public static function messageList()
    {
        return Message::whereNull('read_at')->orderBy('created_at', 'desc')->get();
    }
    
    /**
     * Display All category parent and child
     * 
     * @return array
     */
    public static function getAllCategory(){
        $category=new Category();
        $menu=$category->getAllParentWithChild();
        return $menu;
    } 
    
    /**
     * Front Side header in display catergory and subcategory  
     */
    public static function getHeaderCategory(){
        $category = new Category();
        // dd($category);
        $menu=$category->getAllParentWithChild();

        if($menu){
            ?>
            
            <li>
            <a href="javascript:void(0);">Category<i class="ti-angle-down"></i></a>
                <ul class="dropdown border-0 shadow">
                <?php
                    foreach($menu as $cat_info){
                        if($cat_info->child_cat->count()>0){
                            ?>
                            <li><a href="<?php echo route('product-cat',$cat_info->slug); ?>"><?php echo $cat_info->title; ?></a>
                                <ul class="dropdown sub-dropdown border-0 shadow">
                                    <?php
                                    foreach($cat_info->child_cat as $sub_menu){
                                        ?>
                                        <li><a href="<?php echo route('product-sub-cat',[$cat_info->slug,$sub_menu->slug]); ?>"><?php echo $sub_menu->title; ?></a>
                                        
                                        <?php
                                            $sub_cat = \App\Models\Category::where('parent_id',$sub_menu->id)->get()->toArray();
                                            if(!empty($sub_cat)){
                                        ?>
                                        <ul class="dropdown sub-dropdown border-0 shadow" style="margin: -10px;">
                                            <?php
                                            foreach ($sub_cat as $sub_key => $sub_value){
                                            ?>
                                            <li><a class="" href="<?php echo route('product-sub-cat',[$cat_info->slug,$sub_menu->slug,$sub_value['slug']]);?>" ><?php echo $sub_value['title']; ?></a></li>
                                            <?php } ?>
                                        </ul>
                                        <?php } ?>
                                    </li>
                                        
                                        
                                    <!-- </li> -->
                                    <?php
                                    }
                                    ?>
                                </ul>
                            </li>
                            <?php
                        }
                        else{
                            ?>
                                <li><a href="<?php echo route('product-cat',$cat_info->slug);?>"><?php echo $cat_info->title; ?></a></li>
                            <?php
                        }
                    }
                    ?>
                </ul>
            </li>
        <?php
        }
    }

    /**
     * Display Category wise product 
     * 
     * @param $option string
     * @return array
     */
    public static function productCategoryList($option='all'){
        if($option='all'){
            return Category::orderBy('id','DESC')->get();
        }
        return Category::has('products')->orderBy('id','DESC')->get();
    }

    /**
     * Display post wise tag 
     * 
     * @param $option string
     * @return array
     */
    public static function postTagList($option='all'){
        if($option='all'){
            return PostTag::orderBy('id','desc')->get();
        }
        return PostTag::has('posts')->orderBy('id','desc')->get();
    }

    /**
     * Display Category wise post
     * 
     * @param $option string
     * @return array
     */
    public static function postCategoryList($option="all"){
        if($option='all'){
            return PostCategory::orderBy('id','DESC')->get();
        }
        return PostCategory::has('posts')->orderBy('id','DESC')->get();
    }

    /**
     * Display count cart
     * 
     * @param $user_id int
     * @return array or int
     */
    public static function cartCount($user_id=''){
       
        if(Auth::check()){
            if($user_id=="") $user_id=auth()->user()->id;
            return Cart::where('user_id',$user_id)->where('order_id',null)->sum('quantity');
        }
        else{
            return 0;
        }
    }

    /**
     * Relationship cart with product
     * 
     * @return array
     */
    public function product(){
        return $this->hasOne('App\Models\Product','id','product_id');
    }

    /**
     * Dispaly All product from cart 
     * 
     * @param $user_id int
     * @return array or int
     */
    public static function getAllProductFromCart($user_id=''){
        if(Auth::check()){
            if($user_id=="") $user_id=auth()->user()->id;
            return Cart::with('product')->where('user_id',$user_id)->where('order_id',null)->get();
        }
        else{
            return 0;
        }
    }

    /**
     * Total amount cart
     * 
     * @param $user_id int
     * @return array or int
     */
    public static function totalCartPrice($user_id=''){
        if(Auth::check()){
            if($user_id=="") $user_id=auth()->user()->id;
            return Cart::where('user_id',$user_id)->where('order_id',null)->sum('amount');
        }
        else{
            return 0;
        }
    }

    /**
     * Wishlist count
     * 
     * @param $user_id int
     * @return array or int
     */
    public static function wishlistCount($user_id=''){
       
        if(Auth::check()){
            if($user_id=="") $user_id=auth()->user()->id;
            return Wishlist::where('user_id',$user_id)->where('cart_id',null)->sum('quantity');
        }
        else{
            return 0;
        }
    }

    /**
     * get product wise wishlist 
     * 
     * @param user_id int
     * @return array or int
     */
    public static function getAllProductFromWishlist($user_id=''){
        if(Auth::check()){
            if($user_id=="") $user_id=auth()->user()->id;
            return Wishlist::with('product')->where('user_id',$user_id)->where('cart_id',null)->get();
        }
        else{
            return 0;
        }
    }

    /**
     * count wishlist price
     * 
     * @param $user_id int
     * @return array or int
     */
    public static function totalWishlistPrice($user_id=''){
        if(Auth::check()){
            if($user_id=="") $user_id=auth()->user()->id;
            return Wishlist::where('user_id',$user_id)->where('cart_id',null)->sum('amount');
        }
        else{
            return 0;
        }
    }

    /**
     * Total price with Shipping and coupan
     * 
     * @param id int
     * @param $user_id int
     * @return float or int
     */
    public static function grandPrice($id,$user_id){
        $order=Order::find($id);
        dd($id);
        if($order){
            $shipping_price=(float)$order->shipping->price;
            $order_price=self::orderPrice($id,$user_id);
            return number_format((float)($order_price+$shipping_price),2,'.','');
        }else{
            return 0;
        }
    }

    /**
     * Admin Dashboard which order delivered 
     * 
     * @return float 
     */
    public static function earningPerMonth(){
        $month_data=Order::where('status','delivered')->get();
        // return $month_data;
        $price=0;
        foreach($month_data as $data){
            $price = $data->cart_info->sum('price');
        }
        return number_format((float)($price),2,'.','');
    }

    /**
     * shipping modules in order by
     * 
     * @return array
     */
    public static function shipping(){
        return Shipping::orderBy('id','DESC')->get();
    }

    /**
     * print and exit the value
     * 
     * @param $print_detail array
     * @return template
     */
    public static function print_exit($print_detail){
        $pre = "<pre>";
        $pre .= print_r($print_detail);exit();
        $pre .= "</pre>";
        return $pre;
    }

    public static function lang_message($constant)
    {
        $messages = \DB::table('language_messages')->where('constant',$constant)->pluck('en_value')->first();
        return $messages;
    }

    public static function send_email($user,$asker_code,$asker_author)
    {
        $email = $user;
        // Helper::print_exit($user['email']);
        // $details = [
        //     'title'=>$title,
        //     'body'=>$description
        // ];
        // $mail_details = \App\Models\Settings::select('mail_from_name','mail_from_address')->first();

      Mail::send(['html'=>'send_email'], ['asker_code' => $asker_code,'asker_author'=>$asker_author], function($message) use ($email,$asker_code) {
        $message->to($email)->subject("Candidate, your asker code")->setBody($asker_code);
        $message->from(env('MAIL_FROM_ADDRESS'),env('MAIL_FROM_NAME'));
     });
        // \Mail::to($user['email'])->send(new \App\Mail\MyTestMail($details));
        return request()->session()->flash('success',Helper::lang_message('EMAIL_SEND_SUCCESS'));

    }
}

?>