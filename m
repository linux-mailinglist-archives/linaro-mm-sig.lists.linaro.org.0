Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 51276D3B05F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 17:20:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66BEC3F79D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 16:20:35 +0000 (UTC)
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
	by lists.linaro.org (Postfix) with ESMTPS id 2A1453F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 16:20:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b="dq//s3JM";
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.193 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f193.google.com with SMTP id af79cd13be357-8c6a50c17fdso349575485a.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 08:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768839629; x=1769444429; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8e3LOQmDLtNbqPr2ZRZYrAEb0+eSE57gTBol5BlL7sE=;
        b=dq//s3JM56MEgBzJGb7X+uQm/868nXvVjuim4pWS0C5zkNhCQT/wuCytl0+OM3JKEH
         xVv4uip+o6sZCCPhPS3SJbLvDDOBIYjZ4O5ncw4DoSCdzXuMUMecv8RUrLyneItCD1Wa
         8iWvlcJ3uXFVyW4hz0OKF+cCDv+oSA3cjKWTENvgg7cSNHxHFdogJo3Z16rXLnjSg2s2
         8nH4f1fJrNw5fqeiKOevn13B7BVYD+jAmGA59J/c3zE6dLyd+Sxirkh5uRa8Vq2ydPow
         +QD+fYQIr5MmoHj7F7gR1cu5JL6ownAD5k/rPoZysHdFbrZMxP1mpR5EdTMEU79tLBD9
         IP3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768839629; x=1769444429;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8e3LOQmDLtNbqPr2ZRZYrAEb0+eSE57gTBol5BlL7sE=;
        b=BcfO2xzmxNlZcbM7EFCk6o4lP8Uqn24ZAa/MASeHxO8dcgTmRpk/eLeoGRpPllC4IY
         AS8m1UT7IJ7AO2DaQTCEispPdko9WbZp4WZC6icIF2N/xcTAtYsMWh2+CaNcQleDTB9S
         K8m5OeeqOwgNnKxygRvl5frf/hud17YHRs795RugbxFr21pE719Ck/6NLWqQelDwfhw6
         hrCmjgyEMnzFrTcUgRxPbn6N7lrqu/LIXddT8/Ooh9+zZ6eYqvdHcILwHrYS2Pak/Puf
         Y7jbppqtTruVat9xIzBZa0F3aVX2W10wNneFoQFacrO7vfDttg2iyk/vYLNrDfzzhkvR
         u5Uw==
X-Forwarded-Encrypted: i=1; AJvYcCUrLA2UpmfWGOqCPX5D4NDJ0fiAYYH+gNSZM7cx9fR+UGYsVdAwiB2BEjrcJ8WYVZoe6pCpG+mbXXZumZYd@lists.linaro.org
X-Gm-Message-State: AOJu0Yw1D5UcOUK5s9CeX1TN94VQJBAUo/I2E3nERoDPQdSPAtMtYRxu
	tBNqrdpNa3QR/AYePrWxAKJUVI+kbk6mf0WxDPGnHsJZEIAMT0QtrM9sIW3SdU6Yufk=
X-Gm-Gg: AY/fxX6gvo8XtCN7w6xMqVEpmifpDY7TcOkbyKNj8lPTFInh8BSwwJJU5cgMg4iar2m
	bPMkzRu550RywY48xcrsYUsbi2Jr9OVFRxKtPX+5VpdonGETst09Gns3sM3QAoqbMJbcJS6uThm
	esh5UwU+b5EVwJA3N7rXvWtqd2Y0X/lwyvxJKf7IxrwFyq57phuYprBHSo8cjoRTpqF0qRonGMh
	3UVTUlZLUYHe4RA3bJxdPlKvsAkbv1D9jUCUrryLgjouKIclne2h0Iiel0muIGJ+gWHgk5eEdO2
	Fgw98apudIDLjYfY27tYS+TvGj7GvUPQmZs4XIb81PWZBBj6qRgsDlIPGrM39yqlAWu7FqGXXif
	W8sj0WKVAcX7l7vZjqrpn3In1uTR13szUJ0umomDsHcC4+inVx8pukkI70EZzQk4nbmYf9jVybo
	0PkxXBqvKX4KfSovuOpGLnhHBVMDFVxvsUtq7AxskgBCWtZU6tYMl2I9VyYNZ4O8diRpYCpqcaw
	oh3vg==
X-Received: by 2002:a05:620a:7102:b0:8b2:7679:4d2d with SMTP id af79cd13be357-8c6a6948169mr1559881085a.63.1768839628533;
        Mon, 19 Jan 2026 08:20:28 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6af506829sm597447585a.37.2026.01.19.08.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:20:27 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vhrzP-00000005HvQ-0mnE;
	Mon, 19 Jan 2026 12:20:27 -0400
Date: Mon, 19 Jan 2026 12:20:27 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20260119162027.GD961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
X-Rspamd-Queue-Id: 2A1453F6FF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.193:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ziepe.ca];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[142.162.112.119:received,209.85.222.193:from];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ENMWHZKS25THOFO7XPBIWONZJF43OI2Y
X-Message-ID-Hash: ENMWHZKS25THOFO7XPBIWONZJF43OI2Y
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.ke
 rnel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENMWHZKS25THOFO7XPBIWONZJF43OI2Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDM6MTY6MjVQTSArMDEwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQo+ID4gY29yZQ0KPiA+IOKAnHJldm9rZWTigJ0gc3RhdGUgb24gdGhlIGRtYS1i
dWYgb2JqZWN0IGFuZCBhIGNvcnJlc3BvbmRpbmcgZXhwb3J0ZXItDQo+ID4gdHJpZ2dlcmVkDQo+
ID4gcmV2b2tlIG9wZXJhdGlvbi4gT25jZSBhIGRtYS1idWYgaXMgcmV2b2tlZCwgbmV3IGFjY2Vz
cyBwYXRocyBhcmUNCj4gPiBibG9ja2VkIHNvDQo+ID4gdGhhdCBhdHRlbXB0cyB0byBETUEtbWFw
LCB2bWFwLCBvciBtbWFwIHRoZSBidWZmZXIgZmFpbCBpbiBhDQo+ID4gY29uc2lzdGVudCB3YXku
DQo+IA0KPiBUaGlzIHNvdW5kcyBsaWtlIGl0IGRvZXMgbm90IG1hdGNoIGhvdyBtYW55IEdQVS1k
cml2ZXJzIHVzZSB0aGUNCj4gbW92ZV9ub3RpZnkoKSBjYWxsYmFjay4NCj4gDQo+IG1vdmVfbm90
aWZ5KCkgd291bGQgdHlwaWNhbGx5IGludmFsaWRhdGUgYW55IGRldmljZSBtYXBzIGFuZCBhbnkN
Cj4gYXN5bmNocm9ub3VzIHBhcnQgb2YgdGhhdCBpbnZhbGlkYXRpb24gd291bGQgYmUgY29tcGxl
dGUgd2hlbiB0aGUgZG1hLQ0KPiBidWYncyByZXNlcnZhdGlvbiBvYmplY3QgYmVjb21lcyBpZGxl
IFdSVCBETUFfUkVTVl9VU0FHRV9CT09LS0VFUA0KPiBmZW5jZXMuDQo+IA0KPiBIb3dldmVyLCB0
aGUgaW1wb3J0ZXIgY291bGQsIGFmdGVyIG9idGFpbmluZyB0aGUgcmVzdiBsb2NrLCBvYnRhaW4g
YQ0KPiBuZXcgbWFwIHVzaW5nIGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoKSwgYW5kIEknZCBhc3N1
bWUgdGhlIENQVSBtYXBzDQo+IHdvcmsgaW4gdGhlIHNhbWUgd2F5LCBJLkUuIG1vdmVfbm90aWZ5
KCkgZG9lcyBub3QgKnBlcm1hbmVudGx5KiByZXZva2UNCj4gaW1wb3J0ZXIgYWNjZXNzLg0KDQpJ
IHRoaW5rIHRoaXMgd2FzIGV4cGxhaW5lZCBhIGJpdCBpbiB0aGlzIHRocmVhZCwgYnV0IEkgd2Fu
dGVkIHRvDQpyZXBlYXQgdGhlIGV4cGxhbmF0aW9uIHRvIGJlIHJlYWxseSBjbGVhci4uDQoNCklm
IHRoZSBhdHRhY2htZW50IGlzIG5vdCBwaW5uZWQgdGhhbiBjYWxsaW5nIG1vdmVfbm90aWZ5KCkg
aXMgYXMgeW91DQpzYXkuIFRoZSBpbXBvcnRlciBzaG91bGQgZXhwZWN0IG11bHRpcGxlIG1vdmVf
bm90aWZ5KCkgY2FsbHMgYW5kDQpoYW5kbGUgYWxsIG9mIHRoZW0uIFRoZSBleHBvcnRlciBjYW4g
bW92ZSB0aGUgbG9jYXRpb24gYXJvdW5kIGFuZCBtYWtlDQppdCByZXZva2VkL3VucmV2b2tlZCBh
dCB3aWxsLiBJZiBpdCBpcyByZXZva2VkIHRoZW4NCmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoKSBm
YWlscywgdGhlIGltcG9ydGVyIGNvdWxkIGNhY2hlIHRoaXMgYW5kIGZhaWwNCkRNQXMgdW50aWwg
dGhlIG5leHQgbW92ZV9ub3RpZnkoKS4NCg0KSWYgdGhlIGF0dGFjaG1lbnQgaXMgKnBpbm5lZCog
dGhlbiB3ZSBwcm9wb3NlIHRvIGFsbG93IHRoZSBpbXBvcnRlciB0bw0KcmV2b2tlIG9ubHkgYW5k
IG5vdCByZXF1aXJlIHJlc3RvcmF0aW9uLiBJT1cgYSBsYXRlciBtb3ZlX25vdGlmeSgpDQp0aGF0
IHNpZ25hbHMgYSBwcmV2aW91c2x5IGZhaWxpbmcgZG1hX2J1Zl9tYXBfYXR0YWNobWVudCgpIGlz
IG5vDQpsb25nZXIgZmFpbGluZyBjYW4gYmUgaWdtb3JlZCBieSBhIHBpbm5lZCBpbXBvcnRlci4N
Cg0KVGhpcyBhdCBsZWFzdCBtYXRjaGVzIHdoYXQgaW9tbXVmZCBpcyBhYmxlIHRvIGRvIHJpZ2h0
IG5vdy4NCg0KSU9XLCBjYWxsaW5nIG1vdmVfbm90aWZ5KCkgb24gYSBwaW5uZWQgRE1BQlVGIGlz
IGEgc3BlY2lhbCBvcGVyYXRpb25nDQp3ZSBhcmUgY2FsbGluZyAicmV2b2tlIiBhbmQgbWVhbnMg
dGhhdCB0aGUgZXhwb3J0ZXIgYWNjZXB0cyB0aGF0IHRoZQ0KbWFwcGluZyBpcyBwb3RlbnRpYWxs
eSBnb25lIGZyb20gcGlubmVkIGltcG9ydGVycyBmb3JldmVyLiBpZSBkb24ndA0KdXNlIGl0IGxp
Z2h0bHkuDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
