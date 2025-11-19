Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C51AC6EEE1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:35:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFBD53F7A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:35:51 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by lists.linaro.org (Postfix) with ESMTPS id B9C323F788
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:35:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=jVEXQmZa;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.169 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8b2ed01b95dso322917885a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 05:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763559331; x=1764164131; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=72A2miNlT6HYTvn6gfrMP1LsN3+/rcjlJPwocEiTvrs=;
        b=jVEXQmZaVY54M7Hz+fM7fUDcsUOvJ3cFSpV1Nij1wEyBQfZNckJveA2PnFTGY+CqB0
         Zk1QIVjL4K/23s3S0PxlHBEvjmRtsER0tRj+sAzv7NJPsBG0rjiUSkqlZYcFGH4u+BxT
         arhoro3VyiOFRsFtVgkgqtKWshcrUm8a43JzskydBHvPPN4GJzyoce4Jiw1k5XZYBzXE
         k7gNR1ty7LKDi/jMoIYvk15P0lJ7zGBtm3qzbJAZv4ILpACi4tNqw89LfW2Jm3b+lg6w
         emlZW/dwGRIinJCe1pZcrn8TrEWbAxZ4YAsS+yk5lTcdbr/GmtZHKV90vr9+Losz1KGX
         76Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763559331; x=1764164131;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=72A2miNlT6HYTvn6gfrMP1LsN3+/rcjlJPwocEiTvrs=;
        b=fsiKbqa8RRbWOokzsdxd7ZnSTAI1hkCbSNyfeuLm91xsWvmfPyQCAmx8xlqbXb6akH
         Nw+R/u+D5UzH/1jYBR/Ib19j26dR0XKI5Zb0Ii4zJci+UYwz54UZyuEWDMkb/HccOyLL
         0KzNMXY6ZsiIEDNuYnPslh3mSQAFGWCYQhLKDQDt8SF41eppDC9npCpbAHLYanAxmWeH
         0bMGn2LUmDGEydOHP6rtDKieS/cu6Lr2PPDFrdsD6vptAk9J3dz7YUDUMZ8vilFG/qT6
         rIWlB8Sp7Q/rYDs3U0aqHpjxwXoHMANjUB4UjWeg3z9udtXI67QD17R9Kb0iu0cRJb8J
         eevw==
X-Forwarded-Encrypted: i=1; AJvYcCXLvALpehLcDPTUaQpDe2uRTfIkI17fC5PtdRwr6CoiYcQU1ZDqKOLt979xx10IcdlBBwt3QTIQBkL/JYpm@lists.linaro.org
X-Gm-Message-State: AOJu0Yy0JNO5CR5g3xR1t3hYS2K6l0GoWFc/fjeEkw8S+rRji/dqfDbJ
	w3PMJBvSZrRLWLRbg+734XbIVDpOARaVxD090b340kJXRZDsqC1VmhsUPDutpOkseNE=
X-Gm-Gg: ASbGnctDNH945HXONjeSLtT77oop7ZHPe6BvzN+bQWYOixxWd3iUikR3bitCjM5O5c9
	idh/65YTYOaygyiccNATuXhNXfRhb+duLfp6IlW1FjD9Yt4WILEwrPsdXFhpCW4SuxPLiGaacyO
	SdyQT5R8hxKygtJDKznRg1yjwVe9jAF26rEr1DCSNPgUEi/6yJeQpQK260+2T0W6vYARkKWFAvh
	e3pih8vK3BFJuFX7vtTf/HaiQv0c1+tIOKWhpbid7BVrmbPtnfJ6b23NF077dX8rgSyP9sAqIlJ
	bOOz5GM2QcON+rapEZKdzls6i84Ie61PjE4YBMtOvad7TjfF55No0yUGXUie5xiZHj99rbJRQp+
	KFdyhTHQmeQx3/FsW8cwEQsHBMeukhUZ58n/TH/2PCCADaXa0TGgzWVtpYLfBoXDQVLjThX85EU
	+O3eDBIJOJUrBQwX1BJC5U6N8IrBOOQ8gUYwAatyh8NMQAal9sRxjPw1uW
X-Google-Smtp-Source: AGHT+IE7dgToIwQMvgHU78QddWp+ZiJRe5Ch8SPXRMVN2DOwf2T1NT7zeC+YapS6FYUcpx8f/T/2tw==
X-Received: by 2002:a05:622a:256:b0:4ee:16a8:dd0 with SMTP id d75a77b69052e-4ee16a8d595mr193299331cf.53.1763559331028;
        Wed, 19 Nov 2025 05:35:31 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ede86b376dsm127986771cf.7.2025.11.19.05.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 05:35:30 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLiLJ-00000000Z9b-1C3G;
	Wed, 19 Nov 2025 09:35:29 -0400
Date: Wed, 19 Nov 2025 09:35:29 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251119133529.GL17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-5-fd9aa5df478f@nvidia.com>
 <9798b34c-618b-4e89-82b0-803bc655c82b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9798b34c-618b-4e89-82b0-803bc655c82b@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.169:from];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[47.55.120.4:query timed out,209.85.222.169:query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B9C323F788
X-Spamd-Bar: ---
Message-ID-Hash: J7UXF6HIAXTW5YTU36VFNVCRKMBOSTS7
X-Message-ID-Hash: J7UXF6HIAXTW5YTU36VFNVCRKMBOSTS7
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 05/11] PCI/P2PDMA: Document DMABUF model
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J7UXF6HIAXTW5YTU36VFNVCRKMBOSTS7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMTksIDIwMjUgYXQgMTA6MTg6MDhBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiArQXMgdGhpcyBpcyBub3Qgd2VsbC1kZWZpbmVkIG9yIHdlbGwtc3VwcG9y
dGVkIGluIHJlYWwgSFcgdGhlIGtlcm5lbCBkZWZhdWx0cyB0bw0KPiA+ICtibG9ja2luZyBzdWNo
IHJvdXRpbmcuIFRoZXJlIGlzIGFuIGFsbG93IGxpc3QgdG8gYWxsb3cgZGV0ZWN0aW5nIGtub3du
LWdvb2QgSFcsDQo+ID4gK2luIHdoaWNoIGNhc2UgUDJQIGJldHdlZW4gYW55IHR3byBQQ0llIGRl
dmljZXMgd2lsbCBiZSBwZXJtaXR0ZWQuDQo+DQo+IFRoYXQgc2VjdGlvbiBzb3VuZHMgbm90IGNv
cnJlY3QgdG8gbWUuIA0KDQpJdCBpcyBjb3JyZWN0IGluIHRoYXQgaXQgZGVzY3JpYmVzIHdoYXQg
dGhlIGtlcm5lbCBkb2VzIHJpZ2h0IG5vdy4NCg0KU2VlIGNhbGNfbWFwX3R5cGVfYW5kX2Rpc3Qo
KSwgaG9zdF9icmlkZ2Vfd2hpdGVsaXN0KCksIGNwdV9zdXBwb3J0c19wMnBkbWEoKS4NCg0KPiBU
aGlzIGlzIHdlbGwgc3VwcG9ydGVkIGluIGN1cnJlbnQgSFcsIGl0J3MganVzdCBub3QgZGVmaW5l
ZCBpbiBzb21lDQo+IG9mZmljaWFsIHNwZWNpZmljYXRpb24uDQoNCk9ubHkgQU1EIEhXLg0KDQpJ
bnRlbCBIVyBpcyBhIGJpdCBoaXQgYW5kIG1pc3MuDQoNCkFSTSBTT0NzIGFyZSBmcmVxdWVudGx5
IG5vdCBzdXBwb3J0aW5nIGV2ZW4gb24gc2VydmVyIENQVXMuDQoNCj4gPiArQXQgdGhlIGxvd2Vz
dCBsZXZlbCB0aGUgUDJQIHN1YnN5c3RlbSBvZmZlcnMgYSBuYWtlZCBzdHJ1Y3QgcDJwX3Byb3Zp
ZGVyIHRoYXQNCj4gPiArZGVsZWdhdGVzIGxpZmVjeWNsZSBtYW5hZ2VtZW50IHRvIHRoZSBwcm92
aWRpbmcgZHJpdmVyLiBJdCBpcyBleHBlY3RlZCB0aGF0DQo+ID4gK2RyaXZlcnMgdXNpbmcgdGhp
cyBvcHRpb24gd2lsbCB3cmFwIHRoZWlyIE1NSU8gbWVtb3J5IGluIERNQUJVRiBhbmQgdXNlIERN
QUJVRg0KPiA+ICt0byBwcm92aWRlIGFuIGludmFsaWRhdGlvbiBzaHV0ZG93bi4NCj4gDQo+ID4g
VGhlc2UgTU1JTyBwYWdlcyBoYXZlIG5vIHN0cnVjdCBwYWdlLCBhbmQNCj4gDQo+IFdlbGwgcGxl
YXNlIGRyb3AgInBhZ2VzIiBoZXJlLiBKdXN0IHNheSBNTUlPIGFkZHJlc3Nlcy4NCg0KIlRoZXNl
IE1NSU8gYWRkcmVzc2VzIGhhdmUgbm8gc3RydWN0IHBhZ2UsIGFuZCINCg0KPiA+ICtCdWlsZGlu
ZyBvbiB0aGlzLCB0aGUgc3Vic3lzdGVtIG9mZmVycyBhIGxheWVyIHRvIHdyYXAgdGhlIE1NSU8g
aW4gYSBaT05FX0RFVklDRQ0KPiA+ICtwZ21hcCBvZiBNRU1PUllfREVWSUNFX1BDSV9QMlBETUEg
dG8gY3JlYXRlIHN0cnVjdCBwYWdlcy4gVGhlIGxpZmVjeWNsZSBvZg0KPiA+ICtwZ21hcCBlbnN1
cmVzIHRoYXQgd2hlbiB0aGUgcGdtYXAgaXMgZGVzdHJveWVkIGFsbCBvdGhlciBkcml2ZXJzIGhh
dmUgc3RvcHBlZA0KPiA+ICt1c2luZyB0aGUgTU1JTy4gVGhpcyBvcHRpb24gd29ya3Mgd2l0aCBP
X0RJUkVDVCBmbG93cywgaW4gc29tZSBjYXNlcywgaWYgdGhlDQo+ID4gK3VuZGVybHlpbmcgc3Vi
c3lzdGVtIHN1cHBvcnRzIGhhbmRsaW5nIE1FTU9SWV9ERVZJQ0VfUENJX1AyUERNQSB0aHJvdWdo
DQo+ID4gK0ZPTExfUENJX1AyUERNQS4gVGhlIHVzZSBvZiBGT0xMX0xPTkdURVJNIGlzIHByZXZl
bnRlZC4gQXMgdGhpcyByZWxpZXMgb24gcGdtYXANCj4gPiAraXQgYWxzbyByZWxpZXMgb24gYXJj
aGl0ZWN0dXJlIHN1cHBvcnQgYWxvbmcgd2l0aCBhbGlnbm1lbnQgYW5kIG1pbmltdW0gc2l6ZQ0K
PiA+ICtsaW1pdGF0aW9ucy4NCj4gDQo+IEFjdHVhbGx5IHRoYXQgaXMgdXAgdG8gdGhlIGV4cG9y
dGVyIG9mIHRoZSBETUEtYnVmIHdoYXQgYXBwcm9hY2ggaXMgdXNlZC4NCg0KVGhlIGFib3ZlIGlz
IG5vdCB0YWxraW5nIGFib3V0IERNQS1idWYsIGl0IGlzIGRlc2NyaWJpbmcgdGhlIGV4aXN0aW5n
DQppbnRlcmZhY2UgdGhhdCBpcyBhbGwgc3RydWN0IHBhZ2UgYmFzZWQuIFRoZSBkcml2ZXIgaW52
b2tpbmcgdGhlDQpQMlBETUEgQVBJcyBnZXRzIHRvIHBpY2sgaWYgaXQgdXNlcyB0aGUgc3R1Y3Qg
cGFnZSBiYXNlZCBpbnRlcmZhY2UNCmRlc2NyaWJlZCBhYm92ZSBvciB0aGUgbG93ZXIgbGV2ZWwg
cDJwIHByb3ZpZGVyIGludGVyZmFjZSB0aGlzIHNlcmllcw0KaW50cm9kdWNlcy4NCg0KPiBGb3Ig
dGhlIFAyUERNQSBBUEkgaXQgc2hvdWxkIGJlIGlycmVsZXZhbnQgaWYgc3RydWN0IHBhZ2VzIGFy
ZSB1c2VkIG9yIG5vdC4NCg0KT25seSBmb3IgdGhlIGxvd2VzdCBsZXZlbCBwMnAgcHJvdmlkZXIg
YmFzZWQgUDJQRE1BIEFQSSAtIHRoZXJlIGlzIGENCmhpZ2hlciBsZXZlbCBBUEkgZmFtaWx5IHdp
dGhpbiBQMlBETUEncyBBUEkgdGhhdCBpcyBhbGwgYWJvdXQgY3JlYXRpbmcNCmFuZCBtYW5hZ2lu
ZyBaT05FX0RFVklDRSBzdHJ1Y3QgcGFnZXMgYW5kIGEgcGdtYXAsIHRoZSBhYm92ZSBkZXNjcmli
ZXMNCnRoYXQgZmFtaWx5Lg0KDQpUaGFua3MsDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
