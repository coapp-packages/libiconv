@import "version.inc" ;
@import "outercurve.inc" ;

package {
    name: "libiconv-dev[${flavor}]";
    version: "${package-version}";
    arch : "${arch}";

    display-name: "libiconv developer library";
}

metadata {
    summary: "The libiconv developer library";
    description: @"libiconv"; 

    icon: @"libiconv.png";
    
    author-version : "1.13.1";
    bug-tracker: "https://github.com/coapp-packages/libiconv/issues";
    stability : "0";
    licenses : {
        LGPL
    };
}

files[libs] {
    root: @"..\output\${flavor}\${arch}\Release\";
    
    include: {
        "libiconv.lib",
        "libiconv-static.lib"
    };
    
    trim-path: all;
};

requires {
    package: "libiconv-dev-common-${package-version}-any-${Package.PublicKeyToken}";
    package: "libiconv[${flavor}]-${package-version}-${Package.Architecture}-${Package.PublicKeyToken}";
}

developer-library[libiconv] {
    libraries : {
        libs
    };
}