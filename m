Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGcmLyeecGlyYgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:36:39 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7525481A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:36:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43401401B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:36:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	by lists.linaro.org (Postfix) with ESMTPS id 345673F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 09:36:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=FSyJ3XAB;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 198.175.65.10 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768988193; x=1800524193;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=qL9iu/H5hpUrP/X6+ggfEAqN7pCzi7K6vLcfE1tY/YA=;
  b=FSyJ3XABb80ljOMJ/9cIeF4UIV7Wc08X14kjDXKRuftGTzDNK8Y4X2XU
   0G8v+Lw7k+ZdcnX6uh1X7aps7oAyREQK69o1aniGj9cRsYwPO2P0zaguP
   J189q6oXW3mck9vrMwe9CwMB9R9XKgVcwOCqu9AeJry6dK+w5Ibi+Bnys
   u9iZifGC4W9P4rKzsOERVWoduqxsEuWQ78b0Tpf71xlU6pRr2PFjTFnnD
   5VxsGpsG1zJ+h8CcG7nf0h7SGz2ghRvCFZbWe2/TaBNJY6w/Au5by0s1R
   B8kqxDw4x3eTiRlWWGK9sy3nJ/c2RvADXVd5KxfiZ6fN667wW1sCN1uht
   w==;
X-CSE-ConnectionGUID: t4YnEEAPQy63FB9PB28ITA==
X-CSE-MsgGUID: rWESL7KwQcWFtLKtKEry6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="87624101"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800";
   d="scan'208";a="87624101"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2026 01:36:31 -0800
X-CSE-ConnectionGUID: 60Hy4B3ETOyz27yzkkUGrg==
X-CSE-MsgGUID: Cg2+ahF4Sdui1FjdHXerRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800";
   d="scan'208";a="206639396"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO [10.245.245.107]) ([10.245.245.107])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2026 01:36:24 -0800
Message-ID: <107464758df9444a465a3a9e387f5a42827aff51.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Leon
 Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex
 Deucher	 <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter	 <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry
 Osipenko	 <dmitry.osipenko@collabora.com>, Gurchetan Singh
 <gurchetansingh@chromium.org>,  Chia-I Wu <olvaffe@gmail.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard	
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De
 Marchi	 <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg
 Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy
 <robin.murphy@arm.com>, Felix Kuehling	 <Felix.Kuehling@amd.com>, Alex
 Williamson <alex@shazbot.org>, Ankit Agrawal	 <ankita@nvidia.com>, Vivek
 Kasireddy <vivek.kasireddy@intel.com>
Date: Wed, 21 Jan 2026 10:36:09 +0100
In-Reply-To: <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
	 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
	 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-Spamd-Bar: ---------
Message-ID-Hash: 6WSWDEJGR4MSMU4FMBDQFSBFCBYINJLX
X-Message-ID-Hash: 6WSWDEJGR4MSMU4FMBDQFSBFCBYINJLX
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6WSWDEJGR4MSMU4FMBDQFSBFCBYINJLX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,linaro.org,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[intel.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,nvidia.com:email,linaro.org:email,linux.intel.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 3E7525481A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGksIENocmlzdGlhbiwNCg0KT24gV2VkLCAyMDI2LTAxLTIxIGF0IDEwOjIwICswMTAwLCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxLzIwLzI2IDE1OjA3LCBMZW9uIFJvbWFub3Zza3kg
d3JvdGU6DQo+ID4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4g
PiANCj4gPiBkbWEtYnVmIGludmFsaWRhdGlvbiBpcyBwZXJmb3JtZWQgYXN5bmNocm9ub3VzbHkg
YnkgaGFyZHdhcmUsIHNvDQo+ID4gVkZJTyBtdXN0DQo+ID4gd2FpdCB1bnRpbCBhbGwgYWZmZWN0
ZWQgb2JqZWN0cyBoYXZlIGJlZW4gZnVsbHkgaW52YWxpZGF0ZWQuDQo+ID4gDQo+ID4gRml4ZXM6
IDVkNzQ3ODFlYmM4NiAoInZmaW8vcGNpOiBBZGQgZG1hLWJ1ZiBleHBvcnQgc3VwcG9ydCBmb3Ig
TU1JTw0KPiA+IHJlZ2lvbnMiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8
bGVvbnJvQG52aWRpYS5jb20+DQo+IA0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiANCj4gUGxlYXNlIGFsc28ga2VlcCBpbiBtaW5k
IHRoYXQgdGhlIHdoaWxlIHRoaXMgd2FpdCBmb3IgYWxsIGZlbmNlcyBmb3INCj4gY29ycmVjdG5l
c3MgeW91IGFsc28gbmVlZCB0byBrZWVwIHRoZSBtYXBwaW5nIHZhbGlkIHVudGlsDQo+IGRtYV9i
dWZfdW5tYXBfYXR0YWNobWVudCgpIHdhcyBjYWxsZWQuDQoNCkknbSB3b25kZXJpbmcgc2hvdWxk
bid0IHdlIHJlcXVpcmUgRE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVAgaGVyZSwgYXMNCiphbnkqIHVu
c2lnbmFsZWQgZmVuY2UgY291bGQgaW5kaWNhdGUgYWNjZXNzIHRocm91Z2ggdGhlIG1hcD8NCg0K
L1Rob21hcw0KDQo+IA0KPiBJbiBvdGhlciB3b3JkcyB5b3UgY2FuIG9ubHkgcmVkaXJlY3QgdGhl
IERNQS1hZGRyZXNzZXMgcHJldmlvdXNseQ0KPiBnaXZlbiBvdXQgaW50byBuaXJ2YW5hIChvciBh
IGR1bW15IG1lbW9yeSBvciBzaW1pbGFyKSwgYnV0IHlvdSBzdGlsbA0KPiBuZWVkIHRvIGF2b2lk
IHJlLXVzaW5nIHRoZW0gZm9yIHNvbWV0aGluZyBlbHNlLg0KPiANCj4gUmVnYXJkcywNCj4gQ2hy
aXN0aWFuLg0KPiANCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1h
YnVmLmMgfCA1ICsrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+
ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMN
Cj4gPiBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCj4gPiBpbmRleCBkNGQw
ZjdkMDhjNTMuLjMzYmM2YTE5MDlkZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3ZmaW8vcGNp
L3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+ID4gKysrIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9k
bWFidWYuYw0KPiA+IEBAIC0zMjEsNiArMzIxLDkgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX21v
dmUoc3RydWN0DQo+ID4gdmZpb19wY2lfY29yZV9kZXZpY2UgKnZkZXYsIGJvb2wgcmV2b2tlZCkN
Cj4gPiDCoAkJCWRtYV9yZXN2X2xvY2socHJpdi0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4gPiDC
oAkJCXByaXYtPnJldm9rZWQgPSByZXZva2VkOw0KPiA+IMKgCQkJZG1hX2J1Zl9tb3ZlX25vdGlm
eShwcml2LT5kbWFidWYpOw0KPiA+ICsJCQlkbWFfcmVzdl93YWl0X3RpbWVvdXQocHJpdi0+ZG1h
YnVmLT5yZXN2LA0KPiA+ICsJCQkJCcKgwqDCoMKgwqANCj4gPiBETUFfUkVTVl9VU0FHRV9LRVJO
RUwsIGZhbHNlLA0KPiA+ICsJCQkJCcKgwqDCoMKgwqANCj4gPiBNQVhfU0NIRURVTEVfVElNRU9V
VCk7DQo+ID4gwqAJCQlkbWFfcmVzdl91bmxvY2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4gPiDC
oAkJfQ0KPiA+IMKgCQlmcHV0KHByaXYtPmRtYWJ1Zi0+ZmlsZSk7DQo+ID4gQEAgLTM0Miw2ICsz
NDUsOCBAQCB2b2lkIHZmaW9fcGNpX2RtYV9idWZfY2xlYW51cChzdHJ1Y3QNCj4gPiB2ZmlvX3Bj
aV9jb3JlX2RldmljZSAqdmRldikNCj4gPiDCoAkJcHJpdi0+dmRldiA9IE5VTEw7DQo+ID4gwqAJ
CXByaXYtPnJldm9rZWQgPSB0cnVlOw0KPiA+IMKgCQlkbWFfYnVmX21vdmVfbm90aWZ5KHByaXYt
PmRtYWJ1Zik7DQo+ID4gKwkJZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KHByaXYtPmRtYWJ1Zi0+cmVz
diwNCj4gPiBETUFfUkVTVl9VU0FHRV9LRVJORUwsDQo+ID4gKwkJCQnCoMKgwqDCoMKgIGZhbHNl
LA0KPiA+IE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsNCj4gPiDCoAkJZG1hX3Jlc3ZfdW5sb2NrKHBy
aXYtPmRtYWJ1Zi0+cmVzdik7DQo+ID4gwqAJCXZmaW9fZGV2aWNlX3B1dF9yZWdpc3RyYXRpb24o
JnZkZXYtPnZkZXYpOw0KPiA+IMKgCQlmcHV0KHByaXYtPmRtYWJ1Zi0+ZmlsZSk7DQo+ID4gDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
