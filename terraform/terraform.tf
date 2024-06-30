terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random" # for random text
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4" # for kubernates certifacte 
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"   
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0" # kubernate provider version
    }
  }

  backend "s3" {
    bucket = "vprofileactions9999" # replace with bucket name 
    key    = "terraform.tfstate" # the will create this file in this bucket to maintain the state 
    region = "us-east-2"
    /*
لانك لو ماحطيته القيت هب اكشن
راح يشغل كونتينر يجرب التيرا فورم ثم يحذف الكونتينر
كذا راحت الستيت

    */
  }

  #required_version = "~> 1.6.3" # الاصدار المطلوب للterraform
}
##
##
##
#