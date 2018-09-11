[![Build Status](https://travis-ci.org/mbarzegary/MyCV.svg?branch=master)](https://travis-ci.org/mbarzegary/MyCV)

# My CV
This repository mainly contains my CV, but in general, it could be treated as a Latex Template for an Academic Curriculum Vitae with a support of being automatically generated using Travis CI.

It is primarily based on [CV Template](), but I have just modified some part of it and have added Continuous Integration support, so it can be generated automatically each time you push your changes to the repository. In each push or pull request, a new release is created based on the specified tag, so it helps you to have a full backup of the previous versions of your CV in the release section.

You can also skip the CI part and use the template entirely for your own. In this case, you can easily build the template using the `$ xelatex main.tex` command locally, and then, you can have a permanent link to your CV just by using [http://nbviewer.jupyter.org]. For instance, my link is [http://nbviewer.jupyter.org/github/mbarzegary/MyCV/blob/master/main.pdf], and I can put it anywhere required. In this scenario, make sure to run `$ ./clean.sh` prior to pushing the changes to GitHub to clean the TeX output files.

## Instructions for Continuous Integration
If you want your CV be generated each time you push your changes to GitHub, first, create an account on [https://travis-ci.org/], and then, fork or clone this repository to your  GitHub account and add it to your Travis repositories.

Next step is to add a token to the repository. The most secure way for doing this is to encrypt a key and add it to the repository as illustrated [here](https://gist.github.com/qoomon/c57b0dc866221d91704ffef25d41adcf), but for simplicity, we just use Travis CI Client to generate a security key in the `.travis.yml` file. So the next step would be to install Travis client. Follow the steps on [this wiki page](https://github.com/travis-ci/travis.rb#installation) to install it on your local machine. Then, run the following command in the directory of your local repository:

`$ travis setup releases --force`

Fill the required fields as requested, and enter `_build/main.pdf` when it asks about files to upload. This command will overwrite the release section of the `.travis.yml` file, and you have to add few lines of code at the end (the final file should be just like this):

```yaml
sudo: required
dist: trusty
before_install:
- sudo apt-get -qq update && sudo apt-get install -y texlive-fonts-recommended
  texlive-latex-extra texlive-fonts-extra dvipng texlive-latex-recommended texlive-xetex fonts-font-awesome
script:
- mkdir _build
- xelatex -interaction=nonstopmode -halt-on-error -output-directory _build main.tex
deploy:
  provider: releases
  api_key:
    secure: [your_key]
  file: _build/main.pdf
  skip_cleanup: true
  on:
    tags: true
repo: [your_repository]
```
That's all. In this stage, each time you push new changes to your GitHub repository, a new virtual machine is instantiated on Travis CI, tex-live and required packages are downloaded, your CV is built, and a new release is created based on the tag you specified. Do not forget to create tags for each release and include the tags in each push, for example:

`$ git tag 0.1`

`$ git push origin master --tags`

You can check the progress on the Travis CI log console.
