Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE89A9E534
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Apr 2025 01:59:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FD6A454DB
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 27 Apr 2025 23:59:37 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 0C96144767
	for <linaro-mm-sig@lists.linaro.org>; Sun, 27 Apr 2025 23:59:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gVjBze3i;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=sashal@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3109D44D6B;
	Sun, 27 Apr 2025 23:59:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2464C4CEE3;
	Sun, 27 Apr 2025 23:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745798363;
	bh=nKi5Y2SiC5tgA1MVYV4fNEhrtxgNgfPSqVe2MnMmmSo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gVjBze3irjBqAqcHoP+FTN6a5j06A3tosXjkGZSyBiN6CN2m/ZfJ98yZZXimUQKFg
	 l7/f6EtFP9t2EZyVJx3o86fnmvkkSdZ1fESaG7ALfukpnS6lt9W6HLNYLbWwrvc9Xn
	 uDGhybUUVbVS7k+FtnJU2rh0Qdd1XOtPz4Jx+Wj3xzR3KxhFfiFIt7+7LWbRodctSz
	 m0joEaurwkqTJVel6bisQuLb+hif08oqDIeETVCtzOdjbIUv8rV2nGBapbmxmHM7Gu
	 Qb5AM7wq3Y15K56jPrt3cQLxldRrteYILgeqGM1D3Ien8CGamssyZnRkFaHmapDFQC
	 0juqFNYdmY6cg==
Date: Sun, 27 Apr 2025 19:59:21 -0400
From: Sasha Levin <sashal@kernel.org>
To: Alex Deucher <alexdeucher@gmail.com>
Message-ID: <aA7E2ZKr_5rOpmWM@lappy>
References: <20250414132729.679254-1-sashal@kernel.org>
 <20250414132729.679254-15-sashal@kernel.org>
 <CADnq5_OyrpJL3fnbyiueyddkNZ2B-uRO9pyrRVqBTeY5AnepYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADnq5_OyrpJL3fnbyiueyddkNZ2B-uRO9pyrRVqBTeY5AnepYw@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0C96144767
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[172.234.252.31:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:20940, ipnet:172.232.0.0/13, country:NL];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: X5AAJCQQRAPHMVZV2IXQ5HX2XG77Z7AU
X-Message-ID-Hash: X5AAJCQQRAPHMVZV2IXQ5HX2XG77Z7AU
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, stable@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Simona Vetter <simona.vetter@ffwll.ch>, Felix Kuehling <felix.kuehling@amd.com>, Pak Nin Lui <pak.lui@amd.com>, Alex Deucher <alexander.deucher@amd.com>, simona@ffwll.ch, sumit.semwal@linaro.org, Yunxiang.Li@amd.com, tvrtko.ursulin@igalia.com, matthew.auld@intel.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH AUTOSEL 6.13 15/34] drm/amdgpu: allow pinning DMA-bufs into VRAM if all importers can do P2P
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X5AAJCQQRAPHMVZV2IXQ5HX2XG77Z7AU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gTW9uLCBBcHIgMTQsIDIwMjUgYXQgMDk6NDg6MTBBTSAtMDQwMCwgQWxleCBEZXVjaGVyIHdy
b3RlOg0KPk9uIE1vbiwgQXByIDE0LCAyMDI1IGF0IDk6MjjigK9BTSBTYXNoYSBMZXZpbiA8c2Fz
aGFsQGtlcm5lbC5vcmc+IHdyb3RlOg0KPj4NCj4+IEZyb206IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+DQo+PiBbIFVwc3RyZWFtIGNvbW1pdCBmNWU3ZmFi
ZDFmNWM2NWIyZTA3N2VmY2RiMTE4Y2ZhNjdlYWU3MzExIF0NCj4+DQo+PiBUcnkgcGlubmluZyBp
bnRvIFZSQU0gdG8gYWxsb3cgUDJQIHdpdGggUkRNQSBOSUNzIHdpdGhvdXQgT0RQDQo+PiBzdXBw
b3J0IGlmIGFsbCBhdHRhY2htZW50cyBjYW4gZG8gUDJQLiBJZiBhbnkgYXR0YWNobWVudCBjYW4n
dCBkbw0KPj4gUDJQIGp1c3QgcGluIGludG8gR1RUIGluc3RlYWQuDQo+Pg0KPj4gQWNrZWQtYnk6
IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYS52ZXR0ZXJAZmZ3bGwuY2g+DQo+PiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiBTaWduZWQt
b2ZmLWJ5OiBGZWxpeCBLdWVobGluZyA8ZmVsaXgua3VlaGxpbmdAYW1kLmNvbT4NCj4+IFJldmll
d2VkLWJ5OiBGZWxpeCBLdWVobGluZyA8ZmVsaXgua3VlaGxpbmdAYW1kLmNvbT4NCj4+IFRlc3Rl
ZC1ieTogUGFrIE5pbiBMdWkgPHBhay5sdWlAYW1kLmNvbT4NCj4+IENjOiBTaW1vbmEgVmV0dGVy
IDxzaW1vbmEudmV0dGVyQGZmd2xsLmNoPg0KPj4gU2lnbmVkLW9mZi1ieTogQWxleCBEZXVjaGVy
IDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2
aW4gPHNhc2hhbEBrZXJuZWwub3JnPg0KPg0KPlRoaXMgc2hvdWxkIG5vdCBnbyB0byBzdGFibGUu
ICBJdCBkZXBlbmRzIG9uIGRtZW0gY2dyb3Vwcy4NCg0KSSdsbCBkcm9wIGl0Lg0KDQotLSANClRo
YW5rcywNClNhc2hhDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
