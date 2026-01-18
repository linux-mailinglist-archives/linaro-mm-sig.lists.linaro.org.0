Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C722BD39723
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 15:29:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C47FD3F9A7
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 14:29:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	by lists.linaro.org (Postfix) with ESMTPS id 881F63F7FC
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jan 2026 14:29:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=M8mHsxLR;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 198.175.65.16 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768746553; x=1800282553;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=0+eaeMN1EHDT+lkQ4GIUQ4W12gE3E7ctCy4zVXTxlPk=;
  b=M8mHsxLRdlxJw2RDj26bEqrwPOcn116pzaF9kktCSlT3tWiPOr9caQiJ
   Mdcqn973xAySRidK0hjDvw4Qn81+jkr/2EZwumyDTG/pv0YbflkuNM7bQ
   COFNPMkYjlONbRMQfH0o+XCQC3+2O/Qu/9fZgkiyic5uCoRLkQELWgOgc
   doHn2HgnN4l3TAAc8AXhtBQJuuRJz8dqhWC0koMGmUF1YwLOxTdm1lkJ7
   745G0bw7YmmC1Cd7IWpqmKPLtj9XIzY8q9iiHEqkFnBwGkCCvLHU0KyTi
   +Yb8p0WnU4RwoL45ywVYmdcwMPSrQOIXWNlFJ2ZJL1ycugUTtG+EIfKeB
   g==;
X-CSE-ConnectionGUID: KDoB5mFGQ3aTpGFIGM119Q==
X-CSE-MsgGUID: uN3G1G/gQqCF3dnV48ZmUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="70146419"
X-IronPort-AV: E=Sophos;i="6.21,235,1763452800";
   d="scan'208";a="70146419"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2026 06:29:12 -0800
X-CSE-ConnectionGUID: nCY8yfQeS1CtWSbdd073Iw==
X-CSE-MsgGUID: VxUvo3fYR72cV06gEahrOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,235,1763452800";
   d="scan'208";a="205447268"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO [10.245.244.5]) ([10.245.244.5])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2026 06:29:04 -0800
Message-ID: <8bc75706c18c410f9564805c487907aba0aab627.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>,  Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann
 <kraxel@redhat.com>,  Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu	
 <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
  Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, Lucas De Marchi	 <lucas.demarchi@intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian
 <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon
 <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson
 <alex@shazbot.org>
Date: Sun, 18 Jan 2026 15:29:02 +0100
In-Reply-To: <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
	 <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 881F63F7FC
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.70 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[198.175.65.16:from];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:email];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6Y6SX6YSRMIGJ7LH34JYGB6SKYNMZLE2
X-Message-ID-Hash: 6Y6SX6YSRMIGJ7LH34JYGB6SKYNMZLE2
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6Y6SX6YSRMIGJ7LH34JYGB6SKYNMZLE2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCAyMDI2LTAxLTE4IGF0IDE0OjA4ICswMjAwLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6
DQo+IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+IA0KPiBEb2N1
bWVudCBhIERNQS1idWYgcmV2b2tlIG1lY2hhbmlzbSB0aGF0IGFsbG93cyBhbiBleHBvcnRlciB0
bw0KPiBleHBsaWNpdGx5DQo+IGludmFsaWRhdGUgKCJraWxsIikgYSBzaGFyZWQgYnVmZmVyIGFm
dGVyIGl0IGhhcyBiZWVuIGhhbmRlZCBvdXQgdG8NCj4gaW1wb3J0ZXJzLiBPbmNlIHJldm9rZWQs
IGFsbCBmdXJ0aGVyIENQVSBhbmQgZGV2aWNlIGFjY2VzcyBpcw0KPiBibG9ja2VkLCBhbmQNCj4g
aW1wb3J0ZXJzIGNvbnNpc3RlbnRseSBvYnNlcnZlIGZhaWx1cmUuDQoNClNlZSBwcmV2aW91cyBj
b21tZW50IFdSVCB0aGlzLg0KDQo+IA0KPiBUaGlzIHJlcXVpcmVzIGJvdGggaW1wb3J0ZXJzIGFu
ZCBleHBvcnRlcnMgdG8gaG9ub3IgdGhlIHJldm9rZQ0KPiBjb250cmFjdC4NCj4gDQo+IEZvciBp
bXBvcnRlcnMsIHRoaXMgbWVhbnMgaW1wbGVtZW50aW5nIC5pbnZhbGlkYXRlX21hcHBpbmdzKCkg
YW5kDQo+IGNhbGxpbmcNCj4gZG1hX2J1Zl9waW4oKSBhZnRlciB0aGUgRE1B4oCRYnVmIGlzIGF0
dGFjaGVkIHRvIHZlcmlmeSB0aGUgZXhwb3J0ZXLigJlzDQo+IHN1cHBvcnQNCj4gZm9yIHJldm9j
YXRpb24uDQoNCldoeSB3b3VsZCB0aGUgaW1wb3J0ZXIgd2FudCB0byB2ZXJpZnkgdGhlIGV4cG9y
dGVyJ3Mgc3VwcG9ydCBmb3INCnJldm9jYXRpb24/IElmIHRoZSBleHBvcnRlciBkb2Vzbid0IHN1
cHBvcnQgaXQsIHRoZSBvbmx5IGNvbnNlcXVlbmNlDQp3b3VsZCBiZSB0aGF0IGludmFsaWRhdGVf
bWFwcGluZ3MoKSB3b3VsZCBuZXZlciBiZSBjYWxsZWQsIGFuZCB0aGF0DQpkbWFfYnVmX3Bpbigp
IGlzIGEgTk9QLiBCZXNpZGVzLCBkbWFfYnVmX3BpbigpIHdvdWxkIG5vdCByZXR1cm4gYW4NCmVy
cm9yIGlmIHRoZSBleHBvcnRlciBkb2Vzbid0IGltcGxlbWVudCB0aGUgcGluKCkgY2FsbGJhY2s/
DQoNCk9yIHBlcmhhcHMgSSBtaXNzZWQgYSBwcmVyZXEgcGF0Y2g/DQoNClRoYW5rcywNClRob21h
cw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
