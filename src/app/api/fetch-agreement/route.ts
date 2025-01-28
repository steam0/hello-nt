export async function GET(): Promise<Response> {
  return fetch('http://api.dev.norsk-tipping.no/CustomerAgreementDastToHtml/v1/api/agreement/simplified/en');
}