Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 15151B1CE22
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Aug 2025 22:58:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63ECB44A17
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Aug 2025 20:58:44 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 87C1544331
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Aug 2025 20:58:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=RqDyPvtk;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754513911;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fFNdR9gJvxUJ76WkzFWy6OZiky5m3qPp0Fyvysc9k2k=;
	b=RqDyPvtk7mRYQFeZYbX4XVaO1ZfuPpuIZncu7aPnyVXPTNibSw8sv5iB4qKSq00dEkj9EW
	YyobAOLwSO+OQFYZJwEt+Ky30a5+whsvrJd1J5ImUInQJ9TlEZYfEBFORXvGspCdwKOqkP
	Fr8iJpnvGVNdWc8IJfdUrU1I99Czl3Q=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-470-XaXtTw44Mkil_m1Ocn5EZQ-1; Wed, 06 Aug 2025 16:58:30 -0400
X-MC-Unique: XaXtTw44Mkil_m1Ocn5EZQ-1
X-Mimecast-MFC-AGG-ID: XaXtTw44Mkil_m1Ocn5EZQ_1754513909
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-3e3fff9eb72so831085ab.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 Aug 2025 13:58:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754513909; x=1755118709;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XL3JtSDnypcZCdbt3A90Mr99TpavO/k4/VrpLyiBez8=;
        b=aiiqaQCRAnQaXam6uN1Lj8g/LRUIAKbgK+vjzWhElflzsMOYTBBFHAHP9zWQ9Q12e7
         z8DZQu6KDwI/3jNxt0Yrk28nxdDt3V7A7qIt8ymfriK+vRh1Xg/EHvzbioBMl5d710O6
         tE7iIuK62UOOYNbJ+a8zrah3aYx5h2R+VGYjFIRbTcL+PwWKfru53rvDC2uMrxsRfLBc
         Td1xKv9kVbNkvratC7ukeONbsCM8/IqtAO43Kxv2IV8QwiIa+lMQgIbRCHJrmr3Fs/Bd
         80SRaBGFWyD5kEpI0T1pjM5LbDmN+AWKvI4zm8mDMoskqC3pJtzgC310B8xzRQTr7ugV
         kUzg==
X-Forwarded-Encrypted: i=1; AJvYcCXJRM5uw7Jy71sFQL5jNDvSiq2M2lwmYa7vKO/NL3m68cisEpMMcNJN1TZTQkqYFcrLlYlrXHR0RdmEJReX@lists.linaro.org
X-Gm-Message-State: AOJu0Yxc38h38wYGU6wp2n7QPTvG2nh0JWnQ0ZeGfGNSd8JU8yTJoIa4
	JUKZ5fum0fRanc0k4f5u2hpTRCzURY+aC3AGQGbx6NyNpVg83ryAGG0UTSKlrbWx1mCCxPvB6UR
	fV6JMpXoaie5KPJQbbHleCFpNPrSfIbPZh4qQCacJwrahDXX3CAjU+EYixHoTKHOMaIzy
X-Gm-Gg: ASbGnct7KC7RPOYcy9gOgg94hnROYDdPugmZCY7fqOXtPWtxuoaDdiPPMPHt1b6kMV3
	0+hbwhmrwi9G3FhtgvDgRVPEmdsSGHWQO0zyn2OGMQxIa56UVumj7VYNI8bpKHuAREYMAQvV/6U
	sGZtis9uUZ3P2EkDTYH3MjhwXDHvcNJHAFLVHtEBH+GlXJTY5VEnlOHEorOStwPuamO4oHWo3Rt
	DTpnOXD1XJ4SwHo6Nl1xYviOS/hZeK4NZLRkBy692EVr1qLHF/lKif730qrXAw8O6A7gKCipJ+N
	HqLtINo46lvTF6YcJ8P1yfHqxmhetfZXcFvJw11YwcM=
X-Received: by 2002:a05:6e02:152e:b0:3e3:d2eb:52db with SMTP id e9e14a558f8ab-3e51b79eae2mr20687155ab.0.1754513909043;
        Wed, 06 Aug 2025 13:58:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvMHObcGautLtJ7984K/wyyriLvMdPXmyUUT5V0nwJ7vFbNm7fOcxZIXtiLyBYuGHd6raZZQ==
X-Received: by 2002:a05:6e02:152e:b0:3e3:d2eb:52db with SMTP id e9e14a558f8ab-3e51b79eae2mr20686945ab.0.1754513908609;
        Wed, 06 Aug 2025 13:58:28 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ab01e84desm2049992173.51.2025.08.06.13.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 13:58:27 -0700 (PDT)
Date: Wed, 6 Aug 2025 14:58:25 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250806145825.2654ee59.alex.williamson@redhat.com>
In-Reply-To: <c9b6237964b9606418af400bb6bec5178fcffff2.1754311439.git.leon@kernel.org>
References: <cover.1754311439.git.leon@kernel.org>
	<c9b6237964b9606418af400bb6bec5178fcffff2.1754311439.git.leon@kernel.org>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: QIF8BgS5kbaK-0XUi3_qZ3EjfRDiKkXvoAioqBCTFaE_1754513909
X-Mimecast-Originator: redhat.com
X-Spamd-Result: default: False [-3.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 87C1544331
X-Spamd-Bar: ---
Message-ID-Hash: F37RGVR5OIVFK2EE2GOBINU6GZNLYEBQ
X-Message-ID-Hash: F37RGVR5OIVFK2EE2GOBINU6GZNLYEBQ
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leonro@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 01/10] PCI/P2PDMA: Remove redundant bus_offset from map state
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F37RGVR5OIVFK2EE2GOBINU6GZNLYEBQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAgNCBBdWcgMjAyNSAxNjowMDozNiArMDMwMA0KTGVvbiBSb21hbm92c2t5IDxsZW9u
QGtlcm5lbC5vcmc+IHdyb3RlOg0KDQo+IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52
aWRpYS5jb20+DQo+IA0KPiBSZW1vdmUgdGhlIGJ1c19vZmYgZmllbGQgZnJvbSBwY2lfcDJwZG1h
X21hcF9zdGF0ZSBzaW5jZSBpdCBkdXBsaWNhdGVzDQo+IGluZm9ybWF0aW9uIGFscmVhZHkgYXZh
aWxhYmxlIGluIHRoZSBwZ21hcCBzdHJ1Y3R1cmUuIFRoZSBidXNfb2Zmc2V0DQo+IGlzIG9ubHkg
dXNlZCBpbiBvbmUgbG9jYXRpb24gKHBjaV9wMnBkbWFfYnVzX2FkZHJfbWFwKSBhbmQgaXMgYWx3
YXlzDQo+IGlkZW50aWNhbCB0byBwZ21hcC0+YnVzX29mZnNldC4NCj4gDQo+IFJldmlld2VkLWJ5
OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4NCj4gU2lnbmVkLW9mZi1ieTogSmFzb24g
R3VudGhvcnBlIDxqZ2dAbnZpZGlhLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92
c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL3BjaS9wMnBkbWEuYyAg
ICAgICB8IDEgLQ0KPiAgaW5jbHVkZS9saW51eC9wY2ktcDJwZG1hLmggfCAzICstLQ0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BjaS9wMnBkbWEuYyBiL2RyaXZlcnMvcGNpL3AycGRtYS5jDQo+IGlu
ZGV4IGRhNTY1N2EwMjAwNzQuLjI3NGJiN2JjYzBiYzUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
cGNpL3AycGRtYS5jDQo+ICsrKyBiL2RyaXZlcnMvcGNpL3AycGRtYS5jDQo+IEBAIC0xMDA5LDcg
KzEwMDksNiBAQCB2b2lkIF9fcGNpX3AycGRtYV91cGRhdGVfc3RhdGUoc3RydWN0IHBjaV9wMnBk
bWFfbWFwX3N0YXRlICpzdGF0ZSwNCj4gIHsNCj4gIAlzdGF0ZS0+cGdtYXAgPSBwYWdlX3BnbWFw
KHBhZ2UpOw0KPiAgCXN0YXRlLT5tYXAgPSBwY2lfcDJwZG1hX21hcF90eXBlKHN0YXRlLT5wZ21h
cCwgZGV2KTsNCj4gLQlzdGF0ZS0+YnVzX29mZiA9IHRvX3AycF9wZ21hcChzdGF0ZS0+cGdtYXAp
LT5idXNfb2Zmc2V0Ow0KPiAgfQ0KPiAgDQo+ICAvKioNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
bGludXgvcGNpLXAycGRtYS5oIGIvaW5jbHVkZS9saW51eC9wY2ktcDJwZG1hLmgNCj4gaW5kZXgg
MDc1YzIwYjE2MWQ5OC4uYjUwMmZjOGI0OWJmOSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51
eC9wY2ktcDJwZG1hLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9wY2ktcDJwZG1hLmgNCj4gQEAg
LTE0Niw3ICsxNDYsNiBAQCBlbnVtIHBjaV9wMnBkbWFfbWFwX3R5cGUgew0KPiAgc3RydWN0IHBj
aV9wMnBkbWFfbWFwX3N0YXRlIHsNCj4gIAlzdHJ1Y3QgZGV2X3BhZ2VtYXAgKnBnbWFwOw0KPiAg
CWVudW0gcGNpX3AycGRtYV9tYXBfdHlwZSBtYXA7DQo+IC0JdTY0IGJ1c19vZmY7DQo+ICB9Ow0K
PiAgDQo+ICAvKiBoZWxwZXIgZm9yIHBjaV9wMnBkbWFfc3RhdGUoKSwgZG8gbm90IHVzZSBkaXJl
Y3RseSAqLw0KPiBAQCAtMTg2LDcgKzE4NSw3IEBAIHN0YXRpYyBpbmxpbmUgZG1hX2FkZHJfdA0K
PiAgcGNpX3AycGRtYV9idXNfYWRkcl9tYXAoc3RydWN0IHBjaV9wMnBkbWFfbWFwX3N0YXRlICpz
dGF0ZSwgcGh5c19hZGRyX3QgcGFkZHIpDQo+ICB7DQo+ICAJV0FSTl9PTl9PTkNFKHN0YXRlLT5t
YXAgIT0gUENJX1AyUERNQV9NQVBfQlVTX0FERFIpOw0KPiAtCXJldHVybiBwYWRkciArIHN0YXRl
LT5idXNfb2ZmOw0KPiArCXJldHVybiBwYWRkciArIHRvX3AycF9wZ21hcChzdGF0ZS0+cGdtYXAp
LT5idXNfb2Zmc2V0ZjsNCj4gIH0NCj4gIA0KPiAgI2VuZGlmIC8qIF9MSU5VWF9QQ0lfUDJQX0gg
Ki8NCg0KTG9va3MgbGlrZSB5b3UncmUgcmVseWluZyBvbiB0aGlzIGJvZ3VzIGNvZGUgZ2V0dGlu
ZyByZXNvbHZlZCBpbiB0aGUNCm5leHQgcGF0Y2guLi4NCg0KSW4gZmlsZSBpbmNsdWRlZCBmcm9t
IGtlcm5lbC9kbWEvZGlyZWN0LmM6MTY6DQouL2luY2x1ZGUvbGludXgvcGNpLXAycGRtYS5oOiBJ
biBmdW5jdGlvbiDigJhwY2lfcDJwZG1hX2J1c19hZGRyX21hcOKAmToNCi4vaW5jbHVkZS9saW51
eC9wY2ktcDJwZG1hLmg6MTg4OjI0OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVu
Y3Rpb24g4oCYdG9fcDJwX3BnbWFw4oCZIFstV2ltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9u
XQ0KICAxODggfCAgICAgICAgIHJldHVybiBwYWRkciArIHRvX3AycF9wZ21hcChzdGF0ZS0+cGdt
YXApLT5idXNfb2Zmc2V0ZjsNCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+
fn5+fn4NCi4vaW5jbHVkZS9saW51eC9wY2ktcDJwZG1hLmg6MTg4OjUwOiBlcnJvcjogaW52YWxp
ZCB0eXBlIGFyZ3VtZW50IG9mIOKAmC0+4oCZIChoYXZlIOKAmGludOKAmSkNCiAgMTg4IHwgICAg
ICAgICByZXR1cm4gcGFkZHIgKyB0b19wMnBfcGdtYXAoc3RhdGUtPnBnbWFwKS0+YnVzX29mZnNl
dGY7DQogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBefg0KLi9pbmNsdWRlL2xpbnV4L3BjaS1wMnBkbWEuaDoxODk6MTogZXJyb3I6IGNvbnRy
b2wgcmVhY2hlcyBlbmQgb2Ygbm9uLXZvaWQgZnVuY3Rpb24gWy1XZXJyb3I9cmV0dXJuLXR5cGVd
DQogIDE4OSB8IH0NCiAgICAgIHwgXg0KDQp0b19wMnBfcGdtYXAoKSBpcyBhIHN0YXRpYyBmdW5j
dGlvbiBhbmQgc3RydWN0IHBjaV9wMnBkbWFfcGFnZW1hcA0KZG9lc24ndCBoYXZlIGEgYnVzX29m
ZnNldGYgbWVtYmVyLiAgVGhhbmtzLA0KDQpBbGV4DQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
