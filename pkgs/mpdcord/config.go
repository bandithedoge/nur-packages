package main

import (
	"fmt"
	"strings"

	"github.com/imkira/go-interpol"
)

func MergeMaps(maps ...map[string]string) map[string]string {
	result := map[string]string{}

	for _, m := range maps {
		for k, v := range m {
			result[strings.ToLower(k)] = v
		}
	}

	return result
}

func Formatted(s string, m map[string]string) string {
	formatted, err := interpol.WithMap(s, m)
	if err != nil {
		fmt.Println(s, ": ", err)
	}

	return formatted
}
