module.exports = {
  hooks: {
    readPackage: pkg => {
      if (pkg.name === 'ssh2') {
        delete pkg.optionalDependencies['cpu-features']
        delete pkg.dependencies['cpu-features']
        console.log(pkg)
      }

      return pkg
    },
  },
}
