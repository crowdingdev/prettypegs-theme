<div id="checkout-options" class="row">
	<div class="pp-checkout-options">
		<div class="pp-checkout-heading">
	<h3>{l s='Pay now'} </h3>
</div>

		<div class="pp-checkout-option pp-klarna-checkout">
			<span class="pp-payment-provider-logo pp-klarna-logo"></span>


			<p>{l s='For'} {l s='customers'} {l s='in'} {l s='Sweden'} {l s='and'} {l s='Norway'}.</p>
			<a href="{$link->getModuleLink('klarnacheckout', 'checkout_klarna')}" rel="nofollow" id="button_order_cart" class="btn btn-default button button-medium exclusive" title="{l s='Check out' mod='klarnacheckout'}"><span>{l s='Continue' mod='klarnacheckout'} >></span> </a>

		</div>

		<div class="pp-checkout-option pp-paypal-checkout">
			<span class="pp-payment-provider-logo pp-paypal-logo"></span>

			<p>{l s='For customers worldwide'} </p>
			<div>
				<span class="pp-payment-provider-services-logo pp-visa-logo"></span>
				<span class="pp-payment-provider-services-logo pp-mastercard-logo"></span>
				<span class="pp-payment-provider-services-logo pp-americanexpress-logo"></span>
				<span class="pp-payment-provider-services-logo pp-discovercard-logo"></span>
			</div>

			<span class="pp-small-paypal-logo"></span>

			<button type="submit" class="btn btn-default button button-medium exclusive" id="opc_regular_checkout"><span>{l s='Continue >>'}</span></button>

		</div>
	</div>
</div>

