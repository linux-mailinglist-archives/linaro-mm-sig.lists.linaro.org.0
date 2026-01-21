Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFxDAjGucGkgZAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 11:45:05 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 94534556C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 11:45:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFA9E3F6FF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:45:03 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 456A43F6BD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 10:44:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ahf9kV1w;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 72EE643DE5;
	Wed, 21 Jan 2026 10:44:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A48E4C19422;
	Wed, 21 Jan 2026 10:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768992297;
	bh=RigXg4DjlKaa6QSDWIT9y5XHQBoImXr5kkVisbqD/oo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ahf9kV1wXXoMLiaqKsEIG/UGwy2yJvAEXz5UxYeAn6pkL831lX1ZtGjzdM4txxSl1
	 +pazqTL82uZnQR/lq02Yn0CUkkNx6m62sJz3qFQSjt3RIKYoYgKzUpz5lHm96KWki2
	 lmsN5dz7M653itHr9/W+0ss34jWO2MVE8dhc3c/FeCtc5OBbvW5B+k0z0x7Smb10PS
	 VwfwFR44T9j4X0/96SNufS4CdrK0pHdr3x0K0nzSLYdvqVKJsFLhcJuJ55fqOJHgg5
	 qtCGWFawYOKxqtFbbgwBon7CZ1Vxj1ZFn3irlF7uz7KqZV/1nipJWzsYg1FuwX9EH3
	 B0W/jyyKakLIQ==
Date: Wed, 21 Jan 2026 12:44:51 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260121104451.GB13201@unreal>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <aW/pQmOO8komCgOK@lstrano-desk.jf.intel.com>
 <015b25e6-cfe1-4110-963f-5f8dc4720d1b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <015b25e6-cfe1-4110-963f-5f8dc4720d1b@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: AQQCPJLL6FZNJAM66D4YSJF7ZQUGG44G
X-Message-ID-Hash: AQQCPJLL6FZNJAM66D4YSJF7ZQUGG44G
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Matthew Brost <matthew.brost@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, lin
 aro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AQQCPJLL6FZNJAM66D4YSJF7ZQUGG44G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 94534556C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMTE6NDE6NDhBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8yMC8yNiAyMTo0NCwgTWF0dGhldyBCcm9zdCB3cm90ZToNCj4gPiBP
biBUdWUsIEphbiAyMCwgMjAyNiBhdCAwNDowNzowNlBNICswMjAwLCBMZW9uIFJvbWFub3Zza3kg
d3JvdGU6DQo+ID4+IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+
ID4+DQo+ID4+IGRtYS1idWYgaW52YWxpZGF0aW9uIGlzIHBlcmZvcm1lZCBhc3luY2hyb25vdXNs
eSBieSBoYXJkd2FyZSwgc28gVkZJTyBtdXN0DQo+ID4+IHdhaXQgdW50aWwgYWxsIGFmZmVjdGVk
IG9iamVjdHMgaGF2ZSBiZWVuIGZ1bGx5IGludmFsaWRhdGVkLg0KPiA+Pg0KPiA+PiBGaXhlczog
NWQ3NDc4MWViYzg2ICgidmZpby9wY2k6IEFkZCBkbWEtYnVmIGV4cG9ydCBzdXBwb3J0IGZvciBN
TUlPIHJlZ2lvbnMiKQ0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25y
b0BudmlkaWEuY29tPg0KPiA+PiAtLS0NCj4gPj4gIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lf
ZG1hYnVmLmMgfCA1ICsrKysrDQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
DQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1
Zi5jIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPiA+PiBpbmRleCBkNGQw
ZjdkMDhjNTMuLjMzYmM2YTE5MDlkZCAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy92ZmlvL3Bj
aS92ZmlvX3BjaV9kbWFidWYuYw0KPiA+PiArKysgYi9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNp
X2RtYWJ1Zi5jDQo+ID4+IEBAIC0zMjEsNiArMzIxLDkgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVm
X21vdmUoc3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBib29sIHJldm9rZWQpDQo+
ID4+ICAJCQlkbWFfcmVzdl9sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQo+ID4+ICAJ
CQlwcml2LT5yZXZva2VkID0gcmV2b2tlZDsNCj4gPj4gIAkJCWRtYV9idWZfbW92ZV9ub3RpZnko
cHJpdi0+ZG1hYnVmKTsNCj4gPj4gKwkJCWRtYV9yZXN2X3dhaXRfdGltZW91dChwcml2LT5kbWFi
dWYtPnJlc3YsDQo+ID4+ICsJCQkJCSAgICAgIERNQV9SRVNWX1VTQUdFX0tFUk5FTCwgZmFsc2Us
DQo+ID4+ICsJCQkJCSAgICAgIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsNCj4gPiANCj4gPiBTaG91
bGQgd2UgZXhwbGljaXRseSBjYWxsIG91dCBpbiB0aGUgZG1hX2J1Zl9tb3ZlX25vdGlmeSgpIC8N
Cj4gPiBpbnZhbGlkYXRlX21hcHBpbmdzIGtlcm5lbC1kb2MgdGhhdCBLRVJORUwgc2xvdHMgYXJl
IHRoZSBtZWNoYW5pc20NCj4gPiBmb3IgY29tbXVuaWNhdGluZyBhc3luY2hyb25vdXMgZG1hX2J1
Zl9tb3ZlX25vdGlmeSAvDQo+ID4gaW52YWxpZGF0ZV9tYXBwaW5ncyBldmVudHMgdmlhIGZlbmNl
cz8NCj4gDQo+IE9oLCBJIG1pc3NlZCB0aGF0ISBBbmQgbm8gdGhhdCBpcyBub3QgY29ycmVjdC4N
Cj4gDQo+IFRoaXMgc2hvdWxkIGJlIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQIHNvIHRoYXQgd2Ug
d2FpdCBmb3IgZXZlcnl0aGluZy4NCg0KV2lsbCBjaGFuZ2UuDQoNCj4gDQo+IFJlZ2FyZHMsDQo+
IENocmlzdGlhbi4NCj4gDQo+ID4gDQo+ID4gWWVzLCB0aGlzIGlzIHByb2JhYmx5IGltcGxpZWQs
IGJ1dCBpdCB3b3VsZG7igJl0IGh1cnQgdG8gc3RhdGUgdGhpcw0KPiA+IGV4cGxpY2l0bHkgYXMg
cGFydCBvZiB0aGUgY3Jvc3MtZHJpdmVyIGNvbnRyYWN0Lg0KPiA+IA0KPiA+IEhlcmUgaXMgd2hh
dCB3ZSBoYXZlIG5vdzoNCj4gPiANCj4gPiAgCSAqIC0gRHluYW1pYyBpbXBvcnRlcnMgc2hvdWxk
IHNldCBmZW5jZXMgZm9yIGFueSBhY2Nlc3MgdGhhdCB0aGV5IGNhbid0DQo+ID4gCSAqICAgZGlz
YWJsZSBpbW1lZGlhdGVseSBmcm9tIHRoZWlyICZkbWFfYnVmX2F0dGFjaF9vcHMuaW52YWxpZGF0
ZV9tYXBwaW5ncw0KPiA+ICAJICogICBjYWxsYmFjay4NCj4gPiANCj4gPiBNYXR0DQo+ID4gDQo+
ID4+ICAJCQlkbWFfcmVzdl91bmxvY2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4gPj4gIAkJfQ0K
PiA+PiAgCQlmcHV0KHByaXYtPmRtYWJ1Zi0+ZmlsZSk7DQo+ID4+IEBAIC0zNDIsNiArMzQ1LDgg
QEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX2NsZWFudXAoc3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2
aWNlICp2ZGV2KQ0KPiA+PiAgCQlwcml2LT52ZGV2ID0gTlVMTDsNCj4gPj4gIAkJcHJpdi0+cmV2
b2tlZCA9IHRydWU7DQo+ID4+ICAJCWRtYV9idWZfbW92ZV9ub3RpZnkocHJpdi0+ZG1hYnVmKTsN
Cj4gPj4gKwkJZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KHByaXYtPmRtYWJ1Zi0+cmVzdiwgRE1BX1JF
U1ZfVVNBR0VfS0VSTkVMLA0KPiA+PiArCQkJCSAgICAgIGZhbHNlLCBNQVhfU0NIRURVTEVfVElN
RU9VVCk7DQo+ID4+ICAJCWRtYV9yZXN2X3VubG9jayhwcml2LT5kbWFidWYtPnJlc3YpOw0KPiA+
PiAgCQl2ZmlvX2RldmljZV9wdXRfcmVnaXN0cmF0aW9uKCZ2ZGV2LT52ZGV2KTsNCj4gPj4gIAkJ
ZnB1dChwcml2LT5kbWFidWYtPmZpbGUpOw0KPiA+Pg0KPiA+PiAtLSANCj4gPj4gMi41Mi4wDQo+
ID4+DQo+IA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
