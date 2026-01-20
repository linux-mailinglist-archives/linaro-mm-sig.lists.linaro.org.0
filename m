Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCxBFoGib2mWDgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 16:42:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F8C46727
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 16:42:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE0DC40153
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 13:15:38 +0000 (UTC)
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	by lists.linaro.org (Postfix) with ESMTPS id B36203F70D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 13:15:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=afxP9CcS;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.196 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-8b2f0f9e4cbso439752885a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 05:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768914932; x=1769519732; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jl2KF0othdvrwDImGzxJcxoX7WKdbBXFC823mMEO8nY=;
        b=afxP9CcSTzMBipu4aK5vhAUDRgjH9PkOvNxYzF1jm8UazwAxRIBFhoVN06a6xNBIZh
         pVydR48nIxZxYyYAHkMiCElr5LFfDlZ1Brgi6KrTUObg8IU94kyn62YDaigrHxncPhgo
         wjQ8CXJ66rRpLSAnD65UY76px/KMLawb3jdOqt8DabfH14GQPItjWa0la5oNkm0E2/fN
         sOIh13QmqMBqzuGgiC3X0PzGa16ix5SWExca9IeVI6B0GlXYfV1BSJIBbDmGnlCCpMq+
         N5I46mG8PEixp542DZC7hpS3F4GhMnTWOEku4jKxjKljIYU+ry36ednIdDgyt8fBOrVs
         kzKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768914932; x=1769519732;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jl2KF0othdvrwDImGzxJcxoX7WKdbBXFC823mMEO8nY=;
        b=wvV5oZ9R90QvXwPmlfNcVDkcyoGdm8csnl9HF05Y/G69gcn5CwQkC4EuC5HPsTtDqD
         phh/dSC3CaaTF7Zl40/FaoX+xhbKBngHUYpn8rLk+BSYv101K0LIZ05n84FRnD2osOJz
         2DMK0CzMrfjEjb9hiYeCcTeWt1TGKQwOFhqfdsFybpMHAgA8EBvLq3bHf3HS+v21DBSM
         qJz8zPubYSFcU88nEfAZcdx5V1d9v7yWGdPOrczM3at2ZKjySgx9y48n5z4y2QvC9xpN
         HhWr8ASrqTd+e61FOp8oEjbfJrAaBnSISlazLbMc5iqGED9oIx/7vRiKUH/nyvDciWE+
         n5sg==
X-Forwarded-Encrypted: i=1; AJvYcCVgtBnRW/PuyqNc0VLvTeL9YOjiTz5MgdEf6mNm4Rtb3hfiKHFG/yBWPBgfFHiyt3Lw+rSrLRl1vz+yGCDv@lists.linaro.org
X-Gm-Message-State: AOJu0YzNWW8pEno+6IkHDqYOZ+iFFyJ9wuLMMNIE1uaNpf5A+RnQBEHm
	zsKMd3khKSzKNigt54+3JTZrr5m0moPtawG/7K/oP8um/yLmJgOYkKjvT+UlLwQ7R8g=
X-Gm-Gg: AY/fxX7qFLjAyFsuzJhUN0Vuk00dK5Ioz8lsXe7HDXuBBziiobLL83ic96ff9YzsD/1
	JVX30jsh2pAknmigsH2nLkq45sU/lHu/6c229ZCGyQ/kGUkHkckY+Lui9v8wTHJSg1wioO1GWwx
	+bW+qMCcr3ocJNx/Q7A48i/By+gRDADX0/h2nd3ig3zJ3I9qgki/IH/5GY4tgePybIxrk5tHS+6
	lBtWpfCXPZrU2C0AboTsmHOURihz2bPF8lL/xGfotlnO5eTRIXmDyI3WtEU/xC+XjM/xYoAXqy5
	WBsqvSe/doh24UMtpQgzI5DyFlhmMpSuj+6TRcqGZ9OyffH4s6IsDnUMPW3nvdlSZUc9LgaIsOi
	CjvecfJyXdTxq56D37mdrFq6t76xJtVi/uGIdzVOMQ+AWSPKahYYo84e+xiogXBOZ6HqkOjgKRZ
	3YDNK+7Kil55Q3X7ecSqlbo/ZPch+tH3r3awQ8lbYBvXktzVm9wiNgnx4iyTDgMRzLHas=
X-Received: by 2002:a05:620a:999:b0:8c6:a68a:bc04 with SMTP id af79cd13be357-8c6a68ac1c8mr1389837085a.7.1768914931884;
        Tue, 20 Jan 2026 05:15:31 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a7292cfbsm1017788585a.50.2026.01.20.05.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 05:15:31 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viBZy-00000005W6K-36CW;
	Tue, 20 Jan 2026 09:15:30 -0400
Date: Tue, 20 Jan 2026 09:15:30 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260120131530.GN961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-3-a03bb27c0875@nvidia.com>
 <20260119165951.GI961572@ziepe.ca>
 <20260119182300.GO13201@unreal>
 <20260119195444.GL961572@ziepe.ca>
 <20260120131046.GS13201@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260120131046.GS13201@unreal>
X-Spamd-Bar: ---
Message-ID-Hash: D33QQSRR4JMNFKHYDEFUFDOSBQNZYGN4
X-Message-ID-Hash: D33QQSRR4JMNFKHYDEFUFDOSBQNZYGN4
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.
 freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/4] iommufd: Require DMABUF revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D33QQSRR4JMNFKHYDEFUFDOSBQNZYGN4/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,lists];
	RCPT_COUNT_TWELVE(0.00)[30];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: D9F8C46727
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBKYW4gMjAsIDIwMjYgYXQgMDM6MTA6NDZQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBPbiBNb24sIEphbiAxOSwgMjAyNiBhdCAwMzo1NDo0NFBNIC0wNDAwLCBKYXNv
biBHdW50aG9ycGUgd3JvdGU6DQo+ID4gT24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMDg6MjM6MDBQ
TSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+ID4gT24gTW9uLCBKYW4gMTksIDIw
MjYgYXQgMTI6NTk6NTFQTSAtMDQwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiA+ID4gPiBP
biBTdW4sIEphbiAxOCwgMjAyNiBhdCAwMjowODo0N1BNICswMjAwLCBMZW9uIFJvbWFub3Zza3kg
d3JvdGU6DQo+ID4gPiA+ID4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNv
bT4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBJT01NVUZEIGRvZXMgbm90IHN1cHBvcnQgcGFnZSBm
YXVsdCBoYW5kbGluZywgYW5kIGFmdGVyIGEgY2FsbCB0bw0KPiA+ID4gPiA+IC5pbnZhbGlkYXRl
X21hcHBpbmdzKCkgYWxsIG1hcHBpbmdzIGJlY29tZSBpbnZhbGlkLiBFbnN1cmUgdGhhdA0KPiA+
ID4gPiA+IHRoZSBJT01NVUZEIERNQUJVRiBpbXBvcnRlciBpcyBib3VuZCB0byBhIHJldm9rZeKA
kWF3YXJlIERNQUJVRiBleHBvcnRlcg0KPiA+ID4gPiA+IChmb3IgZXhhbXBsZSwgVkZJTykuDQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9u
cm9AbnZpZGlhLmNvbT4NCj4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiAgZHJpdmVycy9pb21tdS9p
b21tdWZkL3BhZ2VzLmMgfCA5ICsrKysrKysrLQ0KPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jIGIvZHJpdmVycy9pb21tdS9p
b21tdWZkL3BhZ2VzLmMNCj4gPiA+ID4gPiBpbmRleCA3NmY5MDBmYTE2ODcuLmE1ZWIyYmM0ZWY0
OCAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0K
PiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jDQo+ID4gPiA+ID4g
QEAgLTE1MDEsMTYgKzE1MDEsMjIgQEAgc3RhdGljIGludCBpb3B0X21hcF9kbWFidWYoc3RydWN0
IGlvbW11ZmRfY3R4ICppY3R4LCBzdHJ1Y3QgaW9wdF9wYWdlcyAqcGFnZXMsDQo+ID4gPiA+ID4g
IAkJbXV0ZXhfdW5sb2NrKCZwYWdlcy0+bXV0ZXgpOw0KPiA+ID4gPiA+ICAJfQ0KPiA+ID4gPiA+
ICANCj4gPiA+ID4gPiAtCXJjID0gc3ltX3ZmaW9fcGNpX2RtYV9idWZfaW9tbXVmZF9tYXAoYXR0
YWNoLCAmcGFnZXMtPmRtYWJ1Zi5waHlzKTsNCj4gPiA+ID4gPiArCXJjID0gZG1hX2J1Zl9waW4o
YXR0YWNoKTsNCj4gPiA+ID4gPiAgCWlmIChyYykNCj4gPiA+ID4gPiAgCQlnb3RvIGVycl9kZXRh
Y2g7DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICsJcmMgPSBzeW1fdmZpb19wY2lfZG1hX2J1Zl9p
b21tdWZkX21hcChhdHRhY2gsICZwYWdlcy0+ZG1hYnVmLnBoeXMpOw0KPiA+ID4gPiA+ICsJaWYg
KHJjKQ0KPiA+ID4gPiA+ICsJCWdvdG8gZXJyX3VucGluOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4g
PiAgCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOw0KPiA+ID4gPiA+ICANCj4gPiA+ID4g
PiAgCS8qIE9uIHN1Y2Nlc3MgaW9wdF9yZWxlYXNlX3BhZ2VzKCkgd2lsbCBkZXRhY2ggYW5kIHB1
dCB0aGUgZG1hYnVmLiAqLw0KPiA+ID4gPiA+ICAJcGFnZXMtPmRtYWJ1Zi5hdHRhY2ggPSBhdHRh
Y2g7DQo+ID4gPiA+ID4gIAlyZXR1cm4gMDsNCj4gPiA+ID4gDQo+ID4gPiA+IERvbid0IHdlIG5l
ZWQgYW4gZXhwbGljaXQgdW5waW4gYWZ0ZXIgdW5tYXBwaW5nPw0KPiA+ID4gDQo+ID4gPiBZZXMs
IGJ1dCB0aGlzIHBhdGNoIGlzIGdvaW5nIHRvIGJlIGRyb3BwZWQgaW4gdjMgYmVjYXVzZSBvZiB0
aGlzDQo+ID4gPiBzdWdnZXN0aW9uLg0KPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
L2EzOTdmZjFlLTYxNWYtNDg3My05OGE5LTk0MGY5YzE2Zjg1Y0BhbWQuY29tDQo+ID4gDQo+ID4g
VGhhdCdzIG5vdCByaWdodCwgdGhhdCBzdWdnZXN0aW9uIGlzIGFib3V0IGNoYW5naW5nIFZGSU8u
IGlvbW11ZmQgbXVzdA0KPiA+IHN0aWxsIGFjdCBhcyBhIHBpbm5pbmcgaW1wb3J0ZXIhDQo+IA0K
PiBUaGVyZSBpcyBubyBjaGFuZ2UgaW4gaW9tbXVmZCwgYXMgaXQgaW52b2tlcyBkbWFfYnVmX2R5
bmFtaWNfYXR0YWNoKCkNCj4gd2l0aCBhIHZhbGlkICZpb3B0X2RtYWJ1Zl9hdHRhY2hfcmV2b2tl
X29wcy4gVGhlIGNoZWNrIGRldGVybWluaW5nIHdoZXRoZXINCj4gaW9tbXVmZCBjYW4gcGVyZm9y
bSBhIHJldm9rZSBpcyBoYW5kbGVkIHRoZXJlLg0KDQppb21tdWZkIGlzIGEgcGluaW5nIGltcG9y
dGVyLiBJIGRpZCBub3QgYWRkIGEgY2FsbCB0byBwaW4gYmVjYXVzZSBpdA0Kb25seSB3b3JrZWQg
d2l0aCBWRklPIHRoYXQgd291bGQgbm90IHN1cHBvcnQgaXQuIE5vdyB0aGF0IHRoaXMgc2VyaWVz
DQpmaXhlcyBpdCB0aGUgcGluIG11c3QgYmUgYWRkZWQuIERvbid0IGRyb3AgdGhpcyBwYXRjaC4N
Cg0KQWxsIHRoZSBleHBsYW5hdGlvbnMgd2UganVzdCBnYXZlIHNheSB0aGlzIHNwZWNpYWwgcmV2
b2tlIG1vZGUgb25seQ0KYWN0aXZhdGVzIGlmIHRoZSBidWZmZXIgaXMgcGlubmVkIGJ5IHRoZSBp
bXBvcnRlciwgc28gaW9tbXVmZCBtdXN0IHBpbg0KaXQuIE90aGVyd2lzZSBpdCBzYXlzIGl0IGlz
IHdvcmtpbmcgaW4gdGhlIG1vdmUgbW9kZSB3aXRoIGZhdWx0aW5nDQp0aGF0IGl0IGNhbm5vdCBz
dXBwb3J0Lg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
