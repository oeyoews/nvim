#!/usr/bin/env zx

const timestamp = new Date().getTime();
const buildDir = "/tmp/neovim-nightly-bin-";
const buildDirTimeStamp = buildDir + timestamp;

await $`rm -rf ${buildDir}* && mkdir ${buildDirTimeStamp}`;
await $`cp -r dev/* ${buildDirTimeStamp}`;
cd(buildDirTimeStamp);
await $`makepkg && sudo pacman -U neovim-dev*.zst --noconfirm`;
console.log(chalk.bold.cyan("Finished install neovim-dev"));
