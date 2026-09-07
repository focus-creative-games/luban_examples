#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

echo "Building Luban..."
rm -rf Luban
dotnet build ../../luban/src/Luban/Luban.csproj -c Release -o Luban

echo "Building Luban.Agent..."
rm -rf Luban.Agent
dotnet build ../../luban/src/Luban.Agent/Luban.Agent.csproj -c Release -o Luban.Agent

echo "Building Luban.Mcp..."
rm -rf Luban.Mcp
dotnet build ../../luban/src/Luban.Mcp/Luban.Mcp.csproj -c Release -o Luban.Mcp

echo
echo "Done. Outputs:"
echo "  $(pwd)/Luban"
echo "  $(pwd)/Luban.Agent"
echo "  $(pwd)/Luban.Mcp"
