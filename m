Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EN8sOXYRn2nMYwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 16:12:54 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 838171994B6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 16:12:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85BBC40498
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 15:12:53 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 9EF3E40498
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 15:12:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=olWIYesR;
	spf=pass (lists.linaro.org: domain of andersson@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=andersson@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DEC5941E4D;
	Wed, 25 Feb 2026 15:12:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73BEFC116D0;
	Wed, 25 Feb 2026 15:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772032370;
	bh=WBE2By5FzkP5SLbnPSG3o0NgugwGTYXwxmVW/sbRDIw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=olWIYesRWiw65xkODMWGjed+aMm2qj32u6gVvmfLAViXpgfQ1gV5euIFOYqvzyXKS
	 1oBjv1D1FTk1wR7rMSeAmVBJmSYp1VZMujILP/lxeKQLisP+WFoCBJSvHgrg3aUY3G
	 o55VFauH6L5QLsO4DYrMf5yk93ODqho4R4lpocJaU2wzmq0zPxpd0cTDezXbJtbtdP
	 /OJCdoFKX0X5bkE917xIuyjMETyXUBUHJ86z0zVUQQOfhQ0d3fwlrlGb+29Bjbz5N6
	 c7uzqpRNp6BBV/ZOpgHGboQQIXulvsYguBBOqtlXiUDdZB9VHUdXaViALWDNYzYiOp
	 VtX+a33PmtVOA==
Date: Wed, 25 Feb 2026 09:12:46 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <opjniedtfhkv7vlb57g3xyikcfkxelthx3lmspmypws4vxz4oc@4uypmmf4t6fb>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-1-fe46a9c1a046@oss.qualcomm.com>
 <e94ce683-d47c-4c8e-8b26-cd327c891cc8@oss.qualcomm.com>
 <5a278b02-f2ad-408b-b0ad-f2297817bd7e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a278b02-f2ad-408b-b0ad-f2297817bd7e@oss.qualcomm.com>
X-Spamd-Bar: ---
Message-ID-Hash: UGZZNCDVXUYTI3QUSRGBCCMCGZ3O5IJD
X-Message-ID-Hash: UGZZNCDVXUYTI3QUSRGBCCMCGZ3O5IJD
X-MailFrom: andersson@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] accel/qda: Add Qualcomm QDA DSP accelerator driver docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UGZZNCDVXUYTI3QUSRGBCCMCGZ3O5IJD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,quicinc.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.923];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 838171994B6
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgMDc6NDc6MDhQTSArMDUzMCwgRWthbnNoIEd1cHRhIHdy
b3RlOg0KPiANCj4gDQo+IE9uIDIvMjQvMjAyNiA5OjAzIEFNLCBUcmlsb2sgU29uaSB3cm90ZToN
Cj4gPiBPbiAyLzIzLzIwMjYgMTE6MDggQU0sIEVrYW5zaCBHdXB0YSB3cm90ZToNCj4gPj4gQWRk
IGluaXRpYWwgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIFF1YWxjb21tIERTUCBBY2NlbGVyYXRvciAo
UURBKSBkcml2ZXINCj4gPj4gaW50ZWdyYXRlZCBpbiB0aGUgRFJNIGFjY2VsIHN1YnN5c3RlbS4N
Cj4gPj4NCj4gPj4gVGhlIG5ldyBkb2NzIGludHJvZHVjZSBRREEgYXMgYSBEUk0vYWNjZWwtYmFz
ZWQgaW1wbGVtZW50YXRpb24gb2YNCj4gPj4gSGV4YWdvbiBEU1Agb2ZmbG9hZCB0aGF0IGlzIGlu
dGVuZGVkIGFzIGEgbW9kZXJuIGFsdGVybmF0aXZlIHRvIHRoZQ0KPiA+PiBsZWdhY3kgRmFzdFJQ
QyBkcml2ZXIgaW4gZHJpdmVycy9taXNjLiBUaGUgdGV4dCBkZXNjcmliZXMgdGhlIGRyaXZlcg0K
PiA+PiBtb3RpdmF0aW9uLCBoaWdoLWxldmVsIGFyY2hpdGVjdHVyZSBhbmQgaW50ZXJhY3Rpb24g
d2l0aCBJT01NVSBjb250ZXh0DQo+ID4+IGJhbmtzLCBHRU0tYmFzZWQgYnVmZmVyIG1hbmFnZW1l
bnQgYW5kIHRoZSBSUE1zZyB0cmFuc3BvcnQuDQo+ID4+DQo+ID4+IFRoZSB1c2VyLXNwYWNlIGZh
Y2luZyBzZWN0aW9uIGRvY3VtZW50cyB0aGUgbWFpbiBRREEgSU9DVExzIHVzZWQgdG8NCj4gPj4g
ZXN0YWJsaXNoIERTUCBzZXNzaW9ucywgbWFuYWdlIEdFTSBidWZmZXIgb2JqZWN0cyBhbmQgaW52
b2tlIHJlbW90ZQ0KPiA+PiBwcm9jZWR1cmVzIHVzaW5nIHRoZSBGYXN0UlBDIHByb3RvY29sLCBh
bG9uZyB3aXRoIGEgdHlwaWNhbCBsaWZlY3ljbGUNCj4gPj4gZXhhbXBsZSBmb3IgYXBwbGljYXRp
b25zLg0KPiA+Pg0KPiA+PiBGaW5hbGx5LCB0aGUgZHJpdmVyIGlzIHdpcmVkIGludG8gdGhlIENv
bXB1dGUgQWNjZWxlcmF0b3JzDQo+ID4+IGRvY3VtZW50YXRpb24gaW5kZXggdW5kZXIgRG9jdW1l
bnRhdGlvbi9hY2NlbCwgYW5kIGEgYnJpZWYgZGVidWdnaW5nDQo+ID4+IHNlY3Rpb24gc2hvd3Mg
aG93IHRvIGVuYWJsZSBkeW5hbWljIGRlYnVnIGZvciB0aGUgUURBIGltcGxlbWVudGF0aW9uLg0K
PiA+IFNvIGV4aXN0aW5nIGFwcGxpY2F0aW9ucyB3cml0dGVuIG92ZXIgY2hhcmFjdGVyIGRldmlj
ZSBVQVBJIG5lZWRzIHRvIGJlDQo+ID4gcmV3cml0dGVuIG92ZXIgbmV3IFVBUEkgYW5kIGl0IHdp
bGwgYmUgYnJva2VuIG9uY2UgdGhpcyBkcml2ZXIgZ2V0cw0KPiA+IG1lcmdlZD8gQXJlIHdlIGdv
aW5nIHRvIGtlZXAgYm90aCB0aGUgZHJpdmVycyBpbiB0aGUgTGludXgga2VybmVsDQo+ID4gYW5k
IG5vdCBkZXByZWNhdGUgdGhlIC9jaGFyIGRldmljZSBvbmU/IA0KPiA+DQo+ID4gSXMgUXVhbGNv
bW0gZ29pbmcgdG8gcHJvdmlkZSB0aGUgd3JhcHBlciBsaWJyYXJ5IGluIHRoZSB1c2Vyc3BhY2UN
Cj4gPiBzbyB0aGF0IGV4aXN0aW5nIGFwcGxpY2F0aW9ucyBieSBvdXIgY3VzdG9tZXJzIGFuZCBk
ZXZlbG9wZXJzDQo+ID4ga2VlcCB3b3JraW5nIHcvIHRoZSBuZXdlciBrZXJuZWwgaWYgdGhlIGNo
YXIgaW50ZXJmYWNlIGJhc2VkDQo+ID4gZHJpdmVyIGdldHMgZGVwcmVjYXRlZD8gSXQgaXMgbm90
IGNsZWFyIGZyb20geW91ciB0ZXh0IGFib3ZlLiANCj4gVGhhbmtzIGZvciByYWlzaW5nIHRoaXMs
IFRyaWxvay4NCj4gDQo+IFRoaXMgaXMgb25lIG9mIHRoZSBvcGVuIGl0ZW1zIHRoYXQgSSBoYXZl
LiBJJ20gbm90IGV4YWN0bHkgc3VyZSB3aGF0IHdvdWxkIGJlIHRoZQ0KPiBhY2NlcHRhYmxlIHdh
eSBmb3IgdGhpcy7CoA0KPiANCj4gQXMgeW91IG1lbnRpb25lZCwgYXBwbGljYXRpb25zIHRoYXQg
cmVseSBvbiAvZGV2L2Zhc3RycGMqIG1pZ2h0IG5vdCB3b3JrIG9uIFFEQQ0KPiB3aXRob3V0IG1v
ZGlmaWNhdGlvbi4NCj4gDQo+IEkgd2FzIHRoaW5raW5nIGluIHRoZSBzYW1lIGxpbmVzIGFzIHlv
dSBoYXZlIG1lbnRpb25lZCBhbmTCoCBoYXZpbmcgc29tZSBzaGltL2NvbXBhdA0KPiBkcml2ZXIg
dG8gdHJhbnNsYXRlIEZhc3RSUEMgVUFQSSB0byBRREEuIFRoZSBjb21wYXQgZHJpdmVyIHdvdWxk
IGV4cG9zZSB0aGUgZXhpc3RpbmcNCj4gY2hhcmFjdGVyIGRldmljZXMgYW5kIHJvdXRlIHRoZSBj
YWxscyB0byBRREEuIFRoZSBjb21wYXQgZHJpdmVyIGNvdWxkIGJlIGJ1aWx0IHZpYSBLY29uZmln
Lg0KPiANCg0KVGhpcyBpcyBhIGZ1bmRhbWVudGFsIHJlcXVpcmVtZW50LCB5b3UgbmVlZCB0byBh
ZGRyZXNzIHRoaXMgaW4gb3JkZXIgZm9yDQp0aGlzIHRvIG1vdmUgZm9yd2FyZC4NCg0KV2hpY2gg
bWFrZXMgbWUgd29uZGVyIGlmIGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvIHJlYWNoIGFuIGFjY2Vs
IGRyaXZlcg0KdGhyb3VnaCBpbmNyZW1lbnRhbCB0cmFuc2l0aW9uIG9mIHRoZSBjdXJyZW50IGRy
aXZlciwgaW5zdGVhZCBvZiBqdXN0DQpkcm9wcGluZyBpbiBhIGZldyB0aG91c2FuZCBsaW5lcyBv
ZiBuZXcgY29kZS9kZXNpZ24uDQoNCj4gSG93ZXZlciwgSSBoYXZlbuKAmXQgZW5jb3VudGVyZWQg
YW4gZXhhbXBsZSBvZiBzdWNoIGEgVUFQSeKAkXRyYW5zbGF0aW9uIGRyaXZlciBpbiB0aGUga2Vy
bmVsDQo+IGJlZm9yZSwgc28gSSB3b3VsZCB3YW50IGd1aWRhbmNlIGZyb20gbWFpbnRhaW5lcnMg
b24gd2hldGhlciB0aGlzIGlzIGFuIGFjY2VwdGFibGUNCj4gbW9kZWwgb3Igbm90Lg0KPiANCj4g
UmVnYXJkaW5nIHlvdXIgcXVlc3Rpb24gYWJvdXQgbGlicmFyeSwgYWxsIHRoZSBBUElzIGV4cG9z
ZWQgYnkgZ2l0aHViL2Zhc3RycGMgbGlicmFyeSBhcmUga2VwdA0KPiB1bmNoYW5nZWQgaW4gdGVy
bXMgb2YgZGVmaW5pdGlvbnMgYW5kIGV4cGVjdGF0aW9uLiBUaGUgc2FtZSBwcm9qZWN0IGNhbiBi
ZSBidWlsZCBmb3IgYm90aA0KPiBGYXN0UlBDIGFuZCBRREEgYmFzZWQgb24gY29uZmlndXJlIG9w
dGlvbnMuIFNvLCB0aGUgYXBwbGljYXRpb25zIHVzaW5nIGdpdGh1Yi9mYXN0cnBjIHNob3VsZA0K
PiBub3QgZmFjZSBhbnkgcHJvYmxlbSBpZiB0aGUgbGlicyBpcyBidWlsdCB3aXRoIHByb3BlciBj
b25maWd1cmUgb3B0aW9ucy4NCj4gDQoNCllvdSdyZSBhc3N1bWluZyB0aGF0IHRoZSBrZXJuZWwg
YW5kIHVzZXJzcGFjZSBhcmUgYSB1bmlmaWVkIHBpZWNlIG9mDQpzb2Z0d2FyZSwgdGhleSBhcmUg
bm90LiBJdCBtdXN0IGJlIHBvc3NpYmxlIGZvciBtZSB0byBpbnN0YWxsIGEgbmV3DQprZXJuZWwg
cGFja2FnZSB3aXRob3V0IGhhdmluZyB0byByZXBsYWNlIHRoZSB1c2Vyc3BhY2UgbGlicmFyaWVz
Lg0KDQpSZWdhcmRzLA0KQmpvcm4NCg0KPiBJIGhhdmUgbm90ZWQgeW91ciBwb2ludCByZWdhcmRp
bmcgdGhlIGRvYyBub3QgcHJvdmlkaW5nIGNsZWFyIGRldGFpbHMsIEkgaGF2ZSBhZGRlZCBpbnRl
cmZhY2UNCj4gY29tcGF0aWJpbGl0eSBpbmZvcm1hdGlvbiBpbiBjb3ZlciBsZXR0ZXIgYW5kIHdp
bGwgdHJ5IHB1bGxpbmcgdGhlIHNhbWUgdG8gRG9jLg0KPiA+DQo+ID4gLS0tVHJpbG9rIFNvbmkN
Cj4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
