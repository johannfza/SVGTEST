#!/bin/bash
START_DATE=$(date +"%s")

git diff --cached --diff-filter=ACMR --name-only -- "*.swift" | while read filename; do
    swift run swiftlint lint --path "$filename";
done

END_DATE=$(date +"%s")

DIFF=$(($END_DATE - $START_DATE))
echo "SwiftLint took $(($DIFF / 60)) minutes and $(($DIFF % 60)) seconds to complete."

