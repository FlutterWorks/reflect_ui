'use client';

import { useState } from 'react';
import { type getDictionary } from '../get-dictionary';

export function Counter({
  dictionary,
}: {
  dictionary: Awaited<ReturnType<typeof getDictionary>>['counter'];
}) {
  const [count, setCount] = useState(0);
  return (
    <p>
      This component is rendered on client:
      <button onClick={() => setCount((n) => n - 1)} type="button">
        {dictionary.decrement}
      </button>
      {count}
      <button onClick={() => setCount((n) => n + 1)} type="button">
        {dictionary.increment}
      </button>
    </p>
  );
}
