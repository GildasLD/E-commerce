import "./App.css";
import "./components/sass/main.scss";
import React, { useState } from "react";

import { Route, Routes } from "react-router-dom";
import { ToastContainer } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
/*   Components */
import Navbar from "./components/Navbar";
import NotFound from "./components/NotFound";
import CheckoutSuccess from "./components/CheckoutSuccess";
import Admin from "./Routes/Admin/Dashboard";
/*   Admin Crud Product */
import ListProducts from "./Routes/Admin/Product/ListProducts";
import AddProduct from "./Routes/Admin/Product/AddProduct";
import UpdateProduct from "./Routes/Admin/Product/UpdateProduct";

/*   Admin Crud Category */
import ListCategories from "./Routes/Admin/Categories/ListCategories";
import AddCategorie from "./Routes/Admin/Categories/AddCategorie";
import UpdateCategories from "./Routes/Admin/Categories/UpdateCategories";

/*   Admin Crud Category */

import ListOrders from "./Routes/Admin/Orders/ListOrders";

/*   Admin Crud Users */
import ListUsers from "./Routes/Admin/Users/ListUsers";
import UpdateUsers from "./Routes/Admin/Users/UpdateUsers";

/*   User */
import Profile from "./Routes/User/Profile";
import Register from "./Routes/User/Register";
import Login from "./Routes/User/Login";
import Products from "./Routes/User/Products";
import ProductDetails from "./Routes/User/ProductDetails";
import SearchResult from "./Routes/User/SearchResult";
import Cart from "./Routes/User/Cart";

function App() {
  const [category, setCategory] = useState();

  return (
    <>
      <ToastContainer />
      <Navbar category={category} setCategory={setCategory} />

      <Routes>
        <Route path="/" element={<Products category={category} />} />

        <Route path="/" element={<Products />} />
        <Route path="/profile" element={<Profile />} />
        <Route path="/register" element={<Register />} />
        <Route path="/login" element={<Login />} />
        <Route path="/product/:id" element={<ProductDetails />} />
        <Route path="/product/search" element={<SearchResult />} />
        <Route path="/product/cart" element={<Cart />} />

        <Route path="/success" element={<CheckoutSuccess />} />

        <Route path="/admin" element={<Admin />}>
          <Route path="products" element={<ListProducts />} />
          <Route path="product/add" element={<AddProduct />} />
          <Route path="product/edit/:id" element={<UpdateProduct />} />

          <Route path="categories" element={<ListCategories />} />
          <Route path="categorie/add" element={<AddCategorie />} />
          <Route path="categorie/edit/:id" element={<UpdateCategories />} />

          <Route path="orders" element={<ListOrders />} />

          <Route path="users" element={<ListUsers />} />
          <Route path="users/edit/:id" element={<UpdateUsers />} />
        </Route>

        <Route path="*" element={<NotFound />} />
      </Routes>
    </>
  );
}

export default App;
