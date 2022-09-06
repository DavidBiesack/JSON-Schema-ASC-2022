# JSON-Schema-ASC-2022

Material for David Biesack's 2022 API Specifications Conference presentation, _Wielding the Double-Edged Sword of JSON Schema_.

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
