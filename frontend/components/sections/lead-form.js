import Button from "../elements/button";
import { useEffect, useState } from "react";
import { fetchAPI } from "utils/api";
import { nominalTypeHack } from "prop-types";

const LeadForm = ({ data }) => {
  const [email, setEmail] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  // Regex for valid email
  const regEmail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

  const handleClick = async () => {
    setLoading(true);
    // Save submission to Strapi
    try {
      await fetchAPI("/lead-form-submissions", {
        method: "POST",
        body: JSON.stringify({
          email,
          location: data.location,
        }),
      });
    } catch (err) {
      setError(err.message)
    }
    setLoading(false);
  };

  useEffect(() => {
    setError("");
    if (email.length > 0 && !regEmail.test(email)) {
      setError("Please enter a valid email");
    }
  }, [email]);

  return (
    <div className="py-10 text-center">
      <h1 className="text-3xl mb-10 font-bold mb-2">{data.title}</h1>
      <div className="flex flex-col items-center flex-wrap ">
        <div>
          <div className="flex gap-4">
            <input
              className="text-base focus:outline-none px-4 border-2 rounded-md"
              type="email"
              placeholder={data.emailPlaceholder}
              value={email}
              onChange={(e) => setEmail(e.target.value)}
            />
            <Button
              button={data.submitButton}
              loading={loading}
              handleClick={handleClick}
            />
          </div>
          <p className="text-red-500 h-12 text-sm mt-1 ml-2 text-left">{error}</p>
        </div>
      </div>
    </div>
  );
};

export default LeadForm;
