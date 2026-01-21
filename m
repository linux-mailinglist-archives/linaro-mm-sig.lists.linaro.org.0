Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGJ3AFbzcGmgbAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 16:40:06 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC9C59576
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 16:40:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 987E43FDB0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 15:40:04 +0000 (UTC)
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com [209.85.219.66])
	by lists.linaro.org (Postfix) with ESMTPS id 4EDFA3F7BA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 15:39:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=gVLzRYHH;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.66 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f66.google.com with SMTP id 6a1803df08f44-89473dca8aaso343086d6.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 07:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769009999; x=1769614799; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q/gIihsafKtPWuGmVrtzbFv3/1+tW3nx1RJPQscpuso=;
        b=gVLzRYHHVdqv0Ekg0uBlv1Wq1/i7Un7JbIwOexaKVJskZgAASR0aAftOLmkM+1+clZ
         6wdZPwvRgJ0UGDoSMmtP87UN4lz1SoIhIA0UUG/WSpz9KN5w4MymmANJCUBhMavqyiPA
         tkgb/CvkB/aKatKMSPohS1pcBOZrRne+1cuQVEfamMb2u1Nn2x59IGF5uYZNgxjcnaIM
         /OwEL0SV4ID4jhKoVFO3KN644TKrhR4cNaz1Pc1SZauYzhlDJn/GUgjsN6nOhQ/fXaOf
         8NsUF0+KEu3XOghYiR+1XS7d/gQnW8lc/vxVbVsvHrDetH2LzC+9horqbIuJLadZszuB
         FlfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769009999; x=1769614799;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q/gIihsafKtPWuGmVrtzbFv3/1+tW3nx1RJPQscpuso=;
        b=QS34oaHsxGWyoPQYDP4gEtqIu/hHBPKCe71sY9hqwexmQcwK7V/k4aCB1h4a0+pVQ4
         +shOqK70gU8Lq5lhK3yBFnM0y4rxoh7U/hmb6/DuG26PZseOSIj+8psew7ih4kiEoNnO
         PZouPBmwm1eZFrtYjzUtIkvpQt23S3khdT8xo/q0ZUGra82gPzzJY4Wrj1/mdQ2uEUtq
         wZN4iclKU0FEsyk5hZfvzV8zvedsdPemdSX92z85C+IwYFlH5vkChIxduLQXsOfKbwG0
         09k88b2CW4ZgpDpgCCS8TS7RwwlfaisUKYtr6IVPjRoaIszGSexbG8rHTftqzTyTX1j8
         cjMg==
X-Forwarded-Encrypted: i=1; AJvYcCXpka5TXNd09NgOxDoi7Q+Zvp2LZqF2RB+twXj0ILFEQvlaZM8PdfT1r9CXvQpEnuIWBq04o1jhFrlV/621@lists.linaro.org
X-Gm-Message-State: AOJu0YxVi9RO5AsTimCkBVmHEteRRIw4VGNai030Wybe9AyO2+/Zpx0P
	TWGo/DbOrudCm74SmD5Mv8L2u+tIBJySdrRTfRdnHQTDsPgFwei3LaXbwtiBGzb4xuE=
X-Gm-Gg: AZuq6aIwnbhFgOHJ2BNzhY/i/YY0xoU0HahYE+KKn+AeQRZ1erwsEDC+0YprwkJgTEN
	avTyA/NbFlBZ9by+p4MW9frvABD1VfR+nIu0pskFc4IUnQhQpVqP0vtTNrW72bAUzs6VxqEH9vw
	byJ5G8hHX7BZfZEUskN7VgyeYIFvTF3972NG9W59XQs0ApK+/doKFmAChVBDJ+JIc6rmkOPb88W
	zGOjeWWDxVMGil4/gX0gORHgrKewZsB2s9xn8/Jzm4xViqhLMDf882c69dOsuM3deNSwdx1wUcJ
	Ro5+o1wqJHfRyF1NQ9hSCeeucGyerkgigxuSzc/PlVMARW2KD9bWGlSHeMWW1c+q4Rp3KizP93b
	f8ZlWjWzCoruXXEzhb3UtP7zKlD3GRwRpfI+xoPiw+TKQxlvDIpVwHl2G+6wfvD1fJnyiVS1ef6
	JZNqdwZXjYEp797rIZl87tpnZCaR/x6PLMPY5KvH3AhwF4JJwBlIEQiIXb1C3qJGG67bE=
X-Received: by 2002:a05:6214:469b:b0:894:3cde:f81e with SMTP id 6a1803df08f44-8943cdef85amr237172426d6.41.1769009998640;
        Wed, 21 Jan 2026 07:39:58 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894592ba642sm58791866d6.57.2026.01.21.07.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 07:39:57 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viaJJ-00000006EiI-13u3;
	Wed, 21 Jan 2026 11:39:57 -0400
Date: Wed, 21 Jan 2026 11:39:57 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260121153957.GC961572@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-3-b7e0b07b8214@nvidia.com>
 <4fe42e7e-846c-4aae-8274-3e9a5e7f9a6d@amd.com>
 <20260121091423.GY13201@unreal>
 <7cfe0495-f654-4f9d-8194-fa5717eeafff@amd.com>
 <20260121131852.GX961572@ziepe.ca>
 <8a8ba092-6cfa-41d2-8137-e5e9d917e914@amd.com>
 <20260121135948.GB961572@ziepe.ca>
 <8689345b-241a-47f4-8e9a-61cde285bf8b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8689345b-241a-47f4-8e9a-61cde285bf8b@amd.com>
X-Spamd-Bar: --
Message-ID-Hash: BWUIDQFIZ2SZQLB3FTWCYQ2XN3AIM2MJ
X-Message-ID-Hash: BWUIDQFIZ2SZQLB3FTWCYQ2XN3AIM2MJ
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/7] dma-buf: Document RDMA non-ODP invalidate_mapping() special case
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BWUIDQFIZ2SZQLB3FTWCYQ2XN3AIM2MJ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 8FC9C59576
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMDM6MTU6NDZQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiBBbmQgbGV0J3MgY2xhcmlmeSB3aGF0IEkgc2FpZCBpbiBteSBvdGhlciBl
bWFpbCB0aGF0IHRoaXMgbmV3IHJldm9rZQ0KPiA+IHNlbWFudGljIGlzIG5vdCBqdXN0IGEgc2ln
bmFsIHRvIG1heWJlIHNvbWVkYXkgdW5tYXAgYnV0IGEgaGFyZA0KPiA+IGJhcnJpZXIgdGhhdCBp
dCBtdXN0IGJlIGRvbmUgb25jZSB0aGUgZmVuY2VzIGNvbXBsZXRlLCBzaW1pbGFyIHRvDQo+ID4g
bm9uLXBpbm5lZCBpbXBvcnRlcnMuDQo+IA0KPiBXZWxsLCBJIHdvdWxkIGF2b2lkIHRoYXQgc2Vt
YW50aWNzLg0KPg0KPiBFdmVuIHdoZW4gdGhlIGV4cG9ydGVyIHJlcXVlc3RzIHRoZSBtYXBwaW5n
IHRvIGJlIGludmFsaWRhdGVkIGl0DQo+IGRvZXMgbm90IG1lYW4gdGhhdCB0aGUgbWFwcGluZyBj
YW4gZ28gYXdheSBpbW1lZGlhdGVseS4NCj4gDQo+IEl0J3MgZmluZSB3aGVuIGFjY2Vzc2VzIGlu
aXRpYXRlZCBhZnRlciBhbiBpbnZhbGlkYXRpb24gYW5kIHRoZW4NCj4gd2FpdGluZyBmb3IgZmVu
Y2VzIGdvIGludG8gbmlydmFuYSBhbmQgaGF2ZSB1bmRlZmluZWQgcmVzdWx0cywgYnV0DQo+IHRo
ZXkgc2hvdWxkIG5vdCB0cmlnZ2VyIFBDSSBBRVIsIHdhcm5pbmdzIGZyb20gdGhlIElPTU1VIG9y
IGV2ZW4NCj4gd29yc2UgZW5kIHVwIGluIHNvbWUgTU1JTyBCQVIgb2YgYSBuZXdseSBhdHRhY2hl
ZCBkZXZpY2VzLg0KDQpTbyB3aGF0J3MgdGhlIHB1cnBvc2Ugb2YgdGhlIGZlbmNlIGlmIGFjY2Vz
c2VzIGNhbiBjb250aW51ZSBhZnRlcg0Kd2FpdGluZyBmb3IgZmVuY2VzPw0KDQpJZiB3ZSBhbHdh
eXMgaGF2ZSB0byB3YWl0IGZvciB0aGUgdW5tYXAgY2FsbCwgaXMgdGhlIGltcG9ydGVyIGFsbG93
ZWQNCnRvIGNhbGwgdW5tYXAgd2hpbGUgaXRzIG93biBmZW5jZXMgYXJlIG91dHN0YW5kaW5nPw0K
DQo+IFNvIGlmIHRoZSBleHBvcnRlciB3YW50cyB0byBiZSAxMDAlIHN1cmUgdGhhdCBub2JvZHkg
aXMgdXNpbmcgdGhlDQo+IG1hcHBpbmcgYW55IG1vcmUgdGhlbiBpdCBuZWVkcyB0byB3YWl0IGZv
ciB0aGUgaW1wb3J0ZXIgdG8gY2FsbA0KPiBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoKS4NCg0K
V2UgYXJlIHRyeWluZyB0byBpbnRyb2R1Y2UgdGhpcyBuZXcgaWRlYSBjYWxsZWQgInJldm9rZSIu
DQoNClJldm9rZSBtZWFucyB0aGUgZXhwb3J0ZXIgZG9lcyBzb21lIGRlZmluZWQgc2VxdWVuY2Ug
YW5kIGFmdGVyIHRoZSBlbmQNCm9mIHRoYXQgc2VxdWVuY2UgaXQga25vd3MgdGhlcmUgYXJlIG5v
IGZ1cnRoZXIgRE1BIG9yIENQVSBhY2Nlc3NlcyB0bw0KaXRzIG1lbW9yeSBhdCBhbGwuDQoNCkl0
IGhhcyB0byBoYXBwZW4gaW4gYm91bmRlZCB0aW1lLCBzbyBpdCBjYW4ndCBnZXQgZW50YW5nbGVk
IHdpdGgNCndhaXRpbmcgZm9yIHVzZXJzcGFjZSB0byBkbyBzb21ldGhpbmcgKGVnIGltcG9ydGVy
IHVubWFwIHZpYSBhbiBpb2N0bCkNCg0KSXQgaGFzIHRvIGJlIGFuIGFic29sdXRlIHN0YXRlbWVu
dCBiZWNhdXNlIHRoZSBWRklPIGFuZCBSRE1BIGV4cG9ydGVyDQp1c2UgY2FzZXMgY2FuIHRyaWdn
ZXIgVUFGcyBhbmQgQUVScyBpZiBpbXBvcnRlcnMga2VlcCBhY2Nlc3NpbmcuDQoNClNvLCB3aGF0
IGV4YWN0bHkgc2hvdWxkIHRoZSBleHBvcnQgc2VxdWVuY2UgYmU/IFdlIHdlcmUgcHJvcG9zaW5n
IHRvDQpjYWxsIGludmFsaWRhdGVfbWFwcGluZygpIGFuZCB3aGVuIGl0IHJldHVybnMgdGhlcmUg
aXMgbm8gYWNjZXNzLg0KDQpUaGUgZmVuY2UgaXMgbWlzc2luZywgc28gbm93IHRoZSBzZXF1ZW5j
ZXMgaW5jbHVkZXMgd2FpdCBmb3IgdGhlDQpmZW5jZXMuDQoNCkFuZCBub3cgeW91IGFyZSBzYXlp
bmcgd2UgaGF2ZSB0byB3YWl0IGZvciBhbGwgdW5tYXBzPyBOb3Qgb25seSB3YWl0DQpmb3IgdGhl
IHVubWFwcywgYnV0IHRoZSBpbXBvcnRlcnMgbm93IGFsc28gbXVzdCBjYWxsIHVubWFwIGFzIHBh
cnQgb2YNCnRoZWlyIGludmFsaWRhdGVfbWFwcGluZygpIGNhbGxiYWNrLi4gSXMgdGhhdCBPSz8g
RG8gZXhpc3RpbmcNCmltcG9ydGVycyBkbyB0aGF0Pw0KDQpJZiBhbGwgdGhlIGFib3ZlIGFyZSB5
ZXMsIHRoZW4gbGV0cyBkb2N1bWVudCBleHBsaWNpdGx5IHRoaXMgaXMgdGhlDQpyZXF1aXJlZCBz
ZXF1ZW5jZSBhbmQgd2UgY2FuIHRyeSB0byBtYWtlIGl0IHdvcmsuIFBsZWFzZSBzYXksIGJlY2F1
c2UNCndlIGp1c3QgZG9uJ3Qga25vdyBhbmQga2VlcCBnZXR0aW5nIHN1cnByaXNlZCA6KQ0KDQpU
aGFua3MsDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
