## One Command Deployment
It's a simple script to deploy node application into remote server via ftp.

## How to use
- Copy `deploy` folder.
- Paste to the root directory of your project.
- Change server credentials into giver parameters,
    - **server** _(Server host address)_
    - **user** _(Username)_
    - **password** _(Password)_
    - **server_path** _(Remote path in which project will be deployed)_
- Run __`./deploy/develop.sh`__ into command line to deploy into development environment.
- NB: Copy `develop.sh` and create new script for different environment like _staging_, _production_ etc. by changing build command to `npm run build -- --mode xxxxxxxx`. Here, _xxxxxxxx_ is the name of environment.

## Authors

_Initially development_ - **_Sadman Rafid_**

## License

The easy deploy script is open-source script licensed under the [MIT license](https://opensource.org/licenses/MIT).
