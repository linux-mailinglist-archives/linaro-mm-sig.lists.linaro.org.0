Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kH8XM062cmk4owAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 00:44:14 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C526E90D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 00:44:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CEAD401B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jan 2026 23:44:13 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by lists.linaro.org (Postfix) with ESMTPS id D94623F774
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jan 2026 23:44:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=CvB1kirH;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.46 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-88a367a1dbbso29074526d6.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jan 2026 15:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769125446; x=1769730246; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Udk1T2MTSGRhmMtQ3jtc9BpxDT02wAcqHYT9NWJE+U4=;
        b=CvB1kirHDJjJkZfR/XMHFGknvzsesIu/b3x5LtsMGY1VnnuGcAS0H8dhFYQv5hjT5m
         sdxwqtBuTT+lwRNVNWGJrgKMQc1EMHikY998LZXoT2iL12gcXGdwll1c9idM3jpxtmAT
         nWofCeWyJe0pA2a99rnUbir+Q4Xhkg3MgIhfbdEGqGiDJw72y4sF6YHZIXKpE2NbPSCo
         I9GZhMeLJqSvD0JtAATT28bOTxOxlJRTH7YTr3itCx9dmfQM67+et+XNqNVOarQTOGDl
         ghJVu5BOfHEqO9zEDOZL1xAMbW5OZFpDL6HhJ8H+r2SwZxE5gQRPIJVXLhCRQ0pU6+dY
         19Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769125446; x=1769730246;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Udk1T2MTSGRhmMtQ3jtc9BpxDT02wAcqHYT9NWJE+U4=;
        b=oSsQrnqTAnvq6gdRupVN73N9jwUa7L+2LByXQ6uhgBPR4attoJ77Nx9u6EucuBdlKt
         RluFzJQbGQrIPiPJPnElbNlaAodU+p4BDN6abhFXTAIciJhxL/HlL9RjlXQnoThfTS3g
         g6E4f13KAlKmREI0Ok24d/nVzhuog97d9y0tbtbH/UE7R+2xAmBpECESgHDPKPIUn1DP
         JXlcaD63canJCPORGmVx4GtfUNXl6PhBzFdy4RpoWHzkYvlNzpYRZOgy10f+HPZZMd0+
         i5Yh+2RTZiC+Wh461gYdrS6GPY4FP51+Q/4IiJL9nIp2Bfej1rdE5evTYpbkb0+lWHaU
         IZ+w==
X-Forwarded-Encrypted: i=1; AJvYcCVpS77M0IfwYxRVgNgiAn/St2tpVvQpev7TjFcMj8opNqaeN2E4oZLsubFgwaIYFQRgbJNN+1tsM4icj87q@lists.linaro.org
X-Gm-Message-State: AOJu0YxVFVGs4ylwLjF6NNMwAP+Cp/Gw27JcOH4ohMZtYTtqy/RHGhLX
	k4Um0GUJxkng5Lza9sipql69p67ikIQKeAHbzjRTmwPTw8YJUjoSDoHKa5cYw+EmRu4=
X-Gm-Gg: AZuq6aIE6eycF0O8K78lp6Y2N5G+7jo8NxNtQTrwBXt25iObXDCnH9sF6RceNNuPkb8
	m2b3B5RmQ4yyaSB3Ra18oUtZ493dBuGLAQjoIQEC3AUnnQYspYWKb+k50ncvdg+jrXaGRch6WxU
	g+q3zpIzhEwDk50olHFZMUuKdaFabhGHdRMsk8d0mC2VXfT6eSZoVsEuFJ1uWQFkVAmPXjTFfsL
	NgsM1Z0VdHo1GUB2XFDgvSHO+z44kCRZeLvSeX1AdFm4jRIuguCPme9hxsp/WUThsoo0UUl6tny
	aEU7EgVbcCoHKKTaYBBe/3BYMuMvsL7ouppdYhdvHZFA9sIMLDNUrFPWJvj6axGQ1oTsdGCdbVg
	EFMvKHP2cS9lVhbUyawivDQMjdtjc0N3/NdRieYmMxHqngE1l6v4mwmY6mT+HX0G+CDVzuvw9RB
	uuvqCjcw3wwNyoTqeMfi0eZlA2L2tuNUJ9n1Rn2vrrUWhZU1DFtI+RrmfNOb45YjHclCw=
X-Received: by 2002:a05:6214:2269:b0:894:6530:efd1 with SMTP id 6a1803df08f44-894901ac85dmr20677696d6.19.1769125446269;
        Thu, 22 Jan 2026 15:44:06 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6e3854a6csm44128885a.41.2026.01.22.15.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 15:44:05 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vj4LM-00000006gRo-0Lke;
	Thu, 22 Jan 2026 19:44:04 -0400
Date: Thu, 22 Jan 2026 19:44:04 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260122234404.GB1589888@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
 <20260121133146.GY961572@ziepe.ca>
 <b88b500c-bacc-483d-9d1a-725d4158302a@amd.com>
 <20260121160140.GF961572@ziepe.ca>
 <a1c55bd8-9891-4064-83fe-ac56141e586f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a1c55bd8-9891-4064-83fe-ac56141e586f@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: LOF3NTCFTM6SZBXG4VLCIQRVLUZF6TI5
X-Message-ID-Hash: LOF3NTCFTM6SZBXG4VLCIQRVLUZF6TI5
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LOF3NTCFTM6SZBXG4VLCIQRVLUZF6TI5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:mid]
X-Rspamd-Queue-Id: 47C526E90D
X-Rspamd-Action: no action

T24gVGh1LCBKYW4gMjIsIDIwMjYgYXQgMTI6MzI6MDNQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPj4gV2hhdCByb3VnaGx5IGhhcHBlbnMgaXMgdGhhdCBlYWNoIERNQS1idWYg
bWFwcGluZyB0aHJvdWdoIGEgY291cGxlDQo+ID4+IG9mIGhvb3BzIGtlZXBzIGEgcmVmZXJlbmNl
IG9uIHRoZSBkZXZpY2UsIHNvIGV2ZW4gYWZ0ZXIgYSBob3RwbHVnDQo+ID4+IGV2ZW50IHRoZSBk
ZXZpY2UgY2FuIG9ubHkgZnVsbHkgZ28gYXdheSBhZnRlciBhbGwgaG91c2VrZWVwaW5nDQo+ID4+
IHN0cnVjdHVyZXMgYXJlIGRlc3Ryb3llZCBhbmQgYnVmZmVycyBmcmVlZC4NCj4gPiANCj4gPiBB
IHNpbXBsZSByZWZlcmVuY2Ugb24gdGhlIGRldmljZSBtZWFucyBub3RoaW5nIGZvciB0aGVzZSBr
aW5kcyBvZg0KPiA+IHF1ZXN0aW9ucy4gSXQgZG9lcyBub3Qgc3RvcCB1bmxvYWRpbmcgYW5kIHJl
bG9hZGluZyBhIGRyaXZlci4NCj4gDQo+IFdlbGwgYXMgZmFyIGFzIEkga25vdyBpdCBzdG9wcyB0
aGUgUENJZSBhZGRyZXNzIHNwYWNlIGZyb20gYmVpbmcgcmUtdXNlZC4NCj4gDQo+IFNvIHdoZW4g
eW91IGRvIGFuICJlY2hvIDEgPiByZW1vdmUiIGFuZCB0aGVuIGFuIHJlLXNjYW4gb24gdGhlDQo+
IHVwc3RyZWFtIGJyaWRnZSB0aGF0IHdvcmtzLCBidXQgeW91IGdldCBkaWZmZXJlbnQgYWRkcmVz
c2VzIGZvciB5b3VyDQo+IE1NSU8gQkFScyENCg0KVGhhdCdzIHByZXR0eSBhIG5pY2hlIHNjZW5h
cmlvLi4gTW9zdCBwZW9wbGUgZG9uJ3QgcmVzY2FuIHRoZWlyIFBDSQ0KYnVzLiBJZiB5b3UganVz
dCBkbyBybW1vZC9pbnNtb2QgdGhlbiBpdCB3aWxsIGJlIHJlLXVzZWQsIHRoZXJlIGlzIG5vDQpy
ZXNjYW4gdG8gbW92ZSB0aGUgTU1JTyBhcm91bmQgb24gdGhhdCBjYXNlLg0KDQo+IE9oLCB3ZWxs
IEkgbmV2ZXIgbG9va2VkIHRvIGRlZXBseSBpbnRvIHRoYXQuDQo+IA0KPiBBcyBmYXIgYXMgSSBr
bm93IGl0IGRvZXNuJ3QgYmxvY2ssIGJ1dCByYXRoZXIgdGhlIGxhc3QgZHJtX2Rldl9wdXQoKQ0K
PiBqdXN0IGNsZWFucyB0aGluZ3MgdXAuDQo+IA0KPiBBbmQgd2UgaGF2ZSBhIENJIHRlc3Qgc3lz
dGVtIHdoaWNoIGV4ZXJjaXNlcyB0aGF0IHN0dWZmIG92ZXIgYW5kDQo+IG92ZXIgYWdhaW4gYmVj
YXVzZSB3ZSBoYXZlIGEgYmlnIGN1c3RvbWVyIGRlcGVuZGluZyBvbiB0aGF0Lg0KDQpJIGRvdWJ0
IGEgQ0kgd291bGQgZGV0ZWN0IGEgVUFGIGxpa2Ugd2UgYXJlIGRpc2N1c3NpbmcgaGVyZS4uDQoN
CkNvbm5lY3QgYSBSRE1BIHBpbm5lZCBpbXBvcnRlci4gRG8gcm1tb2QuIElmIHJtbW9kIGRvZXNu
J3QgaGFuZyB0aGUNCmRyaXZlciBoYXMgYSBVQUYgb24gc29tZSBSQVMgY2FzZXMuIE5vdCBncmVh
dCwgYnV0IGlzIHVubGlrZWx5IHRvDQphY3R1YWxseSB0cm91YmxlIGFueSByZWFsIHVzZXIuDQoN
Ckphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
