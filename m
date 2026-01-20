Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCDAD3C400
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 10:46:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAF173FDAE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 09:46:12 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B97513F732
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 09:46:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dLp9ReyQ;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1D0BC41908;
	Tue, 20 Jan 2026 09:46:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B94BC16AAE;
	Tue, 20 Jan 2026 09:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768902365;
	bh=xwqfvmhHmuW9plUqJwJFOo0A9JPdncx7ymGaNl95+yo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dLp9ReyQRpZBQ1HsP4UfwVvklS8InFrF5hZROHOsUQf2ANERezVMKk+6yLg6Ao4g3
	 bLcG3imT0sMt+H8fCaljcj6H6q3C49oKM5UFuq9mCGfKKoc58e7IfUyEjHp9yyDWly
	 YIKTxAK65ASJJqdGUsUzRrjLdUxxrZkSb5a45Yin99EzC3KcC/KU54U44uAJoCTHCk
	 /GXbSQK/AWWMtHtI6tfkHgvO0RI0YfUByVjh5FRuPknr3l7QRpVrbBG7WUGy8+TysZ
	 sOw9jD1XrRQTSSUqXvrM/yMlG1kzWM8fP+8vKPFCkbcyIu4rYCttJvTje8CuUxTa6t
	 RL0gf/JISbozw==
Date: Tue, 20 Jan 2026 11:45:59 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20260120094559.GR13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
 <20260119164421.GF961572@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260119164421.GF961572@ziepe.ca>
X-Rspamd-Queue-Id: B97513F732
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from,100.75.92.58:received];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GU5LL5FHNEMGEEGR2MCCEENFQ64MOC3G
X-Message-ID-Hash: GU5LL5FHNEMGEEGR2MCCEENFQ64MOC3G
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@
 lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GU5LL5FHNEMGEEGR2MCCEENFQ64MOC3G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMTI6NDQ6MjFQTSAtMDQwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPiBPbiBTdW4sIEphbiAxOCwgMjAyNiBhdCAwMjowODo0NlBNICswMjAwLCBMZW9u
IFJvbWFub3Zza3kgd3JvdGU6DQo+ID4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZp
ZGlhLmNvbT4NCj4gPiANCj4gPiBEb2N1bWVudCBhIERNQS1idWYgcmV2b2tlIG1lY2hhbmlzbSB0
aGF0IGFsbG93cyBhbiBleHBvcnRlciB0byBleHBsaWNpdGx5DQo+ID4gaW52YWxpZGF0ZSAoImtp
bGwiKSBhIHNoYXJlZCBidWZmZXIgYWZ0ZXIgaXQgaGFzIGJlZW4gaGFuZGVkIG91dCB0bw0KPiA+
IGltcG9ydGVycy4gT25jZSByZXZva2VkLCBhbGwgZnVydGhlciBDUFUgYW5kIGRldmljZSBhY2Nl
c3MgaXMgYmxvY2tlZCwgYW5kDQo+ID4gaW1wb3J0ZXJzIGNvbnNpc3RlbnRseSBvYnNlcnZlIGZh
aWx1cmUuDQo+ID4gDQo+ID4gVGhpcyByZXF1aXJlcyBib3RoIGltcG9ydGVycyBhbmQgZXhwb3J0
ZXJzIHRvIGhvbm9yIHRoZSByZXZva2UgY29udHJhY3QuDQo+ID4gDQo+ID4gRm9yIGltcG9ydGVy
cywgdGhpcyBtZWFucyBpbXBsZW1lbnRpbmcgLmludmFsaWRhdGVfbWFwcGluZ3MoKSBhbmQgY2Fs
bGluZw0KPiA+IGRtYV9idWZfcGluKCkgYWZ0ZXIgdGhlIERNQeKAkWJ1ZiBpcyBhdHRhY2hlZCB0
byB2ZXJpZnkgdGhlIGV4cG9ydGVy4oCZcyBzdXBwb3J0DQo+ID4gZm9yIHJldm9jYXRpb24uDQo+
ID4gDQo+ID4gRm9yIGV4cG9ydGVycywgdGhpcyBtZWFucyBpbXBsZW1lbnRpbmcgdGhlIC5waW4o
KSBjYWxsYmFjaywgd2hpY2ggY2hlY2tzDQo+ID4gdGhlIERNQeKAkWJ1ZiBhdHRhY2htZW50IGZv
ciBhIHZhbGlkIHJldm9rZSBpbXBsZW1lbnRhdGlvbi4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5
OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiA+IC0tLQ0KPiA+ICBpbmNs
dWRlL2xpbnV4L2RtYS1idWYuaCB8IDE5ICsrKysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiA+IGluZGV4IDFi
Mzk3NjM1Yzc5My4uZTBiYzBiNzExOWY1IDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oDQo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gPiBAQCAtNTc5
LDYgKzU3OSwyNSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2J1Zl9pc19keW5hbWljKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYpDQo+ID4gIAlyZXR1cm4gISFkbWFidWYtPm9wcy0+cGluOw0KPiA+
ICB9DQo+ID4gIA0KPiA+ICsvKioNCj4gPiArICogZG1hX2J1Zl9hdHRhY2htZW50X2lzX3Jldm9r
ZSAtIGNoZWNrIGlmIGEgRE1BLWJ1ZiBpbXBvcnRlciBpbXBsZW1lbnRzDQo+ID4gKyAqIHJldm9r
ZSBzZW1hbnRpY3MuDQo+ID4gKyAqIEBhdHRhY2g6IHRoZSBETUEtYnVmIGF0dGFjaG1lbnQgdG8g
Y2hlY2sNCj4gPiArICoNCj4gPiArICogUmV0dXJucyB0cnVlIGlmIERNQS1idWYgaW1wb3J0ZXIg
aG9ub3JzIHJldm9rZSBzZW1hbnRpY3MsIHdoaWNoIGlzDQo+ID4gKyAqIG5lZ290aWF0ZWQgd2l0
aCB0aGUgZXhwb3J0ZXIsIGJ5IG1ha2luZyBzdXJlIHRoYXQgaW1wb3J0ZXIgaW1wbGVtZW50cw0K
PiA+ICsgKiAuaW52YWxpZGF0ZV9tYXBwaW5ncygpIGNhbGxiYWNrIGFuZCBjYWxscyB0byBkbWFf
YnVmX3BpbigpIGFmdGVyDQo+ID4gKyAqIERNQS1idWYgYXR0YWNoLg0KPiA+ICsgKi8NCj4gDQo+
IEkgdGhpbmsgdGhpcyBjbGFyaWZpY2F0aW9uIHNob3VsZCBhbHNvIGhhdmUgY29tbWVudCB0bw0K
PiBkbWFfYnVmX21vdmVfbm90aWZ5KCkuIE1heWJlIGxpa2UgdGhpczoNCj4gDQo+IEBAIC0xMzI0
LDcgKzEzMjQsMTggQEAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9zZ3RfdW5tYXBfYXR0
YWNobWVudF91bmxvY2tlZCwgIkRNQV9CVUYiKTsNCj4gICAqIEBkbWFidWY6ICAgIFtpbl0gICAg
YnVmZmVyIHdoaWNoIGlzIG1vdmluZw0KPiAgICoNCj4gICAqIEluZm9ybXMgYWxsIGF0dGFjaG1l
bnRzIHRoYXQgdGhleSBuZWVkIHRvIGRlc3Ryb3kgYW5kIHJlY3JlYXRlIGFsbCB0aGVpcg0KPiAt
ICogbWFwcGluZ3MuDQo+ICsgKiBtYXBwaW5ncy4gSWYgdGhlIGF0dGFjaG1lbnQgaXMgZHluYW1p
YyB0aGVuIHRoZSBkeW5hbWljIGltcG9ydGVyIGlzIGV4cGVjdGVkDQo+ICsgKiB0byBpbnZhbGlk
YXRlIGFueSBjYWNoZXMgaXQgaGFzIG9mIHRoZSBtYXBwaW5nIHJlc3VsdCBhbmQgcGVyZm9ybSBh
IG5ldw0KPiArICogbWFwcGluZyByZXF1ZXN0IGJlZm9yZSBhbGxvd2luZyBIVyB0byBkbyBhbnkg
ZnVydGhlciBETUEuDQo+ICsgKg0KPiArICogSWYgdGhlIGF0dGFjaG1lbnQgaXMgcGlubmVkIHRo
ZW4gdGhpcyBpbmZvcm1zIHRoZSBwaW5uZWQgaW1wb3J0ZXIgdGhhdA0KPiArICogdGhlIHVuZGVy
bHlpbmcgbWFwcGluZyBpcyBubyBsb25nZXIgYXZhaWxhYmxlLiBQaW5uZWQgaW1wb3J0ZXJzIG1h
eSB0YWtlDQo+ICsgKiB0aGlzIGlzIGFzIGEgcGVybWFuZW50IHJldm9jYXRpb24gc28gZXhwb3J0
ZXJzIHNob3VsZCBub3QgdHJpZ2dlciBpdA0KPiArICogbGlnaHRseS4NCj4gKyAqDQo+ICsgKiBG
b3IgbGVnYWN5IHBpbm5lZCBpbXBvcnRlcnMgdGhhdCBjYW5ub3Qgc3VwcG9ydCBpbnZhbGlkYXRp
b24gdGhpcyBpcyBhIE5PUC4NCj4gKyAqIERyaXZlcnMgY2FuIGNhbGwgZG1hX2J1Zl9hdHRhY2ht
ZW50X2lzX3Jldm9rZSgpIHRvIGRldGVybWluZSBpZiB0aGUNCj4gKyAqIGltcG9ydGVyIHN1cHBv
cnRzIHRoaXMuDQo+ICAgKi8NCj4gDQo+IEFsc28gaXQgd291bGQgYmUgbmljZSB0byBkb2N1bWVu
dCB3aGF0IENocmlzdGlhbiBwb2ludGVkIG91dCByZWdhcmRpbmcNCj4gZmVuY2VzIGFmdGVyIG1v
dmVfbm90aWZ5Lg0KDQpJIGFkZGVkIHRoaXMgY29tbWVudCB0b286DQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4
IDZkZDcwZjdiOTkyZC4uNDc4MTI3ZGM2M2U5IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTEyNTMsNiAr
MTI1MywxMCBAQCBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRf
dW5sb2NrZWQsICJETUFfQlVGIik7DQogICogRm9yIGxlZ2FjeSBwaW5uZWQgaW1wb3J0ZXJzIHRo
YXQgY2Fubm90IHN1cHBvcnQgaW52YWxpZGF0aW9uIHRoaXMgaXMgYSBOT1AuDQogICogRHJpdmVy
cyBjYW4gY2FsbCBkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUoKSB0byBkZXRlcm1pbmUgaWYgdGhl
IGltcG9ydGVyDQogICogc3VwcG9ydHMgdGhpcy4NCisgKg0KKyAqIE5PVEU6IFRoZSBpbnZhbGlk
YXRpb24gdHJpZ2dlcnMgYXN5bmNocm9ub3VzIEhXIG9wZXJhdGlvbiBhbmQgdGhlIGNhbGxlcnMN
CisgKiBuZWVkIHRvIHdhaXQgZm9yIHRoaXMgb3BlcmF0aW9uIHRvIGNvbXBsZXRlIGJ5IGNhbGxp
bmcNCisgKiB0byBkbWFfcmVzdl93YWl0X3RpbWVvdXQoKS4NCiAgKi8NCiB2b2lkIGRtYV9idWZf
bW92ZV9ub3RpZnkoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCiB7DQoNCj4gDQo+ID4gK3N0YXRp
YyBpbmxpbmUgYm9vbA0KPiA+ICtkbWFfYnVmX2F0dGFjaG1lbnRfaXNfcmV2b2tlKHN0cnVjdCBk
bWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4gPiArew0KPiA+ICsJcmV0dXJuIElTX0VOQUJM
RUQoQ09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkgJiYNCj4gPiArCSAgICAgICBkbWFfYnVmX2lz
X2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpICYmDQo+ID4gKwkgICAgICAgKGF0dGFjaC0+aW1wb3J0
ZXJfb3BzICYmDQo+ID4gKwkJYXR0YWNoLT5pbXBvcnRlcl9vcHMtPmludmFsaWRhdGVfbWFwcGlu
Z3MpOw0KPiA+ICt9DQo+IA0KPiBBbmQgSSBkb24ndCB0aGluayB3ZSBzaG91bGQgdXNlIGEgTlVM
TCBpbnZhbGlkYXRlX21hcHBpbmdzIGZ1bmN0aW9uDQo+IHBvaW50ZXIgdG8gc2lnbmFsIHRoaXMu
DQo+IA0KPiBJdCBzb3VuZHMgbGlrZSB0aGUgZGlyZWN0aW9uIGlzIHRvIHJlcXVpcmUgaW1wb3J0
ZXJzIHRvIHN1cHBvcnQNCj4gbW92ZV9ub3RpZnksIHNvIHdlIHNob3VsZCBub3QgbWFrZSBpdCBl
YXN5IHRvIGp1c3QgZHJvcCBhIE5VTEwgaW4gdGhlDQo+IG9wcyBzdHJ1Y3QgdG8gZ2V0IG91dCBv
ZiB0aGUgZGVzaXJlZCBjb25maWd1cmF0aW9uLg0KPiANCj4gSSBzdWdnZXN0IGRlZmluaW5nIGEg
ZnVuY3Rpb24NCj4gImRtYV9idWZfdW5zdXBwb3J0ZWRfaW52YWxpZGF0ZV9tYXBwaW5ncyIgYW5k
IHVzZQ0KPiBFWFBPUlRfU1lNQk9MX0ZPUl9NT0RVTEVTIHNvIG9ubHkgUkRNQSBjYW4gdXNlIGl0
LiBUaGVuIGNoZWNrIGZvciB0aGF0DQo+IGFsb25nIHdpdGggTlVMTCBpbXBvcnRlcl9vcHMgdG8g
Y292ZXIgdGhlIHR3byBjYXNlcyB3aGVyZSBpdCBpcyBub3QNCj4gYWxsb3dlZC4NCj4gDQo+IFRo
ZSBvbmx5IHJlYXNvbiBSRE1BIGhhcyB0byB1c2UgZG1hX2J1Zl9keW5hbWljX2F0dGFjaCgpIGlz
IHRvIHNldCB0aGUNCj4gYWxsb3dfcDJwPXRydWUgLi4NCg0KV2lsbCBkby4NCg0KPiANCj4gSmFz
b24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
