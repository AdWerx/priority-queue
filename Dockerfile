FROM ruby:2.6.6-slim

RUN apt-get update && apt-get install git build-essential
