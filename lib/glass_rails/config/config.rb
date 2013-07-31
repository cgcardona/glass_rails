module GlassRails
  module Config
    MAJOR = 0
    MINOR = 0
    PATCH = 2
    PRE = 'beta'
    STRING = [MAJOR, MINOR, PATCH, PRE].join '.'

    DATE = Time.now.strftime '%Y-%m-%d'
  end
end
