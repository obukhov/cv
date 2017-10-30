markdownpdf()
  .from("./README.md")
  .to(
    "/CV_Aleksandr_Obukhov.pdf",
    function () {
      console.log("Done")
    }
  );
