<div id="checkout-options" class="row">
	<div class="col-xs-12">
		<div class="pp-checkout-options">
			<div class="pp-checkout-heading">
				<h3>{l s='Pay now'}:</h3><p style="text-align: right;">({l s='Customers Worldwide'})</p>
			</div>

			<div class="pp-checkout-option pp-paypal-checkout" style="text-align: right;">

				<div>
					<span class="pp-payment-provider-services-logo pp-visa-logo"></span>
					<span class="pp-payment-provider-services-logo pp-mastercard-logo"></span>
					<span class="pp-payment-provider-services-logo pp-americanexpress-logo"></span>
					<span class="pp-payment-provider-services-logo pp-discovercard-logo"></span>
					<span class="pp-payment-provider-services-logo pp-paypal-logo"></span>
				</div>

				<span class="pp-small-paypal-logo"></span>

				<button type="submit" class="btn btn-default button button-medium exclusive" id="opc_regular_checkout">
					<span>{l s='Continue'}<i class="icon-chevron-right right"></i></span>
				</button>

			</div>

			<div>
				<p style="text-align: right;">({l s='For'} {l s='customers'} {l s='in'} {l s='Sweden'} {l s='and'} {l s='Norway'})</p>
			</div>

			<div class="pp-checkout-option pp-klarna-checkout" style="text-align: right; width: 173px;">
				<span class="pp-payment-provider-logo pp-klarna-logo"></span>

				<a href="{$link->getModuleLink('klarnacheckout', 'checkout_klarna')}" rel="nofollow" id="button_order_cart" class="btn btn-default button button-medium exclusive" title="{l s='Check out' mod='klarnacheckout'}">
					<span>{l s='Continue'}<i class="icon-chevron-right right"></i></span>
				</a>

			</div>
		</div>
	</div>
</div>

