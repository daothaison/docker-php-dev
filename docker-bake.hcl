# NOTE: This file was generated via generate.sh. Don't edit it directly

variable "REGISTRY" {
    default = "ghcr.io"
}

variable "REPO" {
    default = "daothaison/php-dev"
}

target "8_4_15-alpine3_21" {
    context = "./8.4/alpine3.21"
    cache-from = [
        "${REGISTRY}/${REPO}:8.4-alpine3.21"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-alpine3.21",
        "${REGISTRY}/${REPO}:8-alpine",
        "${REGISTRY}/${REPO}:8.4-alpine3.21",
        "${REGISTRY}/${REPO}:8.4-alpine",
        "${REGISTRY}/${REPO}:8.4.15-alpine3.21",
        "${REGISTRY}/${REPO}:8.4.15-alpine",
        "${REGISTRY}/${REPO}:alpine3.21",
        "${REGISTRY}/${REPO}:alpine",
    ]
}

target "8_4-alpine3_21" {
    inherits = ["8_4_15-alpine3_21"]
}
