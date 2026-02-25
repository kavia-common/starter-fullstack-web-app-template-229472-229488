#!/bin/bash
cd /home/kavia/workspace/code-generation/starter-fullstack-web-app-template-229472-229488/frontend_nextjs
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

