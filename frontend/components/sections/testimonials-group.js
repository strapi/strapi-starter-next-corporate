import classNames from "classnames";
import { useState } from "react";
import Image from "../elements/image";
import CustomLink from "../elements/custom-link";

const TestimonialsGroup = ({ data }) => {
  // Only show one testimonial at a time
  const [selectedTestimonialIndex, setSelectedTestimonialIndex] = useState(0);
  const selectedTestimonial = data.testimonials[selectedTestimonialIndex];

  return (
    <section className="text-center text-lg bg-gray-200 pt-12 pb-16">
      <h2 className="title mb-4">{data.title}</h2>
      <p className="text-gray-700 mb-4">{data.description}</p>
      <CustomLink link={data.link}>
        <span className="with-arrow text-blue-700 hover:underline">
          {data.link.text}
        </span>
      </CustomLink>
      {/* Current testimonial card */}
      <div className="max-w-5xl w-8/12 sm:w-8/12 bg-white shadow-md sm:shadow-xl mx-auto flex flex-col sm:flex-row mt-10 text-left">
        <Image
          media={selectedTestimonial.picture}
          className="w-full md:w-4/12 object-cover flex-shrink-0"
        />
        <div className="px-4 py-4 sm:px-12 sm:pt-12 sm:pb-4 flex flex-col justify-between">
          <div>
            <Image
              media={selectedTestimonial.logo}
              className="h-8 w-auto mb-6 sm:mb-10 mt-2 sm:mt-0"
            />
            <p className="italic mb-6">"{selectedTestimonial.text}"</p>
            <p className="font-bold text-base sm:text-sm">
              {selectedTestimonial.authorName}
            </p>
            <p className="text-base sm:text-sm">
              {selectedTestimonial.authorTitle}
            </p>
          </div>
          <CustomLink link={{ url: selectedTestimonial.link, text: '', newTab: false, id: 0 }}>
            <span className="uppercase tracking-wide text-blue-700 hover:underline  with-arrow sm:self-end mt-6 sm:mt-0">
              Read story
            </span>
          </CustomLink>
        </div>
      </div>
      {/* Change selected testimonial (only if there is more than one) */}
      {data.testimonials.length > 1 && (
        <div className="flex flex-row gap-4 mt-10 justify-center">
          {data.testimonials.map((testimonial, index) => (
            <button
              onClick={() => setSelectedTestimonialIndex(index)}
              className={classNames(
                // Common classes
                "rounded-full h-3 w-3",
                {
                  "bg-gray-500": index !== selectedTestimonialIndex,
                  "bg-primary-600": index === selectedTestimonialIndex,
                }
              )}
              key={testimonial.id}
            ></button>
          ))}
        </div>
      )}
      {/* Logos list */}
      <div className="flex flex-row flex-wrap items-center gap-6 sm:gap-20 justify-center mt-10 px-6 sm:px-0">
        {data.logos.map((logo) => (
          <Image
            media={logo.logo}
            className="h-8 max-w-xs w-auto object-contain"
            key={logo.id}
          />
        ))}
      </div>
    </section>
  );
};

export default TestimonialsGroup;
