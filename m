Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F274911C6F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 09:09:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDB1C43C4F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 07:09:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 41CDC43BAF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 07:09:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lNq1eGwh;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B66D36243D;
	Fri, 21 Jun 2024 07:09:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93D8AC2BBFC;
	Fri, 21 Jun 2024 07:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718953754;
	bh=u0vhe0zqMs5Sy8rTYox/NGGE8oBJtjiHtJOPAUxZARU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lNq1eGwhTNeOpkK9YsjekhMnPYqCfAedSVRmRHNMbdf4aeB/9D+zs1CrdzzASh6C4
	 Maf7DhWqeLVEpF4KQEehVBKMm1cJoVh9EPYfS+yepq3tAEjsydKxiI4rtjYFzFLCuR
	 K4G7MpuUTZdEm6yo6puU+n7u/0RTXerFzKxf55Nsf5kairPX2eyXlOQi8bBhCAYjqc
	 X/twLc6wl8sQTLvX/olSZYVRPkvixcmITIyfJDSYgj16lS797Ip960DrepCfU7mH7Q
	 6MKx+CIt1g2fhTe1olIQIEbjsh0QvACjeCVEG6doqO9oc6g6olhnMMeO5Qjbw2BTHF
	 Qcz/Pt9DgHS/w==
Date: Fri, 21 Jun 2024 12:39:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lee Jones <lee@kernel.org>
Message-ID: <ZnUnFeum1Z2ahm9M@matsya>
References: <202406191014.9JAzwRV6-lkp@intel.com>
 <c25aab0d-48f6-4754-b514-d6caf8d51fd1@web.de>
 <ZnRUSaHJhz7XLcKa@matsya>
 <20240620170522.GU3029315@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240620170522.GU3029315@google.com>
X-Rspamd-Queue-Id: 41CDC43BAF
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_FAIL(0.00)[139.178.84.217:server fail];
	FREEMAIL_CC(0.00)[web.de,intel.com,crapouillou.net,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,kernel.org,metafoo.de,linaro.org,lists.linux.dev,lwn.net,inria.fr,infradead.org];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6LWCJO7THMF7GBL22U6VCI43BYVHVTTA
X-Message-ID-Hash: 6LWCJO7THMF7GBL22U6VCI43BYVHVTTA
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Markus Elfring <Markus.Elfring@web.de>, lkp@intel.com, Paul Cercueil <paul@crapouillou.net>, Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-iio@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Julia Lawall <julia.lawall@inria.fr>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6LWCJO7THMF7GBL22U6VCI43BYVHVTTA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjAtMDYtMjQsIDE4OjA1LCBMZWUgSm9uZXMgd3JvdGU6DQo+IE9uIFRodSwgMjAgSnVuIDIw
MjQsIFZpbm9kIEtvdWwgd3JvdGU6DQo+IA0KPiA+IE9uIDIwLTA2LTI0LCAxMjo0NSwgTWFya3Vz
IEVsZnJpbmcgd3JvdGU6DQo+ID4gPiDigKYNCj4gPiA+ID4gQWxsIGVycm9ycyAobmV3IG9uZXMg
cHJlZml4ZWQgYnkgPj4pOg0KPiA+ID4gPg0KPiA+ID4gPj4+IGRyaXZlcnMvaWlvL2luZHVzdHJp
YWxpby1idWZmZXIuYzoxNzE1OjM6IGVycm9yOiBjYW5ub3QganVtcCBmcm9tIHRoaXMgZ290byBz
dGF0ZW1lbnQgdG8gaXRzIGxhYmVsDQo+ID4gPiA+ICAgICAxNzE1IHwgICAgICAgICAgICAgICAg
IGdvdG8gZXJyX2RtYWJ1Zl91bm1hcF9hdHRhY2htZW50Ow0KPiA+ID4g4oCmDQo+ID4gPiANCj4g
PiA+IFdoaWNoIHNvZnR3YXJlIGRlc2lnbiBvcHRpb25zIHdvdWxkIHlvdSBsaWtlIHRvIHRyeSBv
dXQgbmV4dA0KPiA+ID4gc28gdGhhdCBzdWNoIGEgcXVlc3Rpb25hYmxlIGNvbXBpbGF0aW9uIGVy
cm9yIG1lc3NhZ2Ugd2lsbCBiZSBhdm9pZGVkIGZpbmFsbHk/DQo+ID4gDQo+ID4gVGhlIG9uZSB3
aGVyZSBhbGwgZW1haWxzIGZyb20gTWFya3VzIGdvIHRvIGRldi9udWxsDQo+IA0KPiBQbGF5IG5p
Y2UgcGxlYXNlLg0KDQpXb3VsZCBsb3ZlIHRvLi4uIGJ1dCBNYXJrdXMgaGFzIGJlZW4gcmVwZWF0
IG9mZmVuZGVyDQoNClNhZGx5LCBJIGFtIHlldCB0byBzZWUgYSBjb25zdHJ1Y3RpdmUgYXBwcm9h
Y2ggb3IgZXZlbiBiZXR0ZXIgYSBoZWxwZnVsDQpwYXRjaCB3aGljaCBpbXByb3ZlIHNvbWV0aGlu
ZywgcmF0aGVyIHRoYW4gdmFndWUgc3VnZ2VzdGlvbnMgb24gdGhlIGxpc3QNCg0KLS0gDQp+Vmlu
b2QNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
