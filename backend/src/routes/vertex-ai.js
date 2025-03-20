const express = require("express");
const axios = require("axios");
const router = express.Router();

const VERTEX_AI_URL = "https://us-central1-aiplatform.googleapis.com/v1/projects/medicircl/locations/us-central1/publishers/google/models/:predict";

router.post("/", async (req, res) => {
  try {
    const response = await axios.post(VERTEX_AI_URL, req.body, {
      headers: {
        Authorization: `Bearer ${process.env.GOOGLE_API_KEY}`,
        "Content-Type": "application/json",
      },
    });

    res.json(response.data);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
