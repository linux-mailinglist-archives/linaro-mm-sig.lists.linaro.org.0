Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BU0LBzT+mmFTAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 07:35:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F744D64D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 07:35:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A080F3F95A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 05:35:22 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 47AC03F7E4
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 05:35:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fbw6StrJ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 819084022B;
	Wed,  6 May 2026 05:35:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72FDAC2BCB8;
	Wed,  6 May 2026 05:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778045718;
	bh=68FaERwoP8OX0MneSqPhcOfZCZKy6fGPcZy0kqgTRIg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fbw6StrJozjSOh/RfsDaKDjrUqTTKMeviPsHMsE7yDJsMstAK0fltNMQcmTMCowIq
	 H9MWLt+zPLyCR3yu1Qfr/aMXgCOE/+5tqWJYaYijMS48bwDBpvn9rbDzCuCMO4wG9L
	 +kSI8A5+2Xd/kGcjBKDJaSeKHgkCgrmj3WfRNsack+a8mxm1EzMAZ35fPxaviGTyxd
	 E+ySw6OHqf1uDrjUMLOogK7cSTeMcnIWqk7jpco2ecg1/u8Hhg0QrAn3qd20xvqm5r
	 HOn914KYUKbtZP3hs5VmCcpSTACAgcH9vxpGbvnddotXCj9DxSAAFgnaAOiAEDN8LX
	 se7h+6gl7vrAg==
Date: Wed, 6 May 2026 08:35:11 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <20260506053511.GG11063@unreal>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-5-mattev@meta.com>
 <20260501161915.75525c15@shazbot.org>
 <afhNeYS174EW7RYp@nvidia.com>
 <20260505104911.GB11063@unreal>
 <20260505085058.74c34290@shazbot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260505085058.74c34290@shazbot.org>
X-Spamd-Bar: ---
Message-ID-Hash: GKEBBIQEW5HRTHFYL5O45A6T5PDJNVT6
X-Message-ID-Hash: GKEBBIQEW5HRTHFYL5O45A6T5PDJNVT6
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Matt Evans <mattev@meta.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] vfio/pci: Convert BAR mmap() to use a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GKEBBIQEW5HRTHFYL5O45A6T5PDJNVT6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 39F744D64D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]

T24gVHVlLCBNYXkgMDUsIDIwMjYgYXQgMDg6NTA6NThBTSAtMDYwMCwgQWxleCBXaWxsaWFtc29u
IHdyb3RlOg0KPiBPbiBUdWUsIDUgTWF5IDIwMjYgMTM6NDk6MTEgKzAzMDANCj4gTGVvbiBSb21h
bm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+IHdyb3RlOg0KPiANCj4gPiBPbiBNb24sIE1heSAwNCwg
MjAyNiBhdCAwNDo0MDo0MUFNIC0wMzAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6DQo+ID4gPiBP
biBGcmksIE1heSAwMSwgMjAyNiBhdCAwNDoxOToxNVBNIC0wNjAwLCBBbGV4IFdpbGxpYW1zb24g
d3JvdGU6DQo+ID4gPiAgIA0KPiA+ID4gPiBFeHBvcnRpbmcgZG1hLWJ1ZnMgZnJvbSB2ZmlvLXBj
aSBpcyBhIGZlYXR1cmUsIGJ1dCBtbWFwIG9mIE1NSU8gQkFScyBpcw0KPiA+ID4gPiBhIGxlZ2Fj
eSByZXF1aXJlbWVudC4gIFRoYXQgbGVnYWN5IHJlcXVpcmVtZW50IG5vdyBkZXBlbmRzIG9uDQo+
ID4gPiA+IFBDSV9QMlBETUEsIHdoaWNoIGRlcGVuZHMgb24gNjRCSVQgYW5kIFpPTkVfREVWSUNF
LiAgDQo+ID4gPiANCj4gPiA+IFRoYXQgc2hvdWxkIGJlIHNwbGl0IHVwIG5vdywgTGVvbiBtaXNz
ZWQgaXQgd2hlbiBoZSBhZGRlZCB0aGUgbmV3DQo+ID4gPiBBUElzIHRoYXQgZGlkbid0IHJlcXVp
cmUgWk9ORV9ERVZJQ0UuLiAgDQo+ID4gDQo+ID4gU29ycnksIHdoYXQgZGlkIEkgbWlzcyBoZXJl
PyAgDQo+ID4gVkZJT19ETUFCVUYgaXMgYW4gb3B0aW9uYWwgZmVhdHVyZSBhbmQgaXMgZW5hYmxl
ZCBvbmx5IHdoZW4gUDJQIHN1cHBvcnQgaXMgIA0KPiA+IGF2YWlsYWJsZS4gSXQgZG9lcyBub3Qg
YWZmZWN0IGxlZ2FjeSBzeXN0ZW1zIHdoZXJlIFAyUCBjYW5ub3QgYmUgZW5hYmxlZC4NCj4gDQo+
IElmIHdlIGxvb2sgYXQgdGhlIGxvbmcgdGVybSB2aWV3IG9mIG1vdmluZyBleGNsdXNpdmVseSB0
byBjZGV2L2lvbW11ZmQsDQo+IHdoZXJlIFZGSU9fRE1BQlVGIGJlY29tZXMgdGhlIG1lY2hhbmlz
bSBmb3IgaW1wbGVtZW50aW5nIFAyUCBETUENCj4gbWFwcGluZ3MsIFZGSU9fRE1BQlVGIG1heSBi
ZSBvcHRpb25hbCwgYnV0IGl0J3MgaGlnaGx5IGRlc2lyYWJsZSBmb3INCj4gbGVnYWN5IGNvbXBh
dGliaWxpdHkuICBUaGVyZSdzIGFuIGFyZ3VtZW50IHRob3VnaCB0aGF0IHByb3ZpZGluZyBQMlAN
Cj4gY29tcGF0aWJpbGl0eSBvbiBwbGF0Zm9ybXMgdGhhdCBzdXBwb3J0IFBDSV9QMlBETUEgaXMg
cHJvYmFibHkNCj4gc3VmZmljaWVudC4NCj4gDQo+IEhvd2V2ZXIsIGluIHByb3ZpZGluZyBtbWFw
IG9mIGRtYWJ1ZnMgYXMgYSBmZWF0dXJlLCB0aGlzIHNlcmllcyBpcw0KPiB3aXJpbmcgYWxsIG1t
YXBzIHRocm91Z2ggZG1hYnVmcyBhbmQgdGhlcmVmb3JlIHRoYXQgZGVwZW5kZW5jeSBiZWNvbWVz
DQo+IGZ1bmRhbWVudGFsIHRvIHRoZSB1c2Ugb2YgdmZpby1wY2kuICBUaHVzIHRoZSBkaXNjdXNz
aW9uIHdoZXRoZXIgdGhlDQo+IG5vdGVkIGNvbmZpZyByZXF1aXJlbWVudHMgY291bGQgYmUgbGlm
dGVkLiAgVGhhbmtzLA0KDQpSaWdodCwgdGhlcmUgd2FzIG5vIG5lZWQgdG8gcmVtb3ZlIFpPTkVf
REVWSUNFIHdoZW4gSSBhZGRlZCBteSBjb2RlLCBhbmQgSQ0KbGVmdCB0aGUgdGFzayBvZiBjbGVh
bmluZyBpdCBvdXQgb2YgaXNfcGNpX3AycGRtYV9wYWdlKCkgZm9yIGFub3RoZXIgZGF5Lg0KV2l0
aG91dCBaT05FX0RFVklDRSwgYWxsIHBhZ2VzIGFyZSB0cmVhdGVkIGFzIG5vbuKAkVAyUC4NCg0K
PiANCj4gQWxleA0KPiANCj4gUFMgLSBQbGVhc2UgYWxzbyB3ZWlnaCBpbiBvbiB0aGUgZG1hYnVm
IHVuZGVyZmxvd1sxXQ0KPiANCj4gWzFdaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYw
NTAxMTMxMjM2LjI3OGFjNDMxQHNoYXpib3Qub3JnLw0KDQp3aWxsIGRvLg0KDQpUaGFua3MNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
