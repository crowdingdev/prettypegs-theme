<form action="https://pay.mondido.com/v1/form" method="post" id="mondido_form" class="display:none;">
	<input type="hidden" name="payment_ref" value="a{$cart->id|escape:'htmlall':'UTF-8'}">
	<input type="hidden" name="customer_ref" value="{$customer->id|escape:'htmlall':'UTF-8'}">
	<input type="hidden" name="amount" value="{$total|escape:'htmlall':'UTF-8'}">
	<input type="hidden" name="currency" value="{$currency->iso_code|escape:'htmlall':'UTF-8'}">
	<input type="hidden" name="hash" value="{$hash}">
	<input type="hidden" name="merchant_id" value="{$merchantID}">
	<input type="hidden" name="success_url" value="{$this_path_ssl}validation.php">
	<input type="hidden" name="error_url" value="{$this_path_ssl}payment.php">
	<input type="hidden" name="test" value="{$test}">

	<input type="hidden" name="metadata[products]" value="{$metadata|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][firstname]" value="{$address->firstname|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][lastname]" value="{$address->lastname|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][address1]" value="{$address->address1|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][address2]" value="{$address->address2|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][postcode]" value="{$address->postcode|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][phone]" value="{$address->phone|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][phone_mobile]" value="{$address->phone_mobile|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][city]" value="{$address->city|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][country]" value="{$address->country|escape:'htmlall':'UTF-8'}" />
	<input type="hidden" name="metadata[customer][email]" value="{$customer->email|escape:'htmlall':'UTF-8'}" />
</form>

<script type="application/javascript">
jQuery(document).ready(function() {
	jQuery('#mondido').on('click', function(e) {
		jQuery('#mondido_form').submit();
		e.preventDefault();
		return false;
	});
});
</script>

<p class="payment_module" >
	<a id="mondido" href="#" title="{l s='Pay with your Credit Card' mod='mondidopay'}">
		
		<span class="mondido-title"> PRETTYPEGS PAYMENT</span>
	<br>({l s='Express payment, no registration' mod='mondidopay'})
		
		<img src="{$this_path}img/card_logos.png" alt="{l s='Pay with your Credit Card' mod='mondidopay'}" />
	

	<button class="btn btn-default button button-medium exclusive" style="float:right; margin-right: -22px;">
		<span  >Continue<i class="icon-chevron-right right"></i></span>
	</button>

	</a>

</p>
