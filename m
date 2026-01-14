Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F29E7D1EB13
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 13:18:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 10E6B401AE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 12:18:28 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 5E9B83E90F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 12:18:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VtHY2A2P;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B27CA43C65;
	Wed, 14 Jan 2026 12:18:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3159C16AAE;
	Wed, 14 Jan 2026 12:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768393102;
	bh=kphkpO43U3xs8Hu/vDSQXNFGwyRGtpggdrrNZNCgHek=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=VtHY2A2PoHXvJAI3LMSsL+HyLEeHCtSGgKPp6a+dXtGF+CLsybGNKbmvKBUBWia3N
	 WzDOaC8LZwddJrTiwDuAvztJ2Cj6lbzW1QhIsPa2Yj7gshUYGiE+UnyC+TOrtdMm/g
	 w1z2AAwKhhUC2jnihuALXEURtgZdp20+biBdG4c3/EUMr7V2orcFxiAsimeIxtOnKS
	 fLsmHd7cMnVsC8ycZcOC8GfU+l75TBXsIJOO7clPXSbuJAuxBDrzz2EjRR1ts6eoAt
	 WlTQrxGaNTudz8vRy+m7KhkdV2QM6ewUI891wPgHouxLWeGmg1Hv3j8OlX/YjyDn48
	 v0y4wibp7fC8w==
Date: Wed, 14 Jan 2026 14:18:19 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
	kvm@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Shameer Kolothum <skolothumtho@nvidia.com>,
	Ankit Agrawal <ankita@nvidia.com>,
	Matthew Wilcox <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>
Message-ID: <20260114121819.GB10680@unreal>
References: <20260107-convert-to-pvec-v1-1-6e3ab8079708@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-convert-to-pvec-v1-1-6e3ab8079708@nvidia.com>
X-Rspamd-Queue-Id: 5E9B83E90F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KUHFTMYTU746C75UNR7WDACHFLV7MXN3
X-Message-ID-Hash: KUHFTMYTU746C75UNR7WDACHFLV7MXN3
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig]  Re: types: reuse common =?utf-8?q?phys=5Fvec_type_instead_of_DMABUF_open=E2=80=91coded?= variant
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KUHFTMYTU746C75UNR7WDACHFLV7MXN3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMDcsIDIwMjYgYXQgMTE6MTQ6MTRBTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiAN
Cj4gQWZ0ZXIgY29tbWl0IGZjZjQ2M2I5MmEwOCAoInR5cGVzOiBtb3ZlIHBoeXNfdmVjIGRlZmlu
aXRpb24gdG8gY29tbW9uIGhlYWRlciIpLA0KPiB3ZSBjYW4gdXNlIHRoZSBzaGFyZWQgcGh5c192
ZWMgdHlwZSBpbnN0ZWFkIG9mIHRoZSBETUFCVUbigJFzcGVjaWZpYw0KPiBkbWFfYnVmX3BoeXNf
dmVjLCB3aGljaCBkdXBsaWNhdGVkIHRoZSBzYW1lIHN0cnVjdHVyZSBhbmQgc2VtYW50aWNzLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4N
Cj4gLS0tDQo+IEFsZXgsDQo+IA0KPiBBY2NvcmRpbmcgdG8gZGlmZnN0YXQsIFZGSU8gaXMgdGhl
IHN1YnN5c3RlbSB3aXRoIHRoZSBsYXJnZXN0IHNldCBvZiBjaGFuZ2VzLA0KPiBzbyBpdCB3b3Vs
ZCBiZSBncmVhdCBpZiB5b3UgY291bGQgdGFrZSBpdCB0aHJvdWdoIHlvdXIgdHJlZS4NCj4gDQo+
IFRoZSBzZXJpZXMgaXMgYmFzZWQgb24gdGhlIGZvci03LjAvYmxrLXB2ZWMgc2hhcmVkIGJyYW5j
aCBmcm9tIEplbnM6DQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L2F4Ym9lL2xpbnV4LmdpdC9sb2cvP2g9Zm9yLTcuMC9ibGstcHZlYw0KPiANCj4gVGhh
bmtzDQo+IC0tLQ0KDQpBbGV4LA0KDQpDb3VsZCB5b3UgcGxlYXNlIG1vdmUgdGhpcyBwYXRjaCBm
b3J3YXJkPyBXZSBoYXZlIHRoZSBSRE1BIHNlcmllcyBbMV0gdGhhdA0KZGVwZW5kcyBvbiB0aGlz
IHJlbmFtZSwgYW5kIEkgd291bGQgbGlrZSB0byBiYXNlIGl0IG9uIHRoZSBzaGFyZWQgYnJhbmNo
Lg0KDQpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMTA4LWRtYWJ1Zi1leHBv
cnQtdjEtMC02ZDQ3ZDQ2NTgwZDNAbnZpZGlhLmNvbS8NCg0KVGhhbmtzDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
