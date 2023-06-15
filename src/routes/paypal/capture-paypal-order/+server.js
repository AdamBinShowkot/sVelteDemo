import { json, Response } from '@sveltejs/kit';
import * as paypal from '$lib/server/paypal-api'

export async function POST({ request }) {
	const { orderID } = await request.json();
  try {
    const captureData = await paypal.capturePayment(orderID);
    return json(captureData);
  } catch (err) {
    return json(err.message);
  }
}
