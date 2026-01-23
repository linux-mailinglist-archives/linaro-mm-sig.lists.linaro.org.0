Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KBmCqaBc2n2wwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 15:11:50 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7131176C75
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 15:11:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3328D401C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 14:11:48 +0000 (UTC)
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
	by lists.linaro.org (Postfix) with ESMTPS id 947923F6FF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 14:11:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=TX1INhJy;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.65 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f65.google.com with SMTP id 6a1803df08f44-8946e32e534so30682456d6.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 06:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769177502; x=1769782302; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A5PKpJ/4T6+3Viu0suTKGZFl50yyl7xVfieAULiIAgY=;
        b=TX1INhJyYCXhuJc7vyMDsO7rgCBwhe3WzEKL9BnfLT1AL4TMckPmYFfZIPVEDPifHC
         4AWa/QbUBErxbLpuN2h80KNKbkv6nVfElrzmzMGcDXEmSic6/mMoHTLQU8E6422N+zHv
         RmfO3oovfOZ1LNdkWAdlIUrbHWWHiCWhmB0Ci/+aNN7JU/+ItUFrleANg04kHu1qS+1e
         tuBCN0i9jP+KXT8Z4YVbBqENmlGTMJLu7xIACJSQ3D7rnVcN/9PU9vsNjqoykj/rdauK
         BPgaebE47qkauJcawRAZdIgqnBj7puN+BTFQuXlkmy/C2UnggLo0a0J7zyeHvTVLFnYS
         3Mng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769177502; x=1769782302;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A5PKpJ/4T6+3Viu0suTKGZFl50yyl7xVfieAULiIAgY=;
        b=nxcuUxX2fdDxxHUqqX18b5hB3TVLhURxldIR450/e0cIKqu3opowilqz/ZhBjz52VK
         HXlYYfCo6S8W4D1B4Uxmykaz9byCUI2jmrPnPOIbWmyr9GCbuj/mP7zBo60KV+xD2NBt
         OBObdDBTclxo2Ka+Zs8e+0YTVltWGgJMduQPI05u5ihEPk3qyr3W5mycMznCEwFf8srl
         JCaowW8+IenqSHF73vA4GtNlY1nqsG2MkGlRbiNHA1SJRILgyNMgEDPY/cJ2WFTubPHc
         EXww1X/Wl6ej/4/mirCp17EJdLJQKcquQ5xcIrYkFYmLcAH7gZiZF1MuWsb8IZOj05hi
         v5pQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcoqVDQxzwBXLK0Z8btUM/apPDz5Ye7Btc4gB4r4x/LIbVtXNEmG+YYNBhhrHkKOEqEHhq3/p/C2ArAKwI@lists.linaro.org
X-Gm-Message-State: AOJu0YycZOfZbPllAt1W8TQaHJkdFrPfxU0ZSwQLnaIqLGL8rtdRgt0+
	ms0p2GXtEAjJra0DJmIe+r3eqRjENdOkvWPhdop/b/7eL04ForrdueuhUMBW8O8rMCI=
X-Gm-Gg: AZuq6aIK+bstmDqIqQ62CM0NjtlYi+ZrcaRfzuAxGiusr4zMKNNBToIUDmPP+QzFT6r
	g7/u/CweNw6JM0iuHCH9cpdy3NSP3/CxQ47gZdCTBevH8cEAZ2O84dJZN/RxPC9J4j1AuqUIyaN
	ykTqeWVdO2kgM33VDiP8u/sCVaDV2WWxHk+jTDCUcNGCVSn2Ko7UD9a8/AVFcpm33JDt0ERiNRJ
	gPxFAgPDp5SGYb/MbyPVurSYesQ84OE4wB4hMmFEXcQ6GHamyUszFX9oP+8Oi9blKfKrsbIOJDr
	MG82aSWwrgUppFVTh+nzYwibHEW7jZDg/yQUNLgh8l0YKq7G1VucMGItGAgZICup1atLf1A2mzl
	cdYjDq/zMxrZU3+nF123kgy6s7vGuPNcbV7KpDSG0EYEw3/Otajr2UiWmy3KyIpX/lnEmrwJ6pj
	9bAFgFgibVIiK22gMZ4dwf4F15BEmiaTQp0rgZrptQJCOQQtgiJToznUPWVhnfET6QP9fngdrXZ
	fHVnw==
X-Received: by 2002:ad4:5c46:0:b0:88a:589b:5db5 with SMTP id 6a1803df08f44-894900d6bccmr42275406d6.0.1769177502022;
        Fri, 23 Jan 2026 06:11:42 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6e37c8fa6sm187731585a.4.2026.01.23.06.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 06:11:41 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vjHsy-00000006stw-3Bfb;
	Fri, 23 Jan 2026 10:11:40 -0400
Date: Fri, 23 Jan 2026 10:11:40 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260123141140.GC1589888@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
 <20260121133146.GY961572@ziepe.ca>
 <b88b500c-bacc-483d-9d1a-725d4158302a@amd.com>
 <20260121160140.GF961572@ziepe.ca>
 <a1c55bd8-9891-4064-83fe-ac56141e586f@amd.com>
 <20260122234404.GB1589888@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260122234404.GB1589888@ziepe.ca>
X-Spamd-Bar: ---
Message-ID-Hash: OSPWAP5P5AWNBKEWYWNHVAWTHPGYNKHW
X-Message-ID-Hash: OSPWAP5P5AWNBKEWYWNHVAWTHPGYNKHW
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OSPWAP5P5AWNBKEWYWNHVAWTHPGYNKHW/>
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
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7131176C75
X-Rspamd-Action: no action

T24gVGh1LCBKYW4gMjIsIDIwMjYgYXQgMDc6NDQ6MDRQTSAtMDQwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPiBPbiBUaHUsIEphbiAyMiwgMjAyNiBhdCAxMjozMjowM1BNICswMTAwLCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+ID4+IFdoYXQgcm91Z2hseSBoYXBwZW5zIGlzIHRoYXQg
ZWFjaCBETUEtYnVmIG1hcHBpbmcgdGhyb3VnaCBhIGNvdXBsZQ0KPiA+ID4+IG9mIGhvb3BzIGtl
ZXBzIGEgcmVmZXJlbmNlIG9uIHRoZSBkZXZpY2UsIHNvIGV2ZW4gYWZ0ZXIgYSBob3RwbHVnDQo+
ID4gPj4gZXZlbnQgdGhlIGRldmljZSBjYW4gb25seSBmdWxseSBnbyBhd2F5IGFmdGVyIGFsbCBo
b3VzZWtlZXBpbmcNCj4gPiA+PiBzdHJ1Y3R1cmVzIGFyZSBkZXN0cm95ZWQgYW5kIGJ1ZmZlcnMg
ZnJlZWQuDQo+ID4gPiANCj4gPiA+IEEgc2ltcGxlIHJlZmVyZW5jZSBvbiB0aGUgZGV2aWNlIG1l
YW5zIG5vdGhpbmcgZm9yIHRoZXNlIGtpbmRzIG9mDQo+ID4gPiBxdWVzdGlvbnMuIEl0IGRvZXMg
bm90IHN0b3AgdW5sb2FkaW5nIGFuZCByZWxvYWRpbmcgYSBkcml2ZXIuDQo+ID4gDQo+ID4gV2Vs
bCBhcyBmYXIgYXMgSSBrbm93IGl0IHN0b3BzIHRoZSBQQ0llIGFkZHJlc3Mgc3BhY2UgZnJvbSBi
ZWluZyByZS11c2VkLg0KPiA+IA0KPiA+IFNvIHdoZW4geW91IGRvIGFuICJlY2hvIDEgPiByZW1v
dmUiIGFuZCB0aGVuIGFuIHJlLXNjYW4gb24gdGhlDQo+ID4gdXBzdHJlYW0gYnJpZGdlIHRoYXQg
d29ya3MsIGJ1dCB5b3UgZ2V0IGRpZmZlcmVudCBhZGRyZXNzZXMgZm9yIHlvdXINCj4gPiBNTUlP
IEJBUnMhDQo+IA0KPiBUaGF0J3MgcHJldHR5IGEgbmljaGUgc2NlbmFyaW8uLiBNb3N0IHBlb3Bs
ZSBkb24ndCByZXNjYW4gdGhlaXIgUENJDQo+IGJ1cy4gSWYgeW91IGp1c3QgZG8gcm1tb2QvaW5z
bW9kIHRoZW4gaXQgd2lsbCBiZSByZS11c2VkLCB0aGVyZSBpcyBubw0KPiByZXNjYW4gdG8gbW92
ZSB0aGUgTU1JTyBhcm91bmQgb24gdGhhdCBjYXNlLg0KDQpBaCBJIGp1c3QgcmVtZW1iZXJlZCB0
aGVyZSBpcyBhbm90aGVyIGltcG9ydGFudCBkZXRhaWwgaGVyZS4NCg0KSXQgaXMgaWxsZWdhbCB0
byBjYWxsIHRoZSBETUEgQVBJIGFmdGVyIHlvdXIgZHJpdmVyIGlzIHVucHJvYmVkLiBUaGUNCmtl
cm5lbCBjYW4gb29wcy4gU28gaWYgYSBkcml2ZXIgaXMgYWxsb3dpbmcgcmVtb3ZlKCkgdG8gY29t
cGxldGUNCmJlZm9yZSBhbGwgdGhlIGRtYV9idWZfdW5tYXBzIGhhdmUgYmVlbiBjYWxsZWQgaXQg
aXMgYnVnZ3kgYW5kIHJpc2tzDQphbiBvb3BzLg0KDQpodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzgwNjdmMjA0LTEzODAtNGQzNy04ZmZkLTAwN2ZjNmYyNjczOEBrZXJuZWwub3JnL1QvI20w
YzdkZGEwZmI1OTgxMjQwODc5YzVjYTQ4OTE3Njk4N2Q2ODg4NDRjDQoNCkFzIGNhbGxpbmcgYSBk
bWFfYnVmX3VubWFwKCkgLT4gZG1hX3VubWFfc2coKSBhZnRlciByZW1vdmUoKSByZXR1cm5zDQpp
cyBub3QgYWxsb3dlZC4uDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
