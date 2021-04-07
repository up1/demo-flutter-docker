# FROM google/dart
# WORKDIR /app
# COPY . .
# CMD ["dart", "run", "1.dart"]

FROM google/dart
WORKDIR /app
COPY . .

FROM subfuzion/dart-scratch
COPY --from=0 /usr/lib/dart/bin/dart /usr/lib/dart/bin/dart
COPY --from=0 /app /app
EXPOSE 3000
ENTRYPOINT ["/usr/lib/dart/bin/dart", "/app/1.dart"]