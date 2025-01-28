import { useState } from "react";

export function useAgreement() {
  const [agreement, setAgreement] = useState<string>('');

  const fetchAgreement = async (): Promise<void> => {
    const response = await fetch('/api/fetch-agreement')

    setAgreement(await response.json());
  };

  return {
    fetchAgreement,
    agreement
  }
}