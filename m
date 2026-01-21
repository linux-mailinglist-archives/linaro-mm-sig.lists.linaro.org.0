Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENG4Kd3bcGnCaQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:59:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCFC580FB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:59:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BE4F401B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 13:59:56 +0000 (UTC)
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com [209.85.160.195])
	by lists.linaro.org (Postfix) with ESMTPS id C92213F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 13:59:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=MAJkosww;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.195 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f195.google.com with SMTP id d75a77b69052e-5014453a0faso61762341cf.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 05:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769003989; x=1769608789; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NrFwAYZYjJdV2hWLBqDeijXZcUvvrfRZB3KhQxPCGpU=;
        b=MAJkoswwGnAK4oEvtItydMnI8bvj1I5VcHw4vIcPfIGHhTqDxX6mxoVDemaXsfegc8
         RdFAJxl5qnZJ8QOX9LAM5r1Fe0Ue78OfHS+TROUL5DnpxMWlXBVzqw1FRxLrFflaXADr
         XONMFTTz0IFfR/k9w18q94GxHN/t8MAfZDBdtD7FbtaMji+gFaoQ7RXt4MRbJMf3qPbi
         3r5azuDtHsA4AVgGeWPlmXDDDcEzcnMj1vZ/xdyx0k/NV736LAzwoyyHtBTe5EHkzbCU
         SWXNzuvNyBe6Fw1S7Ob43UAm6ljEwePsTPDZCaCfvKZe/uFy9/KDYo4hlQhO6GszmbIp
         x6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769003989; x=1769608789;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NrFwAYZYjJdV2hWLBqDeijXZcUvvrfRZB3KhQxPCGpU=;
        b=GFASDCh3iDvW6UPEm97Qh0lkNeWdO2aZ/KJEe5cywPgJbHRc7SoOTE/dQxgod0hj58
         zhoeO9n5KYoWtxdNPeAoT2tALGCdYRox8WjT5pnt1YC2A8FRk0xHogq1EtM4nSG1HZh8
         0UTkqt5ouu87muRMnqOyLaKc7uOxllcjk1TRN7WeE3iX8bSjJiYzIoUy19HtrZfxy/zg
         OYwbf3U/H0XxK+sMt95ZjkgNro7kEIYpVFd/1gVUDUGku848PdgKs5b1867HqN+YgxfD
         6T/wyzlbLTYusLPHiaey3bIVXJcByUtSXU34LxUAZ3Dx9VreY8WWNQ75BRrTTK41TrVi
         jnKA==
X-Forwarded-Encrypted: i=1; AJvYcCXryjP4/bxod3dHMeskq2kYCDlF1wFuDNHi9jx5kXCF2X4VYDhmnGtPJP7Za1HymO190JcDldbuxquyO+fo@lists.linaro.org
X-Gm-Message-State: AOJu0YxQo2Tr+xUfaqs09mKD3b9D54HiA18kwKd9++0g6wpovA9i/rqB
	Fw13Z5nxJvvYfL62n5RtRCuWMxPPWrdScptdh8yPdame4M91Wu7nZJYr1g99PXnz9x0=
X-Gm-Gg: AZuq6aJzqVCmcOs2GKrsKNtI+5N8+3KuTduK8+k21Y37yS6FNk7MVnNVQwkKcWyhIZ5
	eDZg/Y9nlX64hww3hcIlK358dLgF1Tu+FT5OfIFTqD+2c55Yj6fNUrqqn6pfRFa/52hurZ1E/FH
	x/ZBhtT7CBaT2UnaW8DPQZWaA/exl3jFN8snQkUViV1hAPTmDaVHlBLZaif3koFYaLvcBEQG6gq
	9dDdZ1FPhMye2+W/h1JWccnNOrQfGskeX4Ly/EJld4MndrCW9k1CJND1F6cSOZqLcKELQ6+Wdys
	0wb2FLmtuiuOhEFa9FVUzwZ596rntZAHef26dPBidz5CvZSUx0veK8B2/31EG+XHf3JHDh9TbKi
	Va+NSIh67cbBsoBVjNwKhOiwb1UdraJjTMfczNjf/dF7JYKpEkrheveRnz/IuO6WukdFFVSwNxU
	+rN9cy1inogl1TdM359kMvdH6PVXEgQeBzkIqMkZ31H0vWDrw/p7PaZaadR2SzH98YceY=
X-Received: by 2002:ac8:5d14:0:b0:4ff:c5f7:f812 with SMTP id d75a77b69052e-502d855fe29mr65972911cf.38.1769003989233;
        Wed, 21 Jan 2026 05:59:49 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1d9f480sm113423091cf.13.2026.01.21.05.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 05:59:48 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viYkO-00000006E8Z-0XjE;
	Wed, 21 Jan 2026 09:59:48 -0400
Date: Wed, 21 Jan 2026 09:59:48 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260121135948.GB961572@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-3-b7e0b07b8214@nvidia.com>
 <4fe42e7e-846c-4aae-8274-3e9a5e7f9a6d@amd.com>
 <20260121091423.GY13201@unreal>
 <7cfe0495-f654-4f9d-8194-fa5717eeafff@amd.com>
 <20260121131852.GX961572@ziepe.ca>
 <8a8ba092-6cfa-41d2-8137-e5e9d917e914@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a8ba092-6cfa-41d2-8137-e5e9d917e914@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: MQDQZQ4NWUFP567UTB42IH5XFMHLUQ42
X-Message-ID-Hash: MQDQZQ4NWUFP567UTB42IH5XFMHLUQ42
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/7] dma-buf: Document RDMA non-ODP invalidate_mapping() special case
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MQDQZQ4NWUFP567UTB42IH5XFMHLUQ42/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
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
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,ziepe.ca:mid,linaro.org:email]
X-Rspamd-Queue-Id: 2BCFC580FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMDI6NTI6NTNQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8yMS8yNiAxNDoxOCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiA+
IE9uIFdlZCwgSmFuIDIxLCAyMDI2IGF0IDEwOjE3OjE2QU0gKzAxMDAsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6DQo+ID4+IFRoZSB3aG9sZSBpZGVhIGlzIHRvIG1ha2UgaW52YWxpZGF0ZV9tYXBw
aW5ncyB0cnVseSBvcHRpb25hbC4NCj4gPiANCj4gPiBCdXQgaXQncyBub3QgcmVhbGx5IG9wdGlv
bmFsISBJdCdzIGFic2VuY2UgbWVhbnMgd2UgYXJlIGlnbm9yaW5nIFVBRg0KPiA+IHNlY3VyaXR5
IGlzc3VlcyB3aGVuIHRoZSBleHBvcnRlcnMgZG8gdGhlaXIgbW92ZV9ub3RpZnkoKSBhbmQgbm90
aGluZw0KPiA+IGhhcHBlbnMuDQo+IA0KPiBObyB0aGF0IGlzIHVucHJvYmxlbWF0aWMuDQo+IA0K
PiBTZWUgdGhlIGludmFsaWRhdGVfbWFwcGluZ3MgY2FsbGJhY2sganVzdCB0ZWxscyB0aGUgaW1w
b3J0ZXIgdGhhdA0KPiB0aGUgbWFwcGluZyBpbiBxdWVzdGlvbiBjYW4ndCBiZSByZWxpZWQgb24g
YW55IG1vcmUuDQo+IA0KPiBCdXQgdGhlIG1hcHBpbmcgaXMgdHJ1bHkgZnJlZWQgb25seSBieSB0
aGUgaW1wb3J0ZXIgY2FsbGluZw0KPiBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoKS4NCj4gDQo+
IEluIG90aGVyIHdvcmRzIHRoZSBpbnZhbGlkYXRlX21hcHBpbmdzIGdpdmUgdGhlIHNpZ25hbCB0
byB0aGUNCj4gaW1wb3J0ZXIgdG8gZGlzYWJsZSBhbGwgb3BlcmF0aW9ucyBhbmQgdGhlDQo+IGRt
YV9idWZfdW5tYXBfYXR0YWNobWVudCgpIGlzIHRoZSBzaWduYWwgZnJvbSB0aGUgaW1wb3J0ZXIg
dGhhdCB0aGUNCj4gaG91c2VrZWVwaW5nIHN0cnVjdHVyZXMgY2FuIGJlIGZyZWVkIGFuZCB0aGUg
dW5kZXJseWluZyBhZGRyZXNzDQo+IHNwYWNlIG9yIGJhY2tpbmcgb2JqZWN0IHJlLXVzZWQuDQoN
Ckkgc2VlDQoNCkNhbiB3ZSBkb2N1bWVudCB0aGlzIHBsZWFzZSwgSSBoYXZlbid0IHNlZW4gdGhp
cyBzY2hlbWUgZGVzY3JpYmVkDQphbnlod2VyZS4NCg0KQW5kIGxldCdzIGNsYXJpZnkgd2hhdCBJ
IHNhaWQgaW4gbXkgb3RoZXIgZW1haWwgdGhhdCB0aGlzIG5ldyByZXZva2UNCnNlbWFudGljIGlz
IG5vdCBqdXN0IGEgc2lnbmFsIHRvIG1heWJlIHNvbWVkYXkgdW5tYXAgYnV0IGEgaGFyZA0KYmFy
cmllciB0aGF0IGl0IG11c3QgYmUgZG9uZSBvbmNlIHRoZSBmZW5jZXMgY29tcGxldGUsIHNpbWls
YXIgdG8NCm5vbi1waW5uZWQgaW1wb3J0ZXJzLg0KDQpUaGUgY292ZXIgbGV0dGVyIHNob3VsZCBi
ZSBjbGFyaWZpZWQgd2l0aCB0aGlzIHVuZGVyc3RhbmRpbmcgdG9vLg0KDQpKYXNvbg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
