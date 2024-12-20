import { dbClient } from '$lib/db';

export async function load() {
  const db = await dbClient();
  const collection = db.collection('products');
  const products = await collection.find().toArray();

  const updatedProducts = products.map(product => ({
    ...product,
    _id: product._id.toString()
  }));

  return { products: updatedProducts };
}