require("dotenv").config();
const express = require("express");
const cors = require("cors");


const vertexRoutes = require("./routes/vertex-ai");

const app = express();
app.use(cors());
app.use(express.json());


app.use("/api/vertex-ai", vertexRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
