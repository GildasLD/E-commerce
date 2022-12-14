import Label from "../../../components/label";
import Input from "../../../components/input";
import Button from "../../../components/button";
import Errors from "../../../components/errors";
import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

const AddCategorie = () => {
  const [name, setName] = useState("");
  const [slug, setSlug] = useState("");
  const [errors, setErrors] = useState([]);
  const navigate = useNavigate();

  const addCategorie = async () => {
    const categorie = { name, slug };
    try {
      console.log(categorie);
      const resp = await axios.post(
        "https://localhost:8000/api/categories",
        categorie
      );
      console.log(resp.data);
      navigate(-1);
    } catch (error) {
      if (error.response) {
        console.log(error);
        // setErrors(Object.values(error.response.data.validation_errors))
      }
    }
  };
  return (
    <>
      <div>
        <title>E-commerce ajouter categorie</title>
      </div>
      <button
        onClick={() => navigate(-1)}
        className="rounded-full bg-violet-500 py-2 px-4 font-bold text-white hover:bg-blue-700"
      >
        Back
      </button>
      <div className={"mx-auto w-1/2 rounded-lg bg-white p-5"}>
        <Errors className="mb-5" errors={errors} />

        <div>
          <Label htmlFor="email">Nom de Categorie</Label>

          <Input
            id="name"
            type="text"
            value={name}
            className="mt-1 block w-full"
            onChange={(event) => setName(event.target.value)}
            required
            autoFocus
            autoComplete="off"
          />
        </div>

        <div className="mt-4">
          <Label htmlFor="email">Slug</Label>

          <Input
            id="description"
            type="text"
            value={slug}
            className="mt-1 block w-full"
            onChange={(event) => setSlug(event.target.value)}
            required
          />
        </div>

        <div className="mt-4 flex items-center justify-end">
          <Button onClick={addCategorie} className="ml-3">
            Enregistrer
          </Button>
        </div>
      </div>
    </>
  );
};

export default AddCategorie;
