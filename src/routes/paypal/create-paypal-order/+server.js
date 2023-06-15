import { json } from '@sveltejs/kit';
import * as paypal from '$lib/server/paypal-api'

export async function POST({ request }) {
  let cart = await request.json()
	try {
    const order = await paypal.createOrder(cart);
    return json(order);
  } catch (err) {
    return json(err.message);
  }

}
