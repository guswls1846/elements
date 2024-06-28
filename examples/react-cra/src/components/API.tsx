import '@guswls1846/elements/styles.min.css';

import { API } from '@guswls1846/elements';
import React from 'react';

export const StoplightAPI: React.FC = () => {
  return (
    <API
      basePath="zoom-api"
      apiDescriptionUrl="https://raw.githubusercontent.com/stoplightio/Public-APIs/master/reference/zoom/openapi.yaml"
    />
  );
};
