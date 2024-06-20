Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BFE910DFD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 19:05:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E0744486B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 17:05:32 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id D63633EF2D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jun 2024 17:05:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=sxwbJctm;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 72D67621FB;
	Thu, 20 Jun 2024 17:05:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84F37C32786;
	Thu, 20 Jun 2024 17:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718903129;
	bh=dEOA48ijsQW6/PEVP2tDx2FHmbFwZ3VWxLbybt5q2Gc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sxwbJctmVpQc2cHDrejJwmRLLgiN4/IqvoqHWnjbNTTcfGeWUf120kJOYRM0+b/D8
	 aYzVnvBpcjwsiNJV4vwKU9T8UzfZJ5xbjZkFWtqqapxNJUmbfPiX+lLvLBZWNM/XR4
	 snmtxbaocXFVtbJ+wNaqTSF5Sdyz3Md94Atsi2ClD2lTyWs9feke0eA4lFS2aI3HdU
	 mx7y84Itr0OR06oAcI9xOGeb4MvgRsYtuib57M/REcT0vztdoLGGSnXGUb2oXg7yXP
	 DhTbM1NgGaHRgGhJpo+O1EJWqrwL1HsY60AQWEPtbJk1br8M75OGeFegWRgan6dRgg
	 l+/18t4+nEiew==
Date: Thu, 20 Jun 2024 18:05:22 +0100
From: Lee Jones <lee@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Message-ID: <20240620170522.GU3029315@google.com>
References: <202406191014.9JAzwRV6-lkp@intel.com>
 <c25aab0d-48f6-4754-b514-d6caf8d51fd1@web.de>
 <ZnRUSaHJhz7XLcKa@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZnRUSaHJhz7XLcKa@matsya>
X-Rspamd-Queue-Id: D63633EF2D
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[web.de,intel.com,crapouillou.net,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,kernel.org,metafoo.de,linaro.org,lists.linux.dev,lwn.net,inria.fr,infradead.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: I7OLKEMGCFQDJNW4F2MFWG67OSHYFVN7
X-Message-ID-Hash: I7OLKEMGCFQDJNW4F2MFWG67OSHYFVN7
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Markus Elfring <Markus.Elfring@web.de>, lkp@intel.com, Paul Cercueil <paul@crapouillou.net>, Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-iio@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Julia Lawall <julia.lawall@inria.fr>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I7OLKEMGCFQDJNW4F2MFWG67OSHYFVN7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyMCBKdW4gMjAyNCwgVmlub2QgS291bCB3cm90ZToNCg0KPiBPbiAyMC0wNi0yNCwg
MTI6NDUsIE1hcmt1cyBFbGZyaW5nIHdyb3RlOg0KPiA+IOKApg0KPiA+ID4gQWxsIGVycm9ycyAo
bmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pOg0KPiA+ID4NCj4gPiA+Pj4gZHJpdmVycy9paW8vaW5k
dXN0cmlhbGlvLWJ1ZmZlci5jOjE3MTU6MzogZXJyb3I6IGNhbm5vdCBqdW1wIGZyb20gdGhpcyBn
b3RvIHN0YXRlbWVudCB0byBpdHMgbGFiZWwNCj4gPiA+ICAgICAxNzE1IHwgICAgICAgICAgICAg
ICAgIGdvdG8gZXJyX2RtYWJ1Zl91bm1hcF9hdHRhY2htZW50Ow0KPiA+IOKApg0KPiA+IA0KPiA+
IFdoaWNoIHNvZnR3YXJlIGRlc2lnbiBvcHRpb25zIHdvdWxkIHlvdSBsaWtlIHRvIHRyeSBvdXQg
bmV4dA0KPiA+IHNvIHRoYXQgc3VjaCBhIHF1ZXN0aW9uYWJsZSBjb21waWxhdGlvbiBlcnJvciBt
ZXNzYWdlIHdpbGwgYmUgYXZvaWRlZCBmaW5hbGx5Pw0KPiANCj4gVGhlIG9uZSB3aGVyZSBhbGwg
ZW1haWxzIGZyb20gTWFya3VzIGdvIHRvIGRldi9udWxsDQoNClBsYXkgbmljZSBwbGVhc2UuDQoN
CiAgRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2NvZGUtb2YtY29uZHVjdC5yc3QNCg0KLS0gDQpMZWUg
Sm9uZXMgW+adjueQvOaWr10NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
