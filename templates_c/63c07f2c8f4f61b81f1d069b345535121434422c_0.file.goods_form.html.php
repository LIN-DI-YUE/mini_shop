<?php
/* Smarty version 3.1.29, created on 2020-11-03 15:31:10
  from "C:\Users\Asus\Desktop\UniServerZ\www\mini_shop\templates\goods_form.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5fa177be3f0e43_06536126',
  'file_dependency' => 
  array (
    '63c07f2c8f4f61b81f1d069b345535121434422c' => 
    array (
      0 => 'C:\\Users\\Asus\\Desktop\\UniServerZ\\www\\mini_shop\\templates\\goods_form.html',
      1 => 1604417166,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fa177be3f0e43_06536126 ($_smarty_tpl) {
?>
<h1>編輯商品</h1>
<?php echo '<script'; ?>
 src="class/ckeditor/ckeditor.js"><?php echo '</script'; ?>
>
<form action="tool.php" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
    <div class="form-group">
        <label class="col-md-2 control-label">商品名稱：</label>
        <div class="col-md-10">
            <input type="text" class="form-control" name="goods_title" id="goods_title" placeholder="請輸入商品名稱" value="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
">
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">商品內容：</label>
        <div class="col-md-10">
            <textarea class="form-control" name="goods_content" id="goods_content" placeholder="請輸入商品內容"><?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_content'];?>
</textarea>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">商品價格：</label>
        <div class="col-md-10">
            <input type="text" class="form-control" name="goods_price" id="goods_price" placeholder="請輸入商品價格" value="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_price'];?>
">
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">商品圖片：</label>
        <div class="col-md-10">
            <input type="file" name="goods_pic" id="goods_pic">
            <?php if (isset($_smarty_tpl->tpl_vars['goods']->value['pic'])) {?>
                <img src="<?php echo $_smarty_tpl->tpl_vars['goods']->value['pic'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
">
            <?php }?>
        </div>
    </div>

    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <?php if (isset($_smarty_tpl->tpl_vars['goods']->value['goods_sn']) && $_smarty_tpl->tpl_vars['goods']->value['goods_sn'] > 0) {?>
                <input type="hidden" name="op" value="update_goods">
                <input type="hidden" name="goods_sn" value="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
">
            <?php } else { ?>
                <input type="hidden" name="op" value="insert_goods">
            <?php }?>
            <button type="submit" class="btn btn-primary">儲存商品</button>
        </div>
    </div>
</form>

<?php echo '<script'; ?>
>
    CKEDITOR.replace( 'goods_content' );
<?php echo '</script'; ?>
>
<?php }
}
