# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rails_admin"
  s.version = "0.4.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5") if s.respond_to? :required_rubygems_version=
  s.authors = ["Erik Michaels-Ober", "Bogdan Gaza", "Petteri Kaapa", "Benoit Benezech"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDLjCCAhagAwIBAgIBADANBgkqhkiG9w0BAQUFADA9MQ8wDQYDVQQDDAZzZmVy\naWsxFTATBgoJkiaJk/IsZAEZFgVnbWFpbDETMBEGCgmSJomT8ixkARkWA2NvbTAe\nFw0xMzAyMDMxMDAyMjdaFw0xNDAyMDMxMDAyMjdaMD0xDzANBgNVBAMMBnNmZXJp\nazEVMBMGCgmSJomT8ixkARkWBWdtYWlsMRMwEQYKCZImiZPyLGQBGRYDY29tMIIB\nIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl0x5dx8uKxi7TkrIuyBUTJVB\nv1o93nUB9j/y4M96gV2rYwAci1JPBseNd6Fybzjo3YGuHl7EQHuSHNaf1p2lxew/\ny60JXIJBBgPcDK/KCP4NUHofm0jfoYD+H5uNJfHCNq7/ZsTxOtE3Ra92s0BCMTpm\nwBMMlWR5MtdEhIYuBO4XhnejYgH0L/7BL2lymntVnsr/agdQoojQCN1IQmsRJvrR\nduZRO3tZvoIo1pBc4JEehDuqCeyBgPLOqMoKtQlold1TQs1kWUBK7KWMFEhKC/Kg\nzyzKRHQo9yDYwOvYngoBLY+T/lwCT4dyssdhzRbfnxAhaKu4SAssIwaC01yVowID\nAQABozkwNzAJBgNVHRMEAjAAMB0GA1UdDgQWBBS0ruDfRak5ci1OpDNX/ZdDEkIs\niTALBgNVHQ8EBAMCBLAwDQYJKoZIhvcNAQEFBQADggEBAHHSMs/MP0sOaLkEv4Jo\nzvkm3qn5A6t0vaHx774cmejyMU+5wySxRezspL7ULh9NeuK2OhU+Oe3TpqrAg5TK\nR8GQILnVu2FemGA6sAkPDlcPtgA6ieI19PZOF6HVLmc/ID/dP/NgZWWzEeqQKmcK\n2+HM+SEEDhZkScYekw4ZOe164ZtZG816oAv5x0pGitSIkumUp7V8iEZ/6ehr7Y9e\nXOg4eeun5L/JjmjARoW2kNdvkRD3c2EeSLqWvQRsBlypHfhs6JJuLlyZPGhU3R/v\nSf3lVKpBCWgRpGTvy45XVpB+59y33PJmEuQ1PTEOYvQyao9UKMAAaAN/7qWQtjl0\nhlw=\n-----END CERTIFICATE-----\n"]
  s.date = "2013-06-02"
  s.description = "RailsAdmin is a Rails engine that provides an easy-to-use interface for managing your data."
  s.email = ["sferik@gmail.com", "bogdan@cadmio.org", "petteri.kaapa@gmail.com"]
  s.homepage = "https://github.com/sferik/rails_admin"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Admin for Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bootstrap-sass>, ["~> 2.2"])
      s.add_runtime_dependency(%q<builder>, ["~> 3.0"])
      s.add_runtime_dependency(%q<coffee-rails>, ["< 5", ">= 3.1"])
      s.add_runtime_dependency(%q<font-awesome-rails>, ["~> 3.0"])
      s.add_runtime_dependency(%q<haml>, ["~> 4.0"])
      s.add_runtime_dependency(%q<jquery-rails>, ["< 4", ">= 2.1"])
      s.add_runtime_dependency(%q<jquery-ui-rails>, ["~> 3.0"])
      s.add_runtime_dependency(%q<kaminari>, ["~> 0.14"])
      s.add_runtime_dependency(%q<nested_form>, ["~> 0.3"])
      s.add_runtime_dependency(%q<rack-pjax>, ["~> 0.6"])
      s.add_runtime_dependency(%q<rails>, ["~> 3.1"])
      s.add_runtime_dependency(%q<remotipart>, ["~> 1.0"])
      s.add_runtime_dependency(%q<safe_yaml>, ["~> 0.6"])
      s.add_runtime_dependency(%q<sass-rails>, ["~> 3.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<bootstrap-sass>, ["~> 2.2"])
      s.add_dependency(%q<builder>, ["~> 3.0"])
      s.add_dependency(%q<coffee-rails>, ["< 5", ">= 3.1"])
      s.add_dependency(%q<font-awesome-rails>, ["~> 3.0"])
      s.add_dependency(%q<haml>, ["~> 4.0"])
      s.add_dependency(%q<jquery-rails>, ["< 4", ">= 2.1"])
      s.add_dependency(%q<jquery-ui-rails>, ["~> 3.0"])
      s.add_dependency(%q<kaminari>, ["~> 0.14"])
      s.add_dependency(%q<nested_form>, ["~> 0.3"])
      s.add_dependency(%q<rack-pjax>, ["~> 0.6"])
      s.add_dependency(%q<rails>, ["~> 3.1"])
      s.add_dependency(%q<remotipart>, ["~> 1.0"])
      s.add_dependency(%q<safe_yaml>, ["~> 0.6"])
      s.add_dependency(%q<sass-rails>, ["~> 3.1"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bootstrap-sass>, ["~> 2.2"])
    s.add_dependency(%q<builder>, ["~> 3.0"])
    s.add_dependency(%q<coffee-rails>, ["< 5", ">= 3.1"])
    s.add_dependency(%q<font-awesome-rails>, ["~> 3.0"])
    s.add_dependency(%q<haml>, ["~> 4.0"])
    s.add_dependency(%q<jquery-rails>, ["< 4", ">= 2.1"])
    s.add_dependency(%q<jquery-ui-rails>, ["~> 3.0"])
    s.add_dependency(%q<kaminari>, ["~> 0.14"])
    s.add_dependency(%q<nested_form>, ["~> 0.3"])
    s.add_dependency(%q<rack-pjax>, ["~> 0.6"])
    s.add_dependency(%q<rails>, ["~> 3.1"])
    s.add_dependency(%q<remotipart>, ["~> 1.0"])
    s.add_dependency(%q<safe_yaml>, ["~> 0.6"])
    s.add_dependency(%q<sass-rails>, ["~> 3.1"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
