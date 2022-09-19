# JSON-Schema-ASC-2022

Material for David Biesack's 2022 API Specifications Conference
presentation,
[_Wielding the Double-Edged Sword of JSON Schema_](https://sched.co/1B6n2).

## Resources

Below are some additional resources cited in the talk.

* Ben Hutton: Two ASC'22 talks (?)
* Jason Desrosiers: ASC'22 on [JSON Schema vocabularies](https://sched.co/1AIqb)
* [github.com/json-schema-org/vocab-idl](https://github.com/json-schema-org/vocab-idl)
* [github.com/terryweiss/jsm](https://github.com/terryweiss/jsm)
* [github.com/notEthan/jsi](https://github.com/notEthan/jsi)
* [github.com/bcherny/json-schema-to-typescript](https://github.com/bcherny/json-schema-to-typescript)
* [github.com/DavidBiesack/JSON-Schema-ASC-2022](https://github.com/DavidBiesack/JSON-Schema-ASC-2022)

## Presentation

Download the Powerpoint .ppm file [here](https://github.com/DavidBiesack/JSON-Schema-ASC-2022/blob/main/Wielding%20the%20Double-Edged%20Sword%20of%20JSON%20Schema.pptm).
This file has macros enabled for slide #35. If you wish to view the
presentation as recorded and are comfortable enabling macros, please do
so.
If no, do not enable macros, but slide #35 will not be interactive.
The slide #35 content as recorded presented is in the previous 6 hidden slides.

## codegen.sh

`codegen.sh` is a small script to demonstrate the effects of running `swagger-codegen` on the sample
`openapi.yaml` source file, for TypeScript, Java, and Go.

To use, first install `swagger-codegen`. For example, on Macos, use

```bash
brew install swagger-codegen
```

or if you have Node.js, you can us

```bash
npm i -g swagger-codegen-cli
```

**Note**: `swagger-codegen` requires a Java Runtime Environment, such as Java 18, in your PATH:

```bash
brew install java
```

Then, run

```bash
./codegen.sh
```

View the results in the `gen/sdk` folders. For example,
`gen/sdk/allOf/typescript-angular`
shows the output for using the `allOf` construct for schema composition,
applied to the `typescript-angular` language target.

The script was built and tested on Macos but should run fine on Linux or
the [Windows Subsystem for
Linux](https://docs.microsoft.com/en-us/windows/wsl/about).
