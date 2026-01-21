Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEPrDZD4cGmgbAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 17:02:24 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3C2599BE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 17:02:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4171E3FDB0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 16:02:19 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by lists.linaro.org (Postfix) with ESMTPS id 91F6E3F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 16:02:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=oGr0XbIP;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.52 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-88a2e3bd3cdso11698156d6.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 08:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769011321; x=1769616121; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xk50a3DJCYgVIrcCVz4YsPwnwCkWAaxm0jVyWa00IrY=;
        b=oGr0XbIPe7XMEHIBgUeenFyvntGd+rTCoyS0YsijDf0VRoRtvk9DqmY1Vvs4zpA3ec
         YBFTOkK2aS3IKhPKJCwQzFKSJA9TUQT94aQ1grxiDx6MrbjLN49YZNqjXFXjoGclf/E0
         hGBxGnxS+BrurbAfezC6OB3/VIIdkbe15dcta58vhEUjW2pCSdHaTIZQtdEfxo6tXIFS
         w58Z3jVzwn+/wXqJrRZe0QsCvFKWabvJYCgijBNJ9fgC+KORgitOs1iF+P9/ZcojdDgy
         Qpk4qPcs/gJCOTHQZ2Twlhiu+IjrDpfUNB/sZBEl35zySvxLStr39dEeq504haWH9kR6
         WumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769011321; x=1769616121;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xk50a3DJCYgVIrcCVz4YsPwnwCkWAaxm0jVyWa00IrY=;
        b=bZ156PUALc9ythuQjJKouPpZf+fT8ZvFNYQB+JQEgbviRlXSlNoif6rW+Avk9kluFa
         HfL2Y7V7lG9kCOATpK7rckes4cBKiK3WGfnRyo9UU3UL1rriXIKFG+Va01ZdiI22v+Nl
         MP10cqQWcJPPiyO6N4TnHh67awAZqCbV135U5hPDsROQY/tV1Gdaf0shQVP3GC/Yte4Q
         nQUqVL6MlF5DLiCCarOOs/LeGjPdit+2Yhax2ChUvJX0eBgAS/gnWqzORmeD+sH8nYL8
         cLCLK9pY4V0vzh0/vAwf5dFCpVO8mMHPfVqFwTgGDi1yrMT9ad6vUkUXwHFU446LVcmp
         FW+w==
X-Forwarded-Encrypted: i=1; AJvYcCUf1Lsa2cCDDE9gtUqaSYE6Jd67H4kmhnq2Hq7WD9+MW8EKuhq/wQ+jx1CloG4Lv2DUAAMXDcZQRSzSO2GW@lists.linaro.org
X-Gm-Message-State: AOJu0YwpB9b5TRmqBDUKNdlh+N0qgRkgGvjI0lduJv56VnDBHRuBX+mV
	vpZdvOitGOpV9bFOw6a0Axec5xQDkgI0t+7+0yMYitp2DYVYw0JC1a8Wx81AB2fiaaA=
X-Gm-Gg: AZuq6aLdks7ZdMxFKOeG2VDgmvOck93wbelaOIxMVPYjgrrCZPSy6GJBawYZBMjKD0y
	HlHunsBfnZlgT12jYn98dy0FZjPYHx7c7JOHAk4AeYiBLYP/OijHCgitJPBTgq0rRTSnGbWv2P0
	63AQv75od/hUsohiBZTwqQNVzyyzlfX3R5alFF2gW8UHIZw+3wqftCJmXeW6U8K3lp/IiH1gdHG
	cQgu8KmEriXdZAOApJA3DNitaZzlAf+f74IHltZ4iV/gad2c8+N7dD+Io8ipMSLmtaOBe0aXGrM
	bQUJo1wd+iMipKU+LhQP4+XytL4DkoFoZdnJv27WzsCjvMAN10F1Nz+HrXg+ex8e1i9Xut8edFD
	OM1UeOo9/DX2MIosPKFYTI8V7JQDygLio6DPRUDbSWOEEi2gkT+MkCUXYsFl5K+omET1uDtPQw0
	rD3m5qUw4kqfts8kiyDJl4DADR2aLw0XyufqHpeAxTXfo5nTpSeLDramey2VzWom2+PsK9V6g/2
	lnw+g==
X-Received: by 2002:ad4:5c4d:0:b0:88a:3861:9131 with SMTP id 6a1803df08f44-893982737e8mr294508076d6.34.1769011302558;
        Wed, 21 Jan 2026 08:01:42 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8946e3aee12sm27692726d6.39.2026.01.21.08.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 08:01:41 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viaeK-00000006Es6-2jLq;
	Wed, 21 Jan 2026 12:01:40 -0400
Date: Wed, 21 Jan 2026 12:01:40 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260121160140.GF961572@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
 <20260121133146.GY961572@ziepe.ca>
 <b88b500c-bacc-483d-9d1a-725d4158302a@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b88b500c-bacc-483d-9d1a-725d4158302a@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: QPN3GOW3A5S7JDXBGYVUOU4BAHYTWJC4
X-Message-ID-Hash: QPN3GOW3A5S7JDXBGYVUOU4BAHYTWJC4
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QPN3GOW3A5S7JDXBGYVUOU4BAHYTWJC4/>
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
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig.lists.linaro.org:server fail];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,nvidia.com:email,ziepe.ca:mid,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 1E3C2599BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMDQ6Mjg6MTdQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8yMS8yNiAxNDozMSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiA+
IE9uIFdlZCwgSmFuIDIxLCAyMDI2IGF0IDEwOjIwOjUxQU0gKzAxMDAsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6DQo+ID4+IE9uIDEvMjAvMjYgMTU6MDcsIExlb24gUm9tYW5vdnNreSB3cm90ZToN
Cj4gPj4+IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4+Pg0K
PiA+Pj4gZG1hLWJ1ZiBpbnZhbGlkYXRpb24gaXMgcGVyZm9ybWVkIGFzeW5jaHJvbm91c2x5IGJ5
IGhhcmR3YXJlLCBzbyBWRklPIG11c3QNCj4gPj4+IHdhaXQgdW50aWwgYWxsIGFmZmVjdGVkIG9i
amVjdHMgaGF2ZSBiZWVuIGZ1bGx5IGludmFsaWRhdGVkLg0KPiA+Pj4NCj4gPj4+IEZpeGVzOiA1
ZDc0NzgxZWJjODYgKCJ2ZmlvL3BjaTogQWRkIGRtYS1idWYgZXhwb3J0IHN1cHBvcnQgZm9yIE1N
SU8gcmVnaW9ucyIpDQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25y
b0BudmlkaWEuY29tPg0KPiA+Pg0KPiA+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+Pg0KPiA+PiBQbGVhc2UgYWxzbyBrZWVwIGlu
IG1pbmQgdGhhdCB0aGUgd2hpbGUgdGhpcyB3YWl0IGZvciBhbGwgZmVuY2VzIGZvcg0KPiA+PiBj
b3JyZWN0bmVzcyB5b3UgYWxzbyBuZWVkIHRvIGtlZXAgdGhlIG1hcHBpbmcgdmFsaWQgdW50aWwN
Cj4gPj4gZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KCkgd2FzIGNhbGxlZC4NCj4gPiANCj4gPiBD
YW4geW91IGVsYWJvcmF0ZSBvbiB0aGlzIG1vcmU/DQo+ID4gDQo+ID4gSSB0aGluayB3aGF0IHdl
IHdhbnQgZm9yIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpIGlzIHRoZSBzdHJvbmcNCj4gPiBn
dWFyZW50ZWUgdGhhdCB0aGUgaW1wb3J0ZXIgc3RvcHMgZG9pbmcgYWxsIGFjY2VzcyB0byB0aGUg
bWVtb3J5IG9uY2UNCj4gPiB0aGlzIHNlcXVlbmNlIGlzIGNvbXBsZXRlZCBhbmQgdGhlIGV4cG9y
dGVyIGNhbiByZWx5IG9uIGl0LiBJIGRvbid0DQo+ID4gdGhpbmsgdGhpcyB3b3JrcyBhbnkgb3Ro
ZXIgd2F5Lg0KPiA+IA0KPiA+IFRoaXMgaXMgYWxyZWFkeSB0cnVlIGZvciBkeW5hbWljIG1vdmUg
Y2FwYWJsZSBpbXBvcnRlcnMsIHJpZ2h0Pw0KPiANCj4gTm90IHF1aXRlLCBuby4NCg0KOigNCg0K
SXQgaXMga2luZCBvZiBzaG9ja2luZyB0byBoZWFyIHRoZXNlIEFQSXMgd29yayBsaWtlIHRoaXMg
d2l0aCBzdWNoIGENCmxvb3NlIGxpZmV0aW1lIGRlZmluaXRpb24uIExlb24gY2FuIHlvdSBpbmNs
dWRlIHNvbWUgb2YgdGhlc2UgZGV0YWlsDQppbiB0aGUgbmV3IGNvbW1lbnRzPw0KDQo+ID4+IElu
IG90aGVyIHdvcmRzIHlvdSBjYW4gb25seSByZWRpcmVjdCB0aGUgRE1BLWFkZHJlc3NlcyBwcmV2
aW91c2x5DQo+ID4+IGdpdmVuIG91dCBpbnRvIG5pcnZhbmEgKG9yIGEgZHVtbXkgbWVtb3J5IG9y
IHNpbWlsYXIpLCBidXQgeW91IHN0aWxsDQo+ID4+IG5lZWQgdG8gYXZvaWQgcmUtdXNpbmcgdGhl
bSBmb3Igc29tZXRoaW5nIGVsc2UuDQo+ID4gDQo+ID4gRG9lcyBhbnkgZHJpdmVyIGRvIHRoaXM/
IElmIHlvdSB1bmxvYWQvcmVsb2FkIGEgR1BVIGRyaXZlciBpdCBpcw0KPiA+IGdvaW5nIHRvIHJl
LXVzZSB0aGUgYWRkcmVzc2VzIGhhbmRlZCBvdXQ/DQo+IA0KPiBJIG5ldmVyIGZ1bGx5IHJlYWQg
dGhyb3VnaCBhbGwgdGhlIHNvdXJjZSBjb2RlLCBidXQgaWYgSSdtIG5vdA0KPiBjb21wbGV0ZWx5
IG1pc3Rha2VuIHRoYXQgaXMgZW5mb3JjZWQgZm9yIGFsbCBHUFUgZHJpdmVycyB0aHJvdWdoIHRo
ZQ0KPiBETUEtYnVmIGFuZCBEUk0gbGF5ZXIgbGlmZXRpbWUgaGFuZGxpbmcgYW5kIEkgdGhpbmsg
ZXZlbiBpbiBvdGhlciBpbg0KPiBrZXJuZWwgZnJhbWV3b3JrcyBsaWtlIFY0TCwgYWxzYSBldGMu
Li4NCg0KPiBXaGF0IHJvdWdobHkgaGFwcGVucyBpcyB0aGF0IGVhY2ggRE1BLWJ1ZiBtYXBwaW5n
IHRocm91Z2ggYSBjb3VwbGUNCj4gb2YgaG9vcHMga2VlcHMgYSByZWZlcmVuY2Ugb24gdGhlIGRl
dmljZSwgc28gZXZlbiBhZnRlciBhIGhvdHBsdWcNCj4gZXZlbnQgdGhlIGRldmljZSBjYW4gb25s
eSBmdWxseSBnbyBhd2F5IGFmdGVyIGFsbCBob3VzZWtlZXBpbmcNCj4gc3RydWN0dXJlcyBhcmUg
ZGVzdHJveWVkIGFuZCBidWZmZXJzIGZyZWVkLg0KDQpBIHNpbXBsZSByZWZlcmVuY2Ugb24gdGhl
IGRldmljZSBtZWFucyBub3RoaW5nIGZvciB0aGVzZSBraW5kcyBvZg0KcXVlc3Rpb25zLiBJdCBk
b2VzIG5vdCBzdG9wIHVubG9hZGluZyBhbmQgcmVsb2FkaW5nIGEgZHJpdmVyLg0KDQpPYnZpb3Vz
bHkgaWYgdGhlIGRyaXZlciBpcyBsb2FkZWQgZnJlc2ggaXQgd2lsbCByZWFsbG9jYXRlLg0KDQpU
byBkbyB3aGF0IHlvdSBhcmUgc2F5aW5nIHRoZSBEUk0gZHJpdmVycyB3b3VsZCBoYXZlIHRvIGJs
b2NrIGR1cmluZw0KZHJpdmVyIHJlbW92ZSB1bnRpbCBhbGwgdW5tYXBzIGhhcHBlbi4NCg0KPiBC
YWNrZ3JvdW5kIGlzIHRoYXQgYSBsb3Qgb2YgZGV2aWNlIHN0aWxsIG1ha2UgcmVhZHMgZXZlbiBh
ZnRlciB5b3UNCj4gaGF2ZSBpbnZhbGlkYXRlZCBhIG1hcHBpbmcsIGJ1dCB0aGVuIGRpc2NhcmQg
dGhlIHJlc3VsdC4NCg0KQW5kIHRoZXkgYWxzbyBkb24ndCBpbnNlcnQgZmVuY2VzIHRvIGNvbmNs
dWRlIHRoYXQ/DQoNCj4gU28gd2hlbiB5b3UgZG9uJ3QgaGF2ZSBzYW1lIGdyYWNlIHBlcmlvZCB5
b3UgZW5kIHVwIHdpdGggUENJIEFFUiwNCj4gd2FybmluZ3MgZnJvbSBJT01NVSwgcmFuZG9tIGFj
Y2Vzc2VzIHRvIFBDSSBCQVJzIHdoaWNoIGp1c3QgaGFwcGVuDQo+IHRvIGJlIGluIHRoZSBvbGQg
bG9jYXRpb24gb2Ygc29tZXRoaW5nIGV0Yy4uLg0KDQpZZXMsIGRlZmluaXRlbHkuIEl0IGlzIHZl
cnkgaW1wb3J0YW50IHRvIGhhdmUgYSBkZWZpbml0aXZlIHBvaW50IGluDQp0aGUgQVBJIHdoZXJl
IGFsbCBhY2Nlc3NlcyBzdG9wLiBXaGlsZSAicmVhZCBidXQgZGlzY2FyZCIgc2VlbXMNCmhhcm1s
ZXNzIG9uIHRoZSBzdXJmYWNlLCB0aGVyZSBhcmUgY29ybmVyIGNhc2VzIHdoZXJlIGl0IGlzIG5v
dCBPSy4NCg0KQW0gSSB1bmRlcnN0YW5kaW5nIHJpZ2h0IHRoYXQgdGhlc2UgZGV2aWNlcyBtdXN0
IGZpbmlzaCB0aGVpciByZWFkcw0KYmVmb3JlIGRvaW5nIHVubWFwPw0KDQo+IEkgd291bGQgcmF0
aGVyIGxpa2UgdG8ga2VlcCB0aGF0IHNlbWFudGljcyBldmVuIGZvciBmb3JjZWZ1bGx5DQo+IHNo
b290ZG93bnMgc2luY2UgaXQgcHJvdmVkIHRvIGJlIHJhdGhlciByZWxpYWJsZS4NCg0KV2UgY2Fu
IGludmVzdGlnYXRlIG1ha2luZyB1bm1hcCB0aGUgYmFycmllciBwb2ludCBpZiB0aGlzIGlzIHRo
ZSBjYXNlLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
