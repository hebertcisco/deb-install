const { spawn } = require("child_process");

const { program } = require("commander");
const package = require("./package.json");

program.version(package.version);

function Make(command) {
  const make = spawn(command, ["-la"]);

  make.stdout.on("data", (data) => {
    console.log(`stdout: ${data}`);
  });

  make.stderr.on("data", (data) => {
    console.log(`stderr: ${data}`);
  });

  make.on("error", (error) => {
    console.log(`error: ${error.message}`);
  });

  make.on("close", (code) => {
    console.log(`child process exited with code ${code}`);
  });
}

program
  .option("-i, --install", "install argument", Make("make"))
  .option("-c, --clear", "clear argument", Make("make clear"));

program.parse();
