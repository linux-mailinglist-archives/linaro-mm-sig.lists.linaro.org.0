Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFFED3B1DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 17:44:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0F893F6FF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 16:44:28 +0000 (UTC)
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
	by lists.linaro.org (Postfix) with ESMTPS id EF2593F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 16:44:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=XzwRz5rA;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.193 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f193.google.com with SMTP id d75a77b69052e-50150bc7731so69638951cf.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 08:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768841062; x=1769445862; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7mLdSjko9gcpWp2LFuEj2HWiy0Q3Aa6qTfE9JkGPgsY=;
        b=XzwRz5rAGq0c8tT1339KSVAcXz9J/+QDdFYVQZobfSjsZZP6j2g//63ufnXvj1LdNb
         hmbojoujZfSd+4AG/1OBWRdKk63u91angCHDZkAmsGdfLwFx4JCniC8r9V6V2DWuekPk
         E7wXVunLZwRDTYJofe4OFGE9htX0soskrjeHs+Dv6eG3b1cXtno4OUqbQVuRMocL7Qx6
         wIBgoYj/8v+4nG2ktqURu88DtdqYvWJm32i0NDgyj31kIM2F8qNBopUGghZiPhWGyMKr
         AmjqbuFXozpCU6L0Hrsl30wAY+rU0tDiQVPBnawfmwXxFMsI2l0h8mbz42kqNBKFgUy/
         BgXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768841062; x=1769445862;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7mLdSjko9gcpWp2LFuEj2HWiy0Q3Aa6qTfE9JkGPgsY=;
        b=dBeSiytcVv+kKRSe5rjSb58sPQYr1V5eNrhvw9+vxwctLOOIJW+AT1nIl41pESchJk
         I+U0UI/BtHAXzonx+iJNgxmKAs4lROVvDpPeFGrn1sXdK4leNn8z5uOith0Dmrzyo5ti
         IZcy7MUbBVqv2U0r65s3wVPgovtgxIRZVrDIDYckR4Bx7tnBd8JDhBbhtLWFjJD/4Rwm
         DMhIK+aUto1yU7FdLIMMKDm7nm3fQsWArjUUpTLyeUrMW5lIp+WXPj0pzwwDoTyQSOk1
         rM4i2V68oWmC8JS0QWo3oLLtaAp8hEj4wS53+ojVSpo4bDZZsZMpqg8tv3C5agrn/fk8
         uUxw==
X-Forwarded-Encrypted: i=1; AJvYcCXMnNqzxPeZBmEjec7BgYUN9mhSMEdlDq0Qbx41iTk3bmgZ6OfWa/atAPw8XCCfn3NF+bgUwJOhuA0lRuTw@lists.linaro.org
X-Gm-Message-State: AOJu0YwotnoOjSdVqBrR1ROl4xPkLRs2CzkwvfdNTDvMcJyoSYjHHNYw
	8jL0MIZF4qJ+DeVaBqTGfqIo5/U3ILLAo32RyD0nhyDRlBMiJw7vW7gnf5FJxNIhXOI=
X-Gm-Gg: AY/fxX7mqAdMFI+HV0nRUvrkJE7iZE4+8Z4NPjqWMcRDetpH9Uri+RcXFWkUfol9GgW
	SysKqWUVpgNcuMYC9xgDCyrXQAt/QSqKrwTt2JQr02ICGoVgDVFqRRRY9q4xSq3H0vquORuWawI
	LFsD5xsBVT2bq0C+RQdWvenYofyfOF/kEfk7S7zr6nbMG/PGiMi3ttx5LzO6IFt3nynl6ENHvo+
	+hzrgaLtXE4HtXyqydWiplviNPaLugQKRZtkHOdprJBX4LC1qVn7aaesUNciTL77PG+kqjh/iin
	sgesl7AU6tN1NfGGr04SIj37RoTxX9J5b1bBwQ9T85uploXXFsa6WTFNArH8QwwYEZSb6k8wIsE
	EuVQ7KlYxRzU6nXWyRQwBcRjvoxdYDdrz8Ot73AXuQzy49qPxoeWvW6HjWMwWuEQg4y8r0TYtFJ
	9G3CNKKE3zCJWPC/3BfTDXFmd4+NsU0XRM4fcLdQJCLYm/dTd+QjKDWNs6vkPvhN58ovo=
X-Received: by 2002:ac8:7d16:0:b0:4ee:1b36:b5c2 with SMTP id d75a77b69052e-502a1f87eb4mr182498161cf.68.1768841062394;
        Mon, 19 Jan 2026 08:44:22 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1ed3155sm72779401cf.19.2026.01.19.08.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:44:21 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vhsMX-00000005IKH-0ezs;
	Mon, 19 Jan 2026 12:44:21 -0400
Date: Mon, 19 Jan 2026 12:44:21 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260119164421.GF961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
X-Rspamd-Queue-Id: EF2593F6FF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.193:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[ziepe.ca:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.160.193:from,142.162.112.119:received];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4WOJXVDCCNS5RGKXYLTPTJ5J2SZDCMJ7
X-Message-ID-Hash: 4WOJXVDCCNS5RGKXYLTPTJ5J2SZDCMJ7
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.
 freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4WOJXVDCCNS5RGKXYLTPTJ5J2SZDCMJ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDI6MDg6NDZQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiAN
Cj4gRG9jdW1lbnQgYSBETUEtYnVmIHJldm9rZSBtZWNoYW5pc20gdGhhdCBhbGxvd3MgYW4gZXhw
b3J0ZXIgdG8gZXhwbGljaXRseQ0KPiBpbnZhbGlkYXRlICgia2lsbCIpIGEgc2hhcmVkIGJ1ZmZl
ciBhZnRlciBpdCBoYXMgYmVlbiBoYW5kZWQgb3V0IHRvDQo+IGltcG9ydGVycy4gT25jZSByZXZv
a2VkLCBhbGwgZnVydGhlciBDUFUgYW5kIGRldmljZSBhY2Nlc3MgaXMgYmxvY2tlZCwgYW5kDQo+
IGltcG9ydGVycyBjb25zaXN0ZW50bHkgb2JzZXJ2ZSBmYWlsdXJlLg0KPiANCj4gVGhpcyByZXF1
aXJlcyBib3RoIGltcG9ydGVycyBhbmQgZXhwb3J0ZXJzIHRvIGhvbm9yIHRoZSByZXZva2UgY29u
dHJhY3QuDQo+IA0KPiBGb3IgaW1wb3J0ZXJzLCB0aGlzIG1lYW5zIGltcGxlbWVudGluZyAuaW52
YWxpZGF0ZV9tYXBwaW5ncygpIGFuZCBjYWxsaW5nDQo+IGRtYV9idWZfcGluKCkgYWZ0ZXIgdGhl
IERNQeKAkWJ1ZiBpcyBhdHRhY2hlZCB0byB2ZXJpZnkgdGhlIGV4cG9ydGVy4oCZcyBzdXBwb3J0
DQo+IGZvciByZXZvY2F0aW9uLg0KPiANCj4gRm9yIGV4cG9ydGVycywgdGhpcyBtZWFucyBpbXBs
ZW1lbnRpbmcgdGhlIC5waW4oKSBjYWxsYmFjaywgd2hpY2ggY2hlY2tzDQo+IHRoZSBETUHigJFi
dWYgYXR0YWNobWVudCBmb3IgYSB2YWxpZCByZXZva2UgaW1wbGVtZW50YXRpb24uDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiAtLS0N
Cj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIHwgMTkgKysrKysrKysrKysrKysrKysrKw0KPiAg
MSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+IGluZGV4IDFi
Mzk3NjM1Yzc5My4uZTBiYzBiNzExOWY1IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiBAQCAtNTc5LDYgKzU3
OSwyNSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2J1Zl9pc19keW5hbWljKHN0cnVjdCBkbWFf
YnVmICpkbWFidWYpDQo+ICAJcmV0dXJuICEhZG1hYnVmLT5vcHMtPnBpbjsNCj4gIH0NCj4gIA0K
PiArLyoqDQo+ICsgKiBkbWFfYnVmX2F0dGFjaG1lbnRfaXNfcmV2b2tlIC0gY2hlY2sgaWYgYSBE
TUEtYnVmIGltcG9ydGVyIGltcGxlbWVudHMNCj4gKyAqIHJldm9rZSBzZW1hbnRpY3MuDQo+ICsg
KiBAYXR0YWNoOiB0aGUgRE1BLWJ1ZiBhdHRhY2htZW50IHRvIGNoZWNrDQo+ICsgKg0KPiArICog
UmV0dXJucyB0cnVlIGlmIERNQS1idWYgaW1wb3J0ZXIgaG9ub3JzIHJldm9rZSBzZW1hbnRpY3Ms
IHdoaWNoIGlzDQo+ICsgKiBuZWdvdGlhdGVkIHdpdGggdGhlIGV4cG9ydGVyLCBieSBtYWtpbmcg
c3VyZSB0aGF0IGltcG9ydGVyIGltcGxlbWVudHMNCj4gKyAqIC5pbnZhbGlkYXRlX21hcHBpbmdz
KCkgY2FsbGJhY2sgYW5kIGNhbGxzIHRvIGRtYV9idWZfcGluKCkgYWZ0ZXINCj4gKyAqIERNQS1i
dWYgYXR0YWNoLg0KPiArICovDQoNCkkgdGhpbmsgdGhpcyBjbGFyaWZpY2F0aW9uIHNob3VsZCBh
bHNvIGhhdmUgY29tbWVudCB0bw0KZG1hX2J1Zl9tb3ZlX25vdGlmeSgpLiBNYXliZSBsaWtlIHRo
aXM6DQoNCkBAIC0xMzI0LDcgKzEzMjQsMTggQEAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1
Zl9zZ3RfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZCwgIkRNQV9CVUYiKTsNCiAgKiBAZG1hYnVm
OiAgICBbaW5dICAgIGJ1ZmZlciB3aGljaCBpcyBtb3ZpbmcNCiAgKg0KICAqIEluZm9ybXMgYWxs
IGF0dGFjaG1lbnRzIHRoYXQgdGhleSBuZWVkIHRvIGRlc3Ryb3kgYW5kIHJlY3JlYXRlIGFsbCB0
aGVpcg0KLSAqIG1hcHBpbmdzLg0KKyAqIG1hcHBpbmdzLiBJZiB0aGUgYXR0YWNobWVudCBpcyBk
eW5hbWljIHRoZW4gdGhlIGR5bmFtaWMgaW1wb3J0ZXIgaXMgZXhwZWN0ZWQNCisgKiB0byBpbnZh
bGlkYXRlIGFueSBjYWNoZXMgaXQgaGFzIG9mIHRoZSBtYXBwaW5nIHJlc3VsdCBhbmQgcGVyZm9y
bSBhIG5ldw0KKyAqIG1hcHBpbmcgcmVxdWVzdCBiZWZvcmUgYWxsb3dpbmcgSFcgdG8gZG8gYW55
IGZ1cnRoZXIgRE1BLg0KKyAqDQorICogSWYgdGhlIGF0dGFjaG1lbnQgaXMgcGlubmVkIHRoZW4g
dGhpcyBpbmZvcm1zIHRoZSBwaW5uZWQgaW1wb3J0ZXIgdGhhdA0KKyAqIHRoZSB1bmRlcmx5aW5n
IG1hcHBpbmcgaXMgbm8gbG9uZ2VyIGF2YWlsYWJsZS4gUGlubmVkIGltcG9ydGVycyBtYXkgdGFr
ZQ0KKyAqIHRoaXMgaXMgYXMgYSBwZXJtYW5lbnQgcmV2b2NhdGlvbiBzbyBleHBvcnRlcnMgc2hv
dWxkIG5vdCB0cmlnZ2VyIGl0DQorICogbGlnaHRseS4NCisgKg0KKyAqIEZvciBsZWdhY3kgcGlu
bmVkIGltcG9ydGVycyB0aGF0IGNhbm5vdCBzdXBwb3J0IGludmFsaWRhdGlvbiB0aGlzIGlzIGEg
Tk9QLg0KKyAqIERyaXZlcnMgY2FuIGNhbGwgZG1hX2J1Zl9hdHRhY2htZW50X2lzX3Jldm9rZSgp
IHRvIGRldGVybWluZSBpZiB0aGUNCisgKiBpbXBvcnRlciBzdXBwb3J0cyB0aGlzLg0KICAqLw0K
DQpBbHNvIGl0IHdvdWxkIGJlIG5pY2UgdG8gZG9jdW1lbnQgd2hhdCBDaHJpc3RpYW4gcG9pbnRl
ZCBvdXQgcmVnYXJkaW5nDQpmZW5jZXMgYWZ0ZXIgbW92ZV9ub3RpZnkuDQoNCj4gK3N0YXRpYyBp
bmxpbmUgYm9vbA0KPiArZG1hX2J1Zl9hdHRhY2htZW50X2lzX3Jldm9rZShzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2gpDQo+ICt7DQo+ICsJcmV0dXJuIElTX0VOQUJMRUQoQ09ORklH
X0RNQUJVRl9NT1ZFX05PVElGWSkgJiYNCj4gKwkgICAgICAgZG1hX2J1Zl9pc19keW5hbWljKGF0
dGFjaC0+ZG1hYnVmKSAmJg0KPiArCSAgICAgICAoYXR0YWNoLT5pbXBvcnRlcl9vcHMgJiYNCj4g
KwkJYXR0YWNoLT5pbXBvcnRlcl9vcHMtPmludmFsaWRhdGVfbWFwcGluZ3MpOw0KPiArfQ0KDQpB
bmQgSSBkb24ndCB0aGluayB3ZSBzaG91bGQgdXNlIGEgTlVMTCBpbnZhbGlkYXRlX21hcHBpbmdz
IGZ1bmN0aW9uDQpwb2ludGVyIHRvIHNpZ25hbCB0aGlzLg0KDQpJdCBzb3VuZHMgbGlrZSB0aGUg
ZGlyZWN0aW9uIGlzIHRvIHJlcXVpcmUgaW1wb3J0ZXJzIHRvIHN1cHBvcnQNCm1vdmVfbm90aWZ5
LCBzbyB3ZSBzaG91bGQgbm90IG1ha2UgaXQgZWFzeSB0byBqdXN0IGRyb3AgYSBOVUxMIGluIHRo
ZQ0Kb3BzIHN0cnVjdCB0byBnZXQgb3V0IG9mIHRoZSBkZXNpcmVkIGNvbmZpZ3VyYXRpb24uDQoN
Ckkgc3VnZ2VzdCBkZWZpbmluZyBhIGZ1bmN0aW9uDQoiZG1hX2J1Zl91bnN1cHBvcnRlZF9pbnZh
bGlkYXRlX21hcHBpbmdzIiBhbmQgdXNlDQpFWFBPUlRfU1lNQk9MX0ZPUl9NT0RVTEVTIHNvIG9u
bHkgUkRNQSBjYW4gdXNlIGl0LiBUaGVuIGNoZWNrIGZvciB0aGF0DQphbG9uZyB3aXRoIE5VTEwg
aW1wb3J0ZXJfb3BzIHRvIGNvdmVyIHRoZSB0d28gY2FzZXMgd2hlcmUgaXQgaXMgbm90DQphbGxv
d2VkLg0KDQpUaGUgb25seSByZWFzb24gUkRNQSBoYXMgdG8gdXNlIGRtYV9idWZfZHluYW1pY19h
dHRhY2goKSBpcyB0byBzZXQgdGhlDQphbGxvd19wMnA9dHJ1ZSAuLg0KDQpKYXNvbg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
