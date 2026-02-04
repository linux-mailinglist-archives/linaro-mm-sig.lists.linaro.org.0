Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKNXECVLg2n4kwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 14:35:33 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D36E6830
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 14:35:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB1163F952
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Feb 2026 13:35:31 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by lists.linaro.org (Postfix) with ESMTPS id 48F663F756
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Feb 2026 13:35:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=Sypmqfai;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.178 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-5033a2c4b81so80233301cf.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Feb 2026 05:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770212125; x=1770816925; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cy8s41Ej9e437sslVRAHtURD2nYFlOPaZF56zUYznoI=;
        b=SypmqfaiSHa2P4h7o6Oro6bKNhndiM1k11gzpEoSg49KcId+D5uIeLKoqWa65hqYiP
         v8HkAYgqXr14lothchMlq37CCUxOuCkzFXTqZHtvhgs5dSd4kAQxxjtIvt/Yem1LkqvU
         qZXU7T1QsNmYPCcCX2gi4/ahh4+UTtiA+oAidTxELI8Qd0QXdut0Dw664B577SNJxVlj
         REBnEUTyU4zBp5OEailJFL7M7tMoxRblRXn4cYdti67KpXLGCCOcXhtyJzt95JW6ylFv
         PpKL3phYurR7dk4NocIEirMF3DnJS/DoAUmAdiQ2yhbfs0uozSTgN0x5PjsiiwtesmVt
         MEZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770212125; x=1770816925;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cy8s41Ej9e437sslVRAHtURD2nYFlOPaZF56zUYznoI=;
        b=sEgpirulPyzwpKWAERhKdhBL1RWwPOk6MKRLhK6xwGAMge3L8pTsYP3lJ/mqm7XB1c
         qg+aXdLbaJyjS6RKKIMdCDbNhXN/i48rEeWcOqu05viOP+zsVSRylpzhan+lgFx/0iLj
         WmDRl8aGdpvDYdi9u01HU8hwkjJZC3mDvaBs6ZkihWgSPMTbv6+2xCRrGxWu/UOn6yhs
         E14D5Z9v6RRsW/oLYSFkD5O7xf0HfzvxJrvSfD/7Vt+e3wcYSC1PaZF+L9GprNP7QW64
         ywZhc/TKwV2vfLO4ZKIFQdS2ERB/9mG2uA6dlokO6ugm9ptCHe+6089YXe+PC+O/Sv4v
         MMKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaG9YcMeylFy+V8ika+z9UmcqUP+bG84fs38xPzim1H4zUMYPqMH5eCXre8y97L4yO+wyAfFHbs6Zb3HbG@lists.linaro.org
X-Gm-Message-State: AOJu0YxYshD34JUhH9zR3y29XX4KIWGQeCs8eoDqoSz/nglu4XT3fL2A
	rl5aX3hUNdoq0m/mUbx8gib5sYpmqCqCydCS2SF1O/kskH1I7alCrBPVIEM8CIqAV40=
X-Gm-Gg: AZuq6aISvDe7NKO9u8RtkxUZjOjHyNDKShHonQ1t8k0m0LORTAfc919WGI8JAlRGnMl
	bC0PuwbAgmcfe94Ly6810SSMJrnzb6QMmMCSo9VeyYU1H/JmJcakpXs/fzRmDOpjSylimQKB434
	4bfsJPCmDjBEgsT/Qd/zCcbvCAw2yMcKRq/O1WjMXV3clICi1bPuPTGtHnfpQvdZJGIsnRMTR/R
	pRttuXarlRlfs11HbwNGVPgXHtOaKtOOLgFtY9/wUnDyP9xFCJ6Z7AfxOlPhAcFzVIUR8l95dDW
	wZTeqjKIXhtlMXSkyB9uYx0mU6lI7/aT3bViu5C6p9obANyAUmKyZVqqrg75DCLe/NhbMSQUEBv
	4oEgJETDsPbHIOQ+H6TOVDpVooEzKldlqHKT3I1AyQMswMgIIu+nInqXyLAZEW171q7Z1hbYonN
	in1b+F8efSQ8hpHf8HSnxUFwS706YnqwSiKK2pAnSJBO4XYDhnwvNsquCqzrjzbZ6D8og=
X-Received: by 2002:a05:622a:1aaa:b0:4f4:d29a:40e7 with SMTP id d75a77b69052e-5061c1c1dc5mr32950871cf.74.1770212124739;
        Wed, 04 Feb 2026 05:35:24 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5061c17babbsm16346801cf.15.2026.02.04.05.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:35:24 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vnd2R-0000000H0ml-1uPP;
	Wed, 04 Feb 2026 09:35:23 -0400
Date: Wed, 4 Feb 2026 09:35:23 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260204133523.GD2328995@ziepe.ca>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260202160425.GO34749@unreal>
 <20260204081630.GA6771@unreal>
 <6d5c392b-596b-4341-9992-aa4b26001804@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d5c392b-596b-4341-9992-aa4b26001804@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: KM2JI3LXPLHFDULOQZD67XNTETN6V7EU
X-Message-ID-Hash: KM2JI3LXPLHFDULOQZD67XNTETN6V7EU
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KM2JI3LXPLHFDULOQZD67XNTETN6V7EU/>
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C1D36E6830
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMDQsIDIwMjYgYXQgMDk6NTQ6MTNBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gDQo+IE1obSwgc291bmRzIGxpa2UgQU1EcyBtYWlsIHNlcnZlcnMgbmV2ZXIg
c2VuZCBteSBsYXN0IG1haWwgb3V0Lg0KDQpPaCA6KA0KIA0KPiBBcyBmYXIgYXMgSSBjYW4gc2Vl
IGFsbCBwYXRjaGVzIGhhdmUgYW4gcmV2aWV3ZWQtYnksIEkgYWxzbyBnYXZlIGFuDQo+IHJiIG9u
IHBhdGNoICM2IChzaG91bGQgdGhhdCBtYWlsIG5ldmVyIGdvdCBvdXQgYXMgd2VsbCkuIFRoZQ0K
PiBkaXNjdXNzaW9uIG9uIHBhdGNoIHY1IGlzIGp1c3Qgb3J0aG9nb25hbCBJIHRoaW5rLCB0aGUg
aGFuZGxpbmcgd2FzDQo+IHRoZXJlIGV2ZW4gY29tcGxldGVseSBiZWZvcmUgdGhpcyBwYXRjaCBz
ZXQuDQoNCkxlb24gSSBndWVzcyBncmFiIHRoZSByZXZpZXdlZC1ieSBmcm9tIHRoaXMgZW1haWwg
YW5kIHdlIGhhdmUgYSBmdWxsDQpwYWNrYWdlIGlmIGl0IG5lZWRzIGEgdjgNCg0KPiBGb3IgdXBz
dHJlYW1pbmcgYXMgbG9uZyBhcyB0aGUgVkZJTyBhbmQgaW5maW5pYmFuZCBmb2xrcyBkb24ndA0K
PiBvYmplY3QgSSB3b3VsZCBsaWtlIHRvIHRha2UgdGhhdCB0aHJvdWdoIHRoZSBkcm0tbWlzYyBi
cmFuY2ggKGxpa2UNCj4gZXZlcnkgb3RoZXIgRE1BLWJ1ZiBjaGFuZ2UpLg0KDQpObyBpc3N1ZSBo
ZXJlLCBib3RoIHN1YnN5c3RlbXMgYXJlIHdhaXRpbmcgZm9yIHRoaXMuLg0KDQo+IFNvIGFzIGxv
bmcgYXMgbm9ib2R5IG9iamVjdHMgSSBjYW4gcHVzaCB0aGF0IHRvZGF5LCBidXQgSSBjYW4ndA0K
PiBwcm9taXNlIHRoYXQgRGF2ZS9MaW51cyB3aWxsIHRha2UgaXQgZm9yIHRoZSA2LjIwIHdpbmRv
dy4NCg0KU3VyZSwgdGhhbmtzLCBhbmQgaWYgaXQgZG9lc24ndCBoYXBwZW4gZm9yIHdoYXRldmVy
IHJlYXNvbiBsZXRzIGp1c3QNCmNvbnNpZGVyIGl0IHBlbmRpbmcgZm9yIHRoZSBuZXh0IGN5Y2xl
Lg0KDQpOZXh0IGlzIHRvIHdvcmsgb24gdGhlIGRtYSBtYXBwaW5nIHR5cGUsIEkgc2hvdWxkIGJl
IGFibGUgdG8gcG9zdCBhDQpyZmMgbmV4dCB3ZWVrIGZvciBwZW9wbGUgdG8gbG9vayBhdC4NCg0K
VGhhbmtzLA0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
