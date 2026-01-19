Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EA04AD3A710
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 12:39:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 114F23F9D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 11:39:49 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 7CCF23F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 11:39:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HB+uACCj;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E20AF41AF1;
	Mon, 19 Jan 2026 11:39:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2908BC116C6;
	Mon, 19 Jan 2026 11:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768822782;
	bh=NZVnVMnc93yrNSPZAamiI0H9QvR3dmJkS6zLGXYAAfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HB+uACCj5ZPlkAOwL/R6IQDksq8pEEFe84iMPztm/VOhwikWTRV5wRfnLkfiphSKd
	 Fh9TV5wfhgpwUNpbkpy+vbkZJjIZFVJWhod2TUgsjA2ejemZEB6RZYb4XQXGmuUMc0
	 TQfFNqr0oqgyyJLNXdcQUq8hGlsjBPUNv/e3ME328S93ARoDrbNtNscbyrKe9C0jnU
	 0PRJziOHH7RUfX49k7oDBWs2UYoxp1nPMgzHpFWedKrA3sZexH5IoENp8+WO64VAD/
	 FeTeCCP7+lEv9QCL8ELtGGhjn/qc4YzwSE2GN/mcQ9pJ922fdr4yElH+ngNTdyxMxF
	 ykLI1YdYm/dnA==
Date: Mon, 19 Jan 2026 13:39:38 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260119113938.GL13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
 <9eba2527-a06e-4f74-a7d6-93f6f91e00e9@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9eba2527-a06e-4f74-a7d6-93f6f91e00e9@amd.com>
X-Rspamd-Queue-Id: 7CCF23F6FF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: R647VG624V4SO6YEZO5SJZQCKN6YKIAJ
X-Message-ID-Hash: R647VG624V4SO6YEZO5SJZQCKN6YKIAJ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rd
 ma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R647VG624V4SO6YEZO5SJZQCKN6YKIAJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMTE6NTY6MTZBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8xOC8yNiAxMzowOCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+
IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gDQo+ID4gRG9j
dW1lbnQgYSBETUEtYnVmIHJldm9rZSBtZWNoYW5pc20gdGhhdCBhbGxvd3MgYW4gZXhwb3J0ZXIg
dG8gZXhwbGljaXRseQ0KPiA+IGludmFsaWRhdGUgKCJraWxsIikgYSBzaGFyZWQgYnVmZmVyIGFm
dGVyIGl0IGhhcyBiZWVuIGhhbmRlZCBvdXQgdG8NCj4gPiBpbXBvcnRlcnMuIE9uY2UgcmV2b2tl
ZCwgYWxsIGZ1cnRoZXIgQ1BVIGFuZCBkZXZpY2UgYWNjZXNzIGlzIGJsb2NrZWQsIGFuZA0KPiA+
IGltcG9ydGVycyBjb25zaXN0ZW50bHkgb2JzZXJ2ZSBmYWlsdXJlLg0KPiA+IA0KPiA+IFRoaXMg
cmVxdWlyZXMgYm90aCBpbXBvcnRlcnMgYW5kIGV4cG9ydGVycyB0byBob25vciB0aGUgcmV2b2tl
IGNvbnRyYWN0Lg0KPiA+IA0KPiA+IEZvciBpbXBvcnRlcnMsIHRoaXMgbWVhbnMgaW1wbGVtZW50
aW5nIC5pbnZhbGlkYXRlX21hcHBpbmdzKCkgYW5kIGNhbGxpbmcNCj4gPiBkbWFfYnVmX3Bpbigp
IGFmdGVyIHRoZSBETUHigJFidWYgaXMgYXR0YWNoZWQgdG8gdmVyaWZ5IHRoZSBleHBvcnRlcuKA
mXMgc3VwcG9ydA0KPiA+IGZvciByZXZvY2F0aW9uLg0KPiA+IA0KPiA+IEZvciBleHBvcnRlcnMs
IHRoaXMgbWVhbnMgaW1wbGVtZW50aW5nIHRoZSAucGluKCkgY2FsbGJhY2ssIHdoaWNoIGNoZWNr
cw0KPiA+IHRoZSBETUHigJFidWYgYXR0YWNobWVudCBmb3IgYSB2YWxpZCByZXZva2UgaW1wbGVt
ZW50YXRpb24uDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9u
cm9AbnZpZGlhLmNvbT4NCj4gPiAtLS0NCj4gPiAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggfCAx
OSArKysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspDQoNCjwuLi4+DQoNCj4gPiArICogUmV0dXJucyB0cnVlIGlmIERNQS1idWYgaW1wb3J0ZXIg
aG9ub3JzIHJldm9rZSBzZW1hbnRpY3MsIHdoaWNoIGlzDQo+ID4gKyAqIG5lZ290aWF0ZWQgd2l0
aCB0aGUgZXhwb3J0ZXIsIGJ5IG1ha2luZyBzdXJlIHRoYXQgaW1wb3J0ZXIgaW1wbGVtZW50cw0K
PiA+ICsgKiAuaW52YWxpZGF0ZV9tYXBwaW5ncygpIGNhbGxiYWNrIGFuZCBjYWxscyB0byBkbWFf
YnVmX3BpbigpIGFmdGVyDQo+ID4gKyAqIERNQS1idWYgYXR0YWNoLg0KPiANCj4gVGhhdCB3b3Jk
aW5nIGlzIHRvIHVuY2xlYXIuIFNvbWV0aGluZyBsaWtlOg0KPiANCj4gUmV0dXJucyB0cnVlIGlm
IHRoZSBETUEtYnVmIGltcG9ydGVyIGNhbiBoYW5kbGUgaW52YWxpZGF0aW5nIGl0J3MgbWFwcGlu
Z3MgYXQgYW55IHRpbWUsIGV2ZW4gYWZ0ZXIgcGlubmluZyBhIGJ1ZmZlci4NCg0KPC4uLj4NCg0K
PiANCj4gVGhhdCdzIGNsZWFybHkgbm90IGEgZ29vZCBuYW1lLiBCdXQgdGhhdCBpcyBhbHJlYWR5
IGRpc2N1c3NlZCBpbiBhbm90aGVyIHRocmVhZC4NCg0KPC4uLj4NCg0KPiBPaCwgd2Ugc2hvdWxk
IGhhdmUgcmVuYW1lZCB0aGF0IGFzIHdlbGwuIE9yIG1heWJlIGl0IGlzIHRpbWUgdG8gY29tcGxl
dGVseSByZW1vdmUgdGhhdCBjb25maWcgb3B0aW9uLg0KDQo8Li4uPg0KDQo+IFRoaXMgaXMgY2hl
Y2tpbmcgZXhwb3J0ZXIgYW5kIG5vdCBpbXBvcnRlciBjYXBhYmlsaXRpZXMsIHBsZWFzZSBkcm9w
Lg0KDQo8Li4uPg0KDQo+IFNvIHdoZW4gaW52YWxpZGF0ZV9tYXBwaW5ncyBpcyBpbXBsZW1lbnRl
ZCB3ZSBuZWVkIHRvIGJlIGFibGUgdG8gY2FsbCBpdCBhdCBhbnkgdGltZS4gWWVhaCB0aGF0IHNv
dW5kcyBsaWtlIGEgdmFsaWQgYXBwcm9hY2ggdG8gbWUuDQo+IA0KPiBCdXQgd2UgbmVlZCB0byBy
ZW1vdmUgdGhlIFJETkEgY2FsbGJhY2sgd2l0aCB0aGUgd2FybmluZyB0aGVuIHRvIHByb3Blcmx5
IHNpZ25hbCB0aGF0LiBBbmQgYWxzbyBwbGVhc2UgZG9jdW1lbnQgdGhhdCBpbiB0aGUgY2FsbGJh
Y2sga2VybmVsZG9jLg0KDQpXaWxsIGRvLCB0aGFua3MNCg0KPiANCj4gUmVnYXJkcywNCj4gQ2hy
aXN0aWFuLg0KPiANCj4gPiArfQ0KPiA+ICsNCj4gPiAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCj4gPiAgCQkJCQkgIHN0
cnVjdCBkZXZpY2UgKmRldik7DQo+ID4gIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKg0KPiA+
IA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
