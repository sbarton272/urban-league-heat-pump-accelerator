import React from "react";
import { Box, Grid, Typography } from "@mui/material";

const About = () => {
  return (
    <Box
      sx={{
        width: "100%",
        height: "500px",
        backgroundSize: "cover",
        backgroundPosition: "bottom",
        position: "relative",
        zIndex: "-1",
        flexGrow: 1,
      }}
    >
      <Grid
        container
        display="flex"
        justifyContent="center"
        alignItems="center"
        sx={{ height: "100%" }}
      >
        <Grid item display="flex" flexDirection="column" alignItems="center">
          <Typography
            variant="h4"
            mb={3}
            textAlign="center"
            sx={{ color: "#000" }}
          >
            About us
          </Typography>
        </Grid>
      </Grid>
    </Box>
  );
};

export default About;
