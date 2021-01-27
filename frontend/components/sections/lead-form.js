import Markdown from "react-markdown";
import ButtonLink from "../elements/button-link";
import Image from "../elements/image";
import Button from "../elements/button";
import { getButtonAppearance } from "utils/button";
import { useState } from "react";
import { fetchAPI } from "utils/api";

const LeadForm = ({ data }) => {
  const [email, setEmail] = useState('');

  const handleClick = () => {
    // Save submission to Strapi
    fetchAPI('/lead-form-submissions', {
      method: 'POST',
      body: JSON.stringify({
        email,
        location: data.location,
      }),
    });
  };

  return (
    <div className="py-10 text-center">
      <h1 className="text-3xl mb-10 font-bold mb-2">{data.title}</h1>
      <div className="container flex flex-row justify-center flex-wrap gap-4">
        <input
          className="text-base focus:outline-none px-4 border-2 rounded-md"
          type="email"
          placeholder={data.emailPlaceholder}
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        />
        <Button button={data.submitButton} handleClick={handleClick} />
      </div>
    </div>
  );
};

export default LeadForm;
