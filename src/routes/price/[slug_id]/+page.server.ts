import { dbClient } from '$lib/db';

export async function load({ params }) {
  const { slug_id } = params;
  const index = slug_id.lastIndexOf("-");
  const id = slug_id.substring(index + 1);

  const db = await dbClient();
  const products = db.collection('products');

  const product = await products.findOne({ id: parseInt(id) });
  product._id = product._id.toString();
  return { product };
}