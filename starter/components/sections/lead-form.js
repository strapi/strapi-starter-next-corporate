import { useState } from "react"
import { fetchAPI } from "utils/api"
import * as yup from "yup"
import { Formik, Form, Field } from "formik"
import Button from "../elements/button"

const LeadForm = ({ data }) => {
  const [loading, setLoading] = useState(false)

  const LeadSchema = yup.object().shape({
    email: yup.string().email().required(),
  })

  return (
    <div className="py-10 text-center">
      <h1 className="text-3xl mb-10 font-bold mb-2">{data.title}</h1>
      <div className="flex flex-col items-center">
        <Formik
          initialValues={{ email: "" }}
          validationSchema={LeadSchema}
          onSubmit={async (values, { setSubmitting, setErrors }) => {
            setLoading(true)

            try {
              setErrors({ api: null })
              await fetchAPI("/lead-form-submissions", {
                method: "POST",
                body: JSON.stringify({
                  email: values.email,
                  location: data.location,
                }),
              })
            } catch (err) {
              setErrors({ api: err.message })
            }

            setLoading(false)
            setSubmitting(false)
          }}
        >
          {({ errors, touched, isSubmitting }) => (
            <div>
              <Form className="flex flex-col md:flex-row gap-4">
                <Field
                  className="text-base focus:outline-none py-4 md:py-0 px-4 border-2 rounded-md"
                  type="email"
                  name="email"
                  placeholder={data.emailPlaceholder}
                />
                <Button
                  type="submit"
                  button={data.submitButton}
                  disabled={isSubmitting}
                  loading={loading}
                />
              </Form>
              <p className="text-red-500 h-12 text-sm mt-1 ml-2 text-left">
                {(errors.email && touched.email && errors.email) || errors.api}
              </p>
            </div>
          )}
        </Formik>
      </div>
    </div>
  )
}

export default LeadForm
