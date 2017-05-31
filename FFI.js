"use strict"

function callEffAsCurried(f, args) {
  return args.reduce(function(prev, curr) {
    return prev(curr);
  }, f)();
}

exports.unsafeSetFieldEff = function(key) {
  return function(x) {
    return function(obj) {
      return function() {
        if (x instanceof Function) {
          obj[key] = function() {
            return callEffAsCurried(x, Array.prototype.slice.call(arguments))
          }
        } else {
          obj[key] = x
        }
      }
    }
  }
}

exports.unsafeGetField = function(key) {
  return function(obj) {
    return obj[key]
  }
}

exports.runFn0 = function(key) {
  return function(obj) {
    return obj[key]()
  }
}

exports.runFn1 = function(key) {
  return function(obj) {
    return function(a) {
      return obj[key](a)
    }
  }
}

exports.runFn2 = function(key) {
  return function(obj) {
    return function(a) {
      return function(b) {
        return obj[key](a, b)
      }
    }
  }
}

exports.runEffFn0 = function(key) {
  return function(obj) {
    return function() {
      return obj[key]()
    }
  }
}

exports.runEffFn1 = function(key) {
  return function(obj) {
    return function(a) {
      return function() {
        return obj[key](a)
      }
    }
  }
}

exports.runEffFn2 = function(key) {
  return function(obj) {
    return function(a) {
      return function(b) {
        return function() {
          return obj[key](a, b)
        }
      }
    }
  }
}

exports.runEffFn3 = function(key) {
  return function(obj) {
    return function(a) {
      return function(b) {
        return function(c) {
          return function() {
            return obj[key](a, b, c)
          }
        }
      }
    }
  }
}

exports.runEffFn6 = function(key) {
  return function(obj) {
    return function(a) {
      return function(b) {
        return function(c) {
          return function(d) {
            return function(e) {
              return function(f) {
                return function() {
                  return obj[key](a, b, c, d, e, f)
                }
              }
            }
          }
        }
      }
    }
  }
}

exports.merge = function (dict) {
  return function (l) {
    return function (r) {
      return Object.assign({}, l, r)
    }
  }
}
