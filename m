Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAo/HvZ5g2nyngMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 17:55:18 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C57EA997
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 17:55:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBB3D3F7C7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Feb 2026 16:55:16 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
	by lists.linaro.org (Postfix) with ESMTPS id 228CE3F7C7
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Feb 2026 16:55:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=Cd6HH6m4;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.194 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f194.google.com with SMTP id af79cd13be357-8ca3807494eso53238985a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Feb 2026 08:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770224108; x=1770828908; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+k5zz356tCtx+TsrSTgNS2LOgl52lZtCniOLQPd/1s0=;
        b=Cd6HH6m4iP5zudnXhqjAZ+Y7NO2CSLRGuUnZm2oJ8lURjyg9vjntvhgbAZfLgzDC6o
         KYU3DrBPB0BnfPrVtItvSQSK+i/11f2nnW0IWK3//x4i3HhywlzoNWH2EpIAX69Km6ym
         E1EpiNFvrlVcdDupJPoukhaPBidrway21QqriqjFA6SN9ztOlL+NwBSVA/MOVKuWv1td
         Op1Tqaz5M6WV9+7SIoJmRPDKE8yw1FOceYH7KMw/mAItyzGw01DRgBVIA+ddB1YkfYAf
         SL4xf5mvgkVkeNGdxvV5j3v8V1yNG+k7W4OSVGxPd24EaRS2MYL16qE9u2s7/adkd7ko
         VzFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770224108; x=1770828908;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+k5zz356tCtx+TsrSTgNS2LOgl52lZtCniOLQPd/1s0=;
        b=fxNMH/nlVKXW+NmwLYUDKGt79aWY5w1cy1tHAIptRSW7Qk7QVpBSiICt0ujBk+Ikat
         K+JFKlARKpn61vgAh4Bb+dTB8vmLOEQmUWtNrJE8ib49Fh0xeeQHpQDHW8bHNcGfO1r2
         3oKA/ojeLfZis+4yFqRvzI8J+TOioobHHKtPLWap99/zaCdeo6wACGLOCrOZtqyvXup9
         reWnQYOVWoTpjCxtAtx0FjlVsexrGspRZAdNwk4se6cUXqXZgO30fdFQ9M/3C9Td8YeY
         vypV9vw/6zXiayDPGUtqHr9BxHTVDLqSt5DhHpC4d9XrnLrxhp3+u1XfyKJIFCAHx/kc
         qOOg==
X-Forwarded-Encrypted: i=1; AJvYcCU2boL4kmNWYvHnS5QdpXvUvfpJbriJO9lzJN+UrxCy3Jsi0xDt3xxALFUklikEW05TkBJOE7K0A2N9fAOk@lists.linaro.org
X-Gm-Message-State: AOJu0YwGlFOheubxECSdDswcxCzje3nAe8PWyqAbHXNgIWV0DZTgLIkf
	xXQ7RifqZ3/4FFi/wA2LGewLYiZzqB72mCClny40swrnXWUZbBz452tBL2XWkYBenfM=
X-Gm-Gg: AZuq6aKaKm1ju/YDV/ChTa+r94hom9GkYDMqHNTZyPA5c2Y0kJ3/IKc/wgwZtm+/gUI
	LFjh3rtNGw1nVmoh9KY/bAaRXeVM4EdnfIdNTTWw+p59bs7JsGgPC2WIvrwGAPUo3rZPGKDzJTO
	hPPlRU2MlHrgZNUOFVUajv4OBJZuMfZFc/+HRUw0SnO3sd+7lSgcT2ny4+vZApOZq+J1bM5eqLJ
	fhtWVoCtU8cFwu6CJaX+Nw4nFmV7BPXmE76SN3wP9TeLDTf0FPsUdQrtiGqr6zdKCj5PCUFjf5r
	D9MVgzrv9Yvbj2FuQkZxL5M/SLR+IFEpYoR4TkMyTiD8uo5uBodsrh7YcspcnFomwalfyC3MFgC
	+DhEQ1637yTLpxFWd2BwCY2JzWm6fKkQ4FC07wA77DUL5KWw6hQ9q2qZKbo4Tb6s2VBpbs/Gxdl
	Q3+1mBLDxWLnkHdt3+bgZgkhfz8Numuy+yHk1aHpiGUiE5x9zxzVeqDPcYC48jtU8Y9do=
X-Received: by 2002:a05:620a:4627:b0:8c7:177f:cc17 with SMTP id af79cd13be357-8ca2f9bbb5amr467025085a.46.1770224108469;
        Wed, 04 Feb 2026 08:55:08 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ca2fd2cfb4sm226461485a.33.2026.02.04.08.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 08:55:07 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vng9j-0000000HH15-13rk;
	Wed, 04 Feb 2026 12:55:07 -0400
Date: Wed, 4 Feb 2026 12:55:07 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260204165507.GH2328995@ziepe.ca>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
 <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: 2QIMPGVSLSMUH6BWEPW3EUJD3BPW7RD2
X-Message-ID-Hash: 2QIMPGVSLSMUH6BWEPW3EUJD3BPW7RD2
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2QIMPGVSLSMUH6BWEPW3EUJD3BPW7RD2/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,amd.com:email,intel.com:email,shazbot.org:email]
X-Rspamd-Queue-Id: 02C57EA997
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMDQsIDIwMjYgYXQgMDU6MjE6NDVQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8zMS8yNiAwNjozNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+
IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gDQo+ID4gVGls
bCBub3cgVkZJTyBoYXMgcmVqZWN0ZWQgcGlubmVkIGltcG9ydGVycywgbGFyZ2VseSB0byBhdm9p
ZCBiZWluZyB1c2VkDQo+ID4gd2l0aCB0aGUgUkRNQSBwaW5uZWQgaW1wb3J0ZXIgdGhhdCBjYW5u
b3QgaGFuZGxlIGEgbW92ZV9ub3RpZnkoKSB0byByZXZva2UNCj4gPiBhY2Nlc3MuDQo+ID4gDQo+
ID4gVXNpbmcgZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKCkgaXQgY2FuIHRlbGwgdGhlIGRpZmZl
cmVuY2UgYmV0d2VlbiBwaW5uZWQNCj4gPiBpbXBvcnRlcnMgdGhhdCBzdXBwb3J0IHRoZSBmbG93
IGRlc2NyaWJlZCBpbiBkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MoKQ0KPiA+IGFuZCB0aG9z
ZSB0aGF0IGRvbid0Lg0KPiA+IA0KPiA+IFRodXMgcGVybWl0IGNvbXBhdGlibGUgcGlubmVkIGlt
cG9ydGVycy4NCj4gPiANCj4gPiBUaGlzIGlzIG9uZSBvZiB0d28gaXRlbXMgSU9NTVVGRCByZXF1
aXJlcyB0byByZW1vdmUgaXRzIHByaXZhdGUgaW50ZXJmYWNlDQo+ID4gdG8gVkZJTydzIGRtYS1i
dWYuDQo+ID4gDQo+ID4gUmV2aWV3ZWQtYnk6IEtldmluIFRpYW4gPGtldmluLnRpYW5AaW50ZWwu
Y29tPg0KPiA+IFJldmlld2VkLWJ5OiBBbGV4IFdpbGxpYW1zb24gPGFsZXhAc2hhemJvdC5vcmc+
DQo+ID4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIHwg
MTUgKysrLS0tLS0tLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vcGNp
L3ZmaW9fcGNpX2RtYWJ1Zi5jIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0K
PiA+IGluZGV4IDc4ZDQ3ZTI2MGYzNC4uYTVmYjgwZTA2OGVlIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCj4gPiArKysgYi9kcml2ZXJzL3ZmaW8v
cGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+ID4gQEAgLTIyLDE2ICsyMiw2IEBAIHN0cnVjdCB2Zmlv
X3BjaV9kbWFfYnVmIHsNCj4gPiAgCXU4IHJldm9rZWQgOiAxOw0KPiA+ICB9Ow0KPiA+ICANCj4g
PiAtc3RhdGljIGludCB2ZmlvX3BjaV9kbWFfYnVmX3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2htZW50KQ0KPiA+IC17DQo+ID4gLQlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+ID4g
LX0NCj4gPiAtDQo+ID4gLXN0YXRpYyB2b2lkIHZmaW9fcGNpX2RtYV9idWZfdW5waW4oc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCkNCj4gPiAtew0KPiA+IC0JLyogRG8gbm90
aGluZyAqLw0KPiA+IC19DQo+ID4gLQ0KPiANCj4gVGhpcyBjaHVuayBoZXJlIGRvZXNuJ3Qgd2Fu
dCB0byBhcHBseSB0byBkcm0tbWlzYy1uZXh0LCBteSBlZHVjYXRlZA0KPiBndWVzcyBpcyB0aGF0
IHRoZSBwYXRjaCBhZGRpbmcgdGhvc2UgbGluZXMgaXMgbWlzc2luZyBpbiB0aGF0IHRyZWUuDQoN
Clllcy4gSXQgbG9va3MgbGlrZSBBbGV4IHRvb2sgaXQgdG8gaGlzIG5leHQgdHJlZToNCg0KY29t
bWl0IDYxY2VhZjIzNjExNWYyMGY0ZmRkN2NmNjBmODgzYWRhMTA2MzM0OWENCkF1dGhvcjogTGVv
biBSb21hbm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+DQpEYXRlOiAgIFdlZCBKYW4gMjEgMTc6NDU6
MDIgMjAyNiArMDIwMA0KDQogICAgdmZpbzogUHJldmVudCBmcm9tIHBpbm5lZCBETUFCVUYgaW1w
b3J0ZXJzIHRvIGF0dGFjaCB0byBWRklPIERNQUJVRg0KICAgIA0KICAgIFNvbWUgcGlubmVkIGlt
cG9ydGVycywgc3VjaCBhcyBub24tT0RQIFJETUEgb25lcywgY2Fubm90IGludmFsaWRhdGUgdGhl
aXINCiAgICBtYXBwaW5ncyBhbmQgdGhlcmVmb3JlIG11c3QgYmUgcHJldmVudGVkIGZyb20gYXR0
YWNoaW5nIHRvIHRoaXMgZXhwb3J0ZXIuDQogICAgDQogICAgRml4ZXM6IDVkNzQ3ODFlYmM4NiAo
InZmaW8vcGNpOiBBZGQgZG1hLWJ1ZiBleHBvcnQgc3VwcG9ydCBmb3IgTU1JTyByZWdpb25zIikN
CiAgICBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0K
ICAgIFJldmlld2VkLWJ5OiBQcmFuamFsIFNocml2YXN0YXZhIDxwcmFhbkBnb29nbGUuY29tPg0K
ICAgIFJldmlld2VkLWJ5OiBKYXNvbiBHdW50aG9ycGUgPGpnZ0BudmlkaWEuY29tPg0KICAgIExp
bms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjAxMjEtdmZpby1hZGQtcGluLXYxLTEt
NGUwNDkxNmIxN2YxQG52aWRpYS5jb20NCiAgICBTaWduZWQtb2ZmLWJ5OiBBbGV4IFdpbGxpYW1z
b24gPGFsZXhAc2hhemJvdC5vcmc+DQoNClRoZSB2ZXJ5IGJlc3QgdGhpbmcgd291bGQgYmUgdG8g
cHVsbA0KNjFjZWFmMjM2MTE1ZjIwZjRmZGQ3Y2Y2MGY4ODNhZGExMDYzMzQ5YSB3aGljaCBpcyBj
bGVhbmx5IGJhc2VkIG9uDQp2Ni4xOS1yYzYgPw0KDQo+IEhvdyBzaG91bGQgd2UgaGFuZGxlIHRo
YXQ/IFBhdGNoZXMgMS0zIGhhdmUgYWxyZWFkeSBiZWVuIHB1c2hlZCB0bw0KPiBkcm0tbWlzYy1u
ZXh0IGFuZCBJIHdvdWxkIHJhdGhlciBsaWtlIHRvIHB1c2ggcGF0Y2hlcyA0LTYgdGhyb3VnaA0K
PiB0aGF0IGJyYW5jaCBhcyB3ZWxsLg0KDQpPciB3ZSBnZXQgQWxleCB0byB0YWtlIGEgYnJhbmNo
IGZyb20geW91IGZvciB0aGUgZmlyc3QgMyBhbmQgcHVzaCBpdD8NCg0KSmFzb24NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
