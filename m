Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 264EA5FE3BF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Oct 2022 23:07:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDEBD3F5D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Oct 2022 21:07:34 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id 9D2EE3EF90
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Oct 2022 21:07:14 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id a26so6577856ejc.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Oct 2022 14:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IZ5njUsMjpaWj9YOz1Vm++un7O5+eC1XTxzvAZerpow=;
        b=faWAR8yx9y/ximCfiagbNCy/0PAKrBsY8wEvnxUxd7VFrwze8WrW/LXuOEsD1B1MgC
         bmzapz1zdHF1jE76T+mA54DNMXKki/cswG3sXkx6RAEOiC9LYHXvBWUkBqkVC/OutC6w
         TBoPedYKZEP4+ld5ZJzts0nQv+3AjeM1WBzF9oIZsaGYMjz2koC525mlMh4cImsSStp6
         XSWzJkXeoFofq4dZ0tkjtoHD4Jl4nliDAg9B+Vd6RKf38AjPS//hn7h+QcZjjgk0xM+g
         X3Q+S3ElOX8GsPkSJbBAoFNFKK+vjKbNMwCVHL9RQlOConV4BRjaHXXF9yIEoDbdhF1L
         19Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IZ5njUsMjpaWj9YOz1Vm++un7O5+eC1XTxzvAZerpow=;
        b=kWXyt/yNMqxKidtWINitiEEO39I37tO50Ms4hA7vGfsdQPKuT6NpsWYBIKGj0LDHp0
         YiB4QEUqnWKZ35JB6l81Hca+aV+VK01bkOrEXV3oSbFYrIKBbH/3JSEIzRm4UpP/4azi
         gy0djLUpRAAIAKnU6qBUhmNntuDi7eUuCzpVfc4AnMNyQ/aoODCJWSL+y0nHBEWYNPCq
         BvLwPkaOupsgwjDd7kVB8UMEx8qdVDyBV3cEaIX9f77OR4Gp2Y0kBWvtXACLSijMsx5P
         NoxQqVI+Stb1g/w7xkHNi/H+YkUDqAEzo28rGrLnA4mvn8n2l+DUXJt8Odq/Vc8R7t4/
         HftQ==
X-Gm-Message-State: ACrzQf0tRIilc4ovccv+7+EdsJHe3wPOR4kq4I8b0JpICf7xA37XpSnZ
	nbvXAAeG7PBmCDiVoHvzFsI=
X-Google-Smtp-Source: AMsMyM4cU3vLsTSiWCSsbEcY7UV+UJBrC5a07f1dY57EL9s1EUxZ5n3i98uvEdXbgJXpbA6zfUHWAw==
X-Received: by 2002:a17:907:980e:b0:78d:b6d5:661e with SMTP id ji14-20020a170907980e00b0078db6d5661emr1253849ejc.46.1665695233566;
        Thu, 13 Oct 2022 14:07:13 -0700 (PDT)
Received: from localhost.localdomain (host-95-250-231-122.retail.telecomitalia.it. [95.250.231.122])
        by smtp.gmail.com with ESMTPSA id v25-20020a17090651d900b0078da24ea9c7sm443973ejk.17.2022.10.13.14.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Oct 2022 14:07:12 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Christian Brauner <brauner@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Kees Cook <keescook@chromium.org>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	linux-hwmon@vger.kernel.org,
	linux-hardening@vger.kernel.org
Date: Thu, 13 Oct 2022 23:07:14 +0200
Message-Id: <20221013210714.16320-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 9D2EE3EF90
X-Spamd-Result: default: False [-5.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.218.49:from,95.250.231.122:received];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.49:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,kernel.org,linaro.org,suse.com,roeck-us.net,chromium.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,intel.com]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=faWAR8yx;
	spf=pass (lists.linaro.org: domain of fmdefrancesco@gmail.com designates 209.85.218.49 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Message-ID-Hash: DA6LKCETO4WC2JNW35DSB2HCZJPXQD2O
X-Message-ID-Hash: DA6LKCETO4WC2JNW35DSB2HCZJPXQD2O
X-MailFrom: fmdefrancesco@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>, Ira Weiny <ira.weiny@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/radeon: Replace kmap() with kmap_local_page()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DA6LKCETO4WC2JNW35DSB2HCZJPXQD2O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHVzZSBvZiBrbWFwKCkgaXMgYmVpbmcgZGVwcmVjYXRlZCBpbiBmYXZvciBvZiBrbWFwX2xv
Y2FsX3BhZ2UoKS4NCg0KVGhlcmUgYXJlIHR3byBtYWluIHByb2JsZW1zIHdpdGgga21hcCgpOiAo
MSkgSXQgY29tZXMgd2l0aCBhbiBvdmVyaGVhZCBhcw0KdGhlIG1hcHBpbmcgc3BhY2UgaXMgcmVz
dHJpY3RlZCBhbmQgcHJvdGVjdGVkIGJ5IGEgZ2xvYmFsIGxvY2sgZm9yDQpzeW5jaHJvbml6YXRp
b24gYW5kICgyKSBpdCBhbHNvIHJlcXVpcmVzIGdsb2JhbCBUTEIgaW52YWxpZGF0aW9uIHdoZW4g
dGhlDQprbWFw4oCZcyBwb29sIHdyYXBzIGFuZCBpdCBtaWdodCBibG9jayB3aGVuIHRoZSBtYXBw
aW5nIHNwYWNlIGlzIGZ1bGx5DQp1dGlsaXplZCB1bnRpbCBhIHNsb3QgYmVjb21lcyBhdmFpbGFi
bGUuDQoNCldpdGgga21hcF9sb2NhbF9wYWdlKCkgdGhlIG1hcHBpbmdzIGFyZSBwZXIgdGhyZWFk
LCBDUFUgbG9jYWwsIGNhbiB0YWtlDQpwYWdlIGZhdWx0cywgYW5kIGNhbiBiZSBjYWxsZWQgZnJv
bSBhbnkgY29udGV4dCAoaW5jbHVkaW5nIGludGVycnVwdHMpLg0KSXQgaXMgZmFzdGVyIHRoYW4g
a21hcCgpIGluIGtlcm5lbHMgd2l0aCBISUdITUVNIGVuYWJsZWQuIEZ1cnRoZXJtb3JlLA0KdGhl
IHRhc2tzIGNhbiBiZSBwcmVlbXB0ZWQgYW5kLCB3aGVuIHRoZXkgYXJlIHNjaGVkdWxlZCB0byBy
dW4gYWdhaW4sIHRoZQ0Ka2VybmVsIHZpcnR1YWwgYWRkcmVzc2VzIGFyZSByZXN0b3JlZCBhbmQg
c3RpbGwgdmFsaWQuDQoNClRoZXJlZm9yZSwgcmVwbGFjZSBrbWFwKCkgd2l0aCBrbWFwX2xvY2Fs
X3BhZ2UoKSBpbiByYWRlb25fdHRtX2d0dF9yZWFkKCkuDQoNCkNjOiAiVmVua2F0YXJhbWFuYW4s
IEFuaXJ1ZGgiIDxhbmlydWRoLnZlbmthdGFyYW1hbmFuQGludGVsLmNvbT4NClN1Z2dlc3RlZC1i
eTogSXJhIFdlaW55IDxpcmEud2VpbnlAaW50ZWwuY29tPg0KU2lnbmVkLW9mZi1ieTogRmFiaW8g
TS4gRGUgRnJhbmNlc2NvIDxmbWRlZnJhbmNlc2NvQGdtYWlsLmNvbT4NCi0tLQ0KIGRyaXZlcnMv
Z3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jIHwgNCArKy0tDQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25f
dHRtLmMNCmluZGV4IGQzM2ZlYzQ4ODcxMy4uYmRiNGMwZTA3MzZiIDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
YWRlb24vcmFkZW9uX3R0bS5jDQpAQCAtODY5LDExICs4NjksMTEgQEAgc3RhdGljIHNzaXplX3Qg
cmFkZW9uX3R0bV9ndHRfcmVhZChzdHJ1Y3QgZmlsZSAqZiwgY2hhciBfX3VzZXIgKmJ1ZiwNCiAN
CiAJCXBhZ2UgPSByZGV2LT5nYXJ0LnBhZ2VzW3BdOw0KIAkJaWYgKHBhZ2UpIHsNCi0JCQlwdHIg
PSBrbWFwKHBhZ2UpOw0KKwkJCXB0ciA9IGttYXBfbG9jYWxfcGFnZShwYWdlKTsNCiAJCQlwdHIg
Kz0gb2ZmOw0KIA0KIAkJCXIgPSBjb3B5X3RvX3VzZXIoYnVmLCBwdHIsIGN1cl9zaXplKTsNCi0J
CQlrdW5tYXAocmRldi0+Z2FydC5wYWdlc1twXSk7DQorCQkJa3VubWFwX2xvY2FsKHB0cik7DQog
CQl9IGVsc2UNCiAJCQlyID0gY2xlYXJfdXNlcihidWYsIGN1cl9zaXplKTsNCiANCi0tIA0KMi4z
Ny4zDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
