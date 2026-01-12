Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEA5D1280C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 13:20:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4318040171
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 12:20:08 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id C9F173F6E7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 12:20:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=iL2K02pv;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 544F06013C;
	Mon, 12 Jan 2026 12:20:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 233D1C16AAE;
	Mon, 12 Jan 2026 12:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768220402;
	bh=+Nliq3Hq9k4ThIYArW3/W+oRJeWgrnz/ZUwpOJtv0cM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iL2K02pvk6E1DsvDlqWboBCtpQHXaKUBrL1wltPlg05hlgRoVPE9d6yCnJgpfHU3K
	 5wnwkxG9AmFATvFjjgHmhJmW/kYdcxNn5zEl7CCQGsXozborPGix1NS3B6tfKluFUp
	 4+jaQq6nlsWR88DToo/mPKJ87brhQnhnntP/R+nXtW3dhiXFicBW1f3BpAsty+mLjZ
	 99FE2FBFc/kRsz2G+ht2VEMhhnQ2twEqyml4iPXDcjXNFCp0ahYY66D1dhde+2mS0q
	 8Y77nf0bPjNjJG2JcBS0x7Evxif8Ub6tPWPTIo5nqywmPi5aJOLKCeAsDSKhiNLd77
	 0aouxLftPfDUw==
Date: Mon, 12 Jan 2026 14:19:56 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260112121956.GE14378@unreal>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
 <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
X-Rspamd-Queue-Id: C9F173F6E7
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,nvidia.com:email,unreal:mid,lists.freedesktop.org:email,amd.com:email,shazbot.org:email,tor.source.kernel.org:helo,tor.source.kernel.org:rdns,linux.dev:email,arm.com:email,ziepe.ca:email];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 572ZUDYBUH3DQTPRMQQXMFXTYKSNUUI6
X-Message-ID-Hash: 572ZUDYBUH3DQTPRMQQXMFXTYKSNUUI6
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Williamson <alex@shazbot.org>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/572ZUDYBUH3DQTPRMQQXMFXTYKSNUUI6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMTE6MDQ6MzhBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8xMS8yNiAxMTozNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+
IFRoaXMgc2VyaWVzIGltcGxlbWVudHMgYSBkbWEtYnVmIOKAnHJldm9rZeKAnSBtZWNoYW5pc206
IHRvIGFsbG93IGEgZG1hLWJ1Zg0KPiA+IGV4cG9ydGVyIHRvIGV4cGxpY2l0bHkgaW52YWxpZGF0
ZSAo4oCca2lsbOKAnSkgYSBzaGFyZWQgYnVmZmVyIGFmdGVyIGl0IGhhcw0KPiA+IGJlZW4gZGlz
dHJpYnV0ZWQgdG8gaW1wb3J0ZXJzLCBzbyB0aGF0IGZ1cnRoZXIgQ1BVIGFuZCBkZXZpY2UgYWNj
ZXNzIGlzDQo+ID4gcHJldmVudGVkIGFuZCBpbXBvcnRlcnMgcmVsaWFibHkgb2JzZXJ2ZSBmYWls
dXJlLg0KPiANCj4gV2UgYWxyZWFkeSBoYXZlIHRoYXQuIFRoaXMgaXMgd2hhdCB0aGUgbW92ZV9u
b3RpZnkgaXMgYWxsIGFib3V0Lg0KPiANCj4gPiBUb2RheSwgZG1hLWJ1ZiBlZmZlY3RpdmVseSBw
cm92aWRlcyDigJxpZiB5b3UgaGF2ZSB0aGUgZmQsIHlvdSBjYW4ga2VlcCB1c2luZw0KPiA+IHRo
ZSBtZW1vcnkgaW5kZWZpbml0ZWx5LuKAnSBUaGF0IGFzc3VtcHRpb24gYnJlYWtzIGRvd24gd2hl
biBhbiBleHBvcnRlciBtdXN0DQo+ID4gcmVjbGFpbSwgcmVzZXQsIGV2aWN0LCBvciBvdGhlcndp
c2UgcmV0aXJlIGJhY2tpbmcgbWVtb3J5IGFmdGVyIGl0IGhhcyBiZWVuDQo+ID4gc2hhcmVkLiBD
b25jcmV0ZSBjYXNlcyBpbmNsdWRlIEdQVSByZXNldCBhbmQgcmVjb3Zlcnkgd2hlcmUgb2xkIGFs
bG9jYXRpb25zDQo+ID4gYmVjb21lIHVuc2FmZSB0byBhY2Nlc3MsIG1lbW9yeSBldmljdGlvbi9v
dmVyY29tbWl0IHdoZXJlIGJhY2tpbmcgc3RvcmFnZQ0KPiA+IG11c3QgYmUgd2l0aGRyYXduLCBh
bmQgc2VjdXJpdHkgb3IgaXNvbGF0aW9uIHNpdHVhdGlvbnMgd2hlcmUgY29udGludWVkIGFjY2Vz
cw0KPiA+IG11c3QgYmUgcHJldmVudGVkLiBXaGlsZSBkcml2ZXJzIGNhbiBzb21ldGltZXMgYXBw
cm94aW1hdGUgdGhpcyB3aXRoDQo+ID4gZXhwb3J0ZXItc3BlY2lmaWMgZmVuY2luZyBhbmQgcG9s
aWN5LCB0aGVyZSBpcyBubyBjb3JlIGRtYS1idWYgc3RhdGUgdHJhbnNpdGlvbg0KPiA+IHRoYXQg
Y29tbXVuaWNhdGVzIOKAnHRoaXMgYnVmZmVyIGlzIG5vIGxvbmdlciB2YWxpZDsgZmFpbCBhY2Nl
c3PigJ0gYWNyb3NzIGFsbA0KPiA+IGFjY2VzcyBwYXRocy4NCj4gDQo+IEl0J3Mgbm90IGNvcnJl
Y3QgdGhhdCB0aGVyZSBpcyBubyBETUEtYnVmIGhhbmRsaW5nIGZvciB0aGlzIHVzZSBjYXNlLg0K
PiANCj4gPiBUaGUgY2hhbmdlIGluIHRoaXMgc2VyaWVzIGlzIHRvIGludHJvZHVjZSBhIGNvcmUg
4oCccmV2b2tlZOKAnSBzdGF0ZSBvbiB0aGUgZG1hLWJ1Zg0KPiA+IG9iamVjdCBhbmQgYSBjb3Jy
ZXNwb25kaW5nIGV4cG9ydGVyLXRyaWdnZXJlZCByZXZva2Ugb3BlcmF0aW9uLiBPbmNlIGEgZG1h
LWJ1Zg0KPiA+IGlzIHJldm9rZWQsIG5ldyBhY2Nlc3MgcGF0aHMgYXJlIGJsb2NrZWQgc28gdGhh
dCBhdHRlbXB0cyB0byBETUEtbWFwLCB2bWFwLCBvcg0KPiA+IG1tYXAgdGhlIGJ1ZmZlciBmYWls
IGluIGEgY29uc2lzdGVudCB3YXkuDQo+ID4gDQo+ID4gSW4gYWRkaXRpb24sIHRoZSBzZXJpZXMg
YWltcyB0byBpbnZhbGlkYXRlIGV4aXN0aW5nIGFjY2VzcyBhcyBtdWNoIGFzIHRoZSBrZXJuZWwN
Cj4gPiBhbGxvd3M6IGRldmljZSBtYXBwaW5ncyBhcmUgdG9ybiBkb3duIHdoZXJlIHBvc3NpYmxl
IHNvIGRldmljZXMgYW5kIElPTU1VcyBjYW5ub3QNCj4gPiBjb250aW51ZSBETUEuDQo+ID4gDQo+
ID4gVGhlIHNlbWFudGljcyBhcmUgaW50ZW50aW9uYWxseSBzaW1wbGU6IHJldm9rZSBpcyBhIG9u
ZS13YXksIHBlcm1hbmVudCB0cmFuc2l0aW9uDQo+ID4gZm9yIHRoZSBsaWZldGltZSBvZiB0aGF0
IGRtYS1idWYgaW5zdGFuY2UuDQo+ID4gDQo+ID4gRnJvbSBhIGNvbXBhdGliaWxpdHkgcGVyc3Bl
Y3RpdmUsIHVzZXJzIHRoYXQgbmV2ZXIgaW52b2tlIHJldm9rZSBhcmUgdW5hZmZlY3RlZCwNCj4g
PiBhbmQgZXhwb3J0ZXJzIHRoYXQgYWRvcHQgaXQgZ2FpbiBhIGNvcmUtc3VwcG9ydGVkIGVuZm9y
Y2VtZW50IG1lY2hhbmlzbSByYXRoZXINCj4gPiB0aGFuIHJlbHlpbmcgb24gYWQgaG9jIGRyaXZl
ciBiZWhhdmlvci4gVGhlIGludGVudCBpcyB0byBrZWVwIHRoZSBpbnRlcmZhY2UNCj4gPiBtaW5p
bWFsIGFuZCBhdm9pZCBpbXBvc2luZyBwb2xpY3k7IHRoZSBzZXJpZXMgcHJvdmlkZXMgdGhlIG1l
Y2hhbmlzbSB0byB0ZXJtaW5hdGUNCj4gPiBhY2Nlc3MsIHdpdGggcG9saWN5IHJlbWFpbmluZyBp
biB0aGUgZXhwb3J0ZXIgYW5kIGhpZ2hlci1sZXZlbCBjb21wb25lbnRzLg0KPiANCj4gQXMgZmFy
IGFzIEkgY2FuIHNlZSB0aGF0IHBhdGNoIHNldCBpcyBjb21wbGV0ZWx5IHN1cGVyZmx1b3VzLg0K
PiANCj4gVGhlIG1vdmVfbm90aWZ5IG1lY2hhbmlzbSBoYXMgYmVlbiBpbXBsZW1lbnRlZCBleGFj
dGx5IHRvIGNvdmVyIHRoaXMgdXNlIGNhc2UgYW5kIGlzIGluIHVzZSBmb3IgYSBjb3VwbGUgb2Yg
eWVhcnMgbm93Lg0KPiANCj4gV2hhdCBleGFjdGx5IGlzIG1pc3Npbmc/DQoNCj5Gcm9tIHdoYXQg
SSBjYW4gdGVsbCwgdGhlIG1pc3NpbmcgcGllY2UgaXMgd2hhdCBoYXBwZW5zIGFmdGVyIC5tb3Zl
X25vdGlmeSgpDQppcyBjYWxsZWQuIEFjY29yZGluZyB0byB0aGUgZG9jdW1lbnRhdGlvbiwgdGhl
IGV4cG9ydGVyIHJlbWFpbnMgdmFsaWQsIGFuZA0KdGhlIGltcG9ydGVyIGlzIGV4cGVjdGVkIHRv
IHJlY3JlYXRlIGFsbCBtYXBwaW5ncy4NCg0KaW5jbHVkZS9saW51eC9kbWEtYnVmLmg6DQogIDQ3
MSAgICAgICAgICAqIE1hcHBpbmdzIHN0YXkgdmFsaWQgYW5kIGFyZSBub3QgZGlyZWN0bHkgYWZm
ZWN0ZWQgYnkgdGhpcyBjYWxsYmFjay4NCiAgNDcyICAgICAgICAgICogQnV0IHRoZSBETUEtYnVm
IGNhbiBub3cgYmUgaW4gYSBkaWZmZXJlbnQgcGh5c2ljYWwgbG9jYXRpb24sIHNvIGFsbA0KICA0
NzMgICAgICAgICAgKiBtYXBwaW5ncyBzaG91bGQgYmUgZGVzdHJveWVkIGFuZCByZS1jcmVhdGVk
IGFzIHNvb24gYXMgcG9zc2libGUuDQogIDQ3NCAgICAgICAgICAqDQogIDQ3NSAgICAgICAgICAq
IE5ldyBtYXBwaW5ncyBjYW4gYmUgY3JlYXRlZCBhZnRlciB0aGlzIGNhbGxiYWNrIHJldHVybnMs
IGFuZCB3aWxsDQogIDQ3NiAgICAgICAgICAqIHBvaW50IHRvIHRoZSBuZXcgbG9jYXRpb24gb2Yg
dGhlIERNQS1idWYuDQoNCkNhbGwgdG8gZG1hX2J1Zl9tb3ZlX25vdGlmeSgpIGRvZXMgbm90IHBy
ZXZlbnQgbmV3IGF0dGFjaG1lbnRzIHRvIHRoYXQNCmV4cG9ydGVyLCB3aGlsZSAicmV2b2tlIiBk
b2VzLiBJbiB0aGUgY3VycmVudCBjb2RlLCB0aGUgaW1wb3J0ZXIgaXMgbm90IGF3YXJlDQp0aGF0
IHRoZSBleHBvcnRlciBubyBsb25nZXIgZXhpc3RzIGFuZCB3aWxsIGNvbnRpbnVlIGNhbGxpbmcN
CmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoKS4NCg0KSW4gc3VtbWFyeSwgdGhlIGN1cnJlbnQgaW1w
bGVtZW50YXRpb24gYWxsb3dzIGEgc2luZ2xlIC5hdHRhY2goKSBjaGVjayBidXQNCnBlcm1pdHMg
bXVsdGlwbGUgLm1hcF9kbWFfYnVmKCkgY2FsbHMuIFdpdGggInJldm9rZSIsIHdlIGdhaW4gdGhl
IGFiaWxpdHkgdG8NCmJsb2NrIGFueSBzdWJzZXF1ZW50IC5tYXBfZG1hX2J1ZigpIG9wZXJhdGlv
bnMuDQoNCk1haW4gdXNlIGNhc2UgaXMgVkZJTyBhcyBleHBvcnRlciBhbmQgSU9NTVVGRCBhcyBp
bXBvcnRlci4NCg0KVGhhbmtzDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+
ID4gDQo+ID4gQlRXLCBzZWUgdGhpcyBtZWdhdGhyZWFkIFsxXSBmb3IgYWRkaXRpb25hbCBjb250
ZXh0LiAgDQo+ID4gSXJvbmljYWxseSwgaXQgd2FzIHBvc3RlZCBleGFjdGx5IG9uZSB5ZWFyIGFn
by4NCj4gPiANCj4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwMTA3MTQy
NzE5LjE3OTYzNi0yLXlpbHVuLnh1QGxpbnV4LmludGVsLmNvbS8NCj4gPiANCj4gPiBUaGFua3MN
Cj4gPiANCj4gPiBDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBDYzogbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiA+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcNCj4gPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gPiBDYzoga3ZtQHZnZXIua2VybmVsLm9yZw0K
PiA+IENjOiBpb21tdUBsaXN0cy5saW51eC5kZXYNCj4gPiBUbzogSmFzb24gR3VudGhvcnBlIDxq
Z2dAemllcGUuY2E+DQo+ID4gVG86IExlb24gUm9tYW5vdnNreSA8bGVvbkBrZXJuZWwub3JnPg0K
PiA+IFRvOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiA+IFRvOiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4gVG86IEFsZXgg
V2lsbGlhbXNvbiA8YWxleEBzaGF6Ym90Lm9yZz4NCj4gPiBUbzogS2V2aW4gVGlhbiA8a2V2aW4u
dGlhbkBpbnRlbC5jb20+DQo+ID4gVG86IEpvZXJnIFJvZWRlbCA8am9yb0A4Ynl0ZXMub3JnPg0K
PiA+IFRvOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPg0KPiA+IFRvOiBSb2JpbiBNdXJw
aHkgPHJvYmluLm11cnBoeUBhcm0uY29tPg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gLS0tDQo+ID4gTGVvbiBSb21hbm92
c2t5ICg0KToNCj4gPiAgICAgICBkbWEtYnVmOiBJbnRyb2R1Y2UgcmV2b2tlIHNlbWFudGljcw0K
PiA+ICAgICAgIHZmaW86IFVzZSBkbWEtYnVmIHJldm9rZSBzZW1hbnRpY3MNCj4gPiAgICAgICBp
b21tdWZkOiBSZXF1aXJlIERNQUJVRiByZXZva2Ugc2VtYW50aWNzDQo+ID4gICAgICAgaW9tbXVm
ZC9zZWxmdGVzdDogUmV1c2UgZG1hLWJ1ZiByZXZva2Ugc2VtYW50aWNzDQo+ID4gDQo+ID4gIGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgfCAzNiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKy0tLS0NCj4gPiAgZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMgICAg
ICB8ICAyICstDQo+ID4gIGRyaXZlcnMvaW9tbXUvaW9tbXVmZC9zZWxmdGVzdC5jICAgfCAxMiAr
KysrLS0tLS0tLS0NCj4gPiAgZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYyB8IDI3
ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYu
aCAgICAgICAgICAgIHwgMzEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICA1
IGZpbGVzIGNoYW5nZWQsIDc0IGluc2VydGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQ0KPiA+IC0t
LQ0KPiA+IGJhc2UtY29tbWl0OiA5YWNlNDc1M2E1MjAyYjAyMTkxZDU0ZTlmZGY3ZjllM2QwMmI4
NWViDQo+ID4gY2hhbmdlLWlkOiAyMDI1MTIyMS1kbWFidWYtcmV2b2tlLWI5MGVmMTZlNDIzNg0K
PiA+IA0KPiA+IEJlc3QgcmVnYXJkcywNCj4gPiAtLSAgDQo+ID4gTGVvbiBSb21hbm92c2t5IDxs
ZW9ucm9AbnZpZGlhLmNvbT4NCj4gPiANCj4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
