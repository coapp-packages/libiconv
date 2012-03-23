@import "version.inc";
@import "outercurve.inc";

package {
    name: "libiconv[${flavor}]";
    version: "${package-version}";
    arch : "${arch}";
    
    display-name: "libiconv";
    location: "http://coapp.org/repository/${OutputFilename}";

    feed: "http://coapp.org/repository/packages.atom.xml";
    publisher: "CoApp Project";
}

files[dlls] {
    root: @"..\output\${flavor}\${arch}\Release\";
  
    include: {
        "libiconv.dll",
    };
    
    trim-path: all;
};

license[libiconv] {
    license-url: "http://www.gnu.org/licenses/lgpl.html";
    license-type: "LGPL";
}

files[files-to-sign] {
    include: { 
        dlls
    };    
}


metadata {
    summary: "libiconv";
    description:  @"libiconv"; 

    icon: @"libiconv.png";
    
    author-version : "1.13.1.0";
    bug-tracker: "https://github.com/coapp-packages/libiconv/issues";
    stability : "0";
    licenses : {
        LPGL
    };
}

compatability-policy {
    minimum: "1.13.1.0";
    maximum: "${OneLessThanCurrent}"; // this is the default
    versions : {
        "1.13",
    }; // if not specified, find the versions by looking at the feeds and finding all the major/minor versions in range.
}

assembly[libiconv[${flavor}]] {
    include : {
        dlls
    };
}
signing {
    attributes : {
        company="Outercurve Foundation",
        description="${Package.PackageDetails.Summary}",
        product-name="libiconv",
        product-version="${package-version}",
        file-version="${package-version}",
    };
    
    replace-signature: true; 
    include: { 
        files-to-sign
    };    
}