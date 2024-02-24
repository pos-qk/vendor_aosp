CUSTOM_DATE_YEAR := $(shell date +%Y)
CUSTOM_DATE_MONTH := $(shell date +%m)
CUSTOM_DATE_DAY := $(shell date +%d)
CUSTOM_DATE_HOUR := $(shell date +%H)
CUSTOM_DATE_MINUTE := $(shell date +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) CST' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 14.0

CUSTOM_VERSION := PixelOS_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)
CUSTOM_VERSION_PROP := fourteen

PRODUCT_SYSTEM_PROPERTIES += \
  ro.custom.build.version=$(CUSTOM_PLATFORM_VERSION) \
  ro.custom.maintainer=$(CUSTOM_MAINTAINER)
