# Welcome to Samiksha's Web App

A simple Node.js web application deployed across GCP Cloud Run and Azure App Service with automated CI/CD.

## Quick Start

### Local Testing
```bash
npm install
node app.js
```

Visit `http://localhost:8080`

### Docker
```bash
docker build -t helloworld-app .
docker run -p 8080:8080 helloworld-app
```

## Project Structure

- `app.js` - Node.js web application
- `package.json` - Dependencies
- `Dockerfile` - Container configuration
- `.github/workflows/` - CI/CD pipeline
- `gcp/` - GCP Cloud Run configs
- `azure/` - Azure App Service configs
- `scripts/` - Automation scripts

## Deployment

### GitHub Actions (Automatic)
1. Push to main branch
2. Workflow automatically deploys to both GCP and Azure

### Manual Deployment

**GCP:**
```bash
gcloud run deploy helloworld-app --image gcr.io/PROJECT_ID/helloworld-app --platform managed --region us-central1 --allow-unauthenticated --port 8080
```

**Azure:**
```bash
az webapp create --resource-group helloworld-rg --plan helloworld-asp --name helloworld-app
```

## Features

- ✅ Multi-cloud deployment (GCP + Azure)
- ✅ Automated CI/CD with GitHub Actions
- ✅ Docker containerization
- ✅ Security policies (IAM, network rules)
- ✅ Autoscaling configuration
- ✅ Comprehensive monitoring

## Prerequisites

- Node.js 18+
- Docker
- GCP project with billing enabled
- Azure subscription
- GitHub account

## Security

- npm audit checks for vulnerabilities
- Service account credentials via GitHub Secrets
- IAM role-based access control
- Network security groups and firewall rules

## Monitoring

- GCP: Cloud Monitoring dashboards
- Azure: Azure Monitor metrics
- GitHub Actions: View logs at https://github.com/Samiksha998/HelloWorld_WebApp/actions

## Documentation

For detailed guides, see:
- `DEPLOYMENT-GUIDE.md` - Step-by-step deployment
- `ARCHITECTURE.md` - System design
- `SECURITY-AUTOSCALING.md` - Advanced configuration

## Cost

- GCP Cloud Run: ~$5-20/month (low traffic)
- Azure App Service: ~$10-40/month (low traffic)

## Support

For issues or questions, check the troubleshooting section in the detailed guides or review GitHub Actions logs.

## License

MIT
