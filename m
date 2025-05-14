Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5FAAB6D06
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 15:44:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1689F4559F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 13:44:20 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id 6CD0C42B42
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 13:44:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=nwSfB6JZ;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250514134405euoutp0287e53069acd95a977cc3a29d065f6672~-aKaTx36x2338323383euoutp02n
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 13:44:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250514134405euoutp0287e53069acd95a977cc3a29d065f6672~-aKaTx36x2338323383euoutp02n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1747230245;
	bh=J+BWsOIAHUAdR95Qq/3XrIREWdn2xQyWomnghKsV3Hw=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=nwSfB6JZzEyJOsz+PFmh3/c/+zTavip1a4h335ssd5wORt0cVllye5D96+rzcQWP1
	 XGBYuomZOTm/0+5sZBjG1p9+sU5GltBYvRXe8a0e21xxlszhhXh/UPZ2clQNyi6mpX
	 r8CAM2WfwIMezGzH0gZvr519Epw5CiVkTv5ynt4o=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20250514134404eucas1p1f96b6d77101e2564268326e8806d2abd~-aKaEMTiz0729107291eucas1p1n;
	Wed, 14 May 2025 13:44:04 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250514134403eusmtip2e8de4e0e3be32be5d7f675ad67919809~-aKZMIJwc0929609296eusmtip2G;
	Wed, 14 May 2025 13:44:03 +0000 (GMT)
Message-ID: <c90bf515-9050-4ed7-b733-28b14536b913@samsung.com>
Date: Wed, 14 May 2025 15:44:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <7a6475cb-4ebe-46a3-92a2-f29fbc8e5e41@amd.com>
X-CMS-MailID: 20250514134404eucas1p1f96b6d77101e2564268326e8806d2abd
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250507160922eucas1p11bd044bb458626dc0004bd2fd83605c0
X-EPHeader: CA
X-CMS-RootMailID: 20250507160922eucas1p11bd044bb458626dc0004bd2fd83605c0
References: <20250507160913.2084079-1-m.szyprowski@samsung.com>
	<CGME20250507160922eucas1p11bd044bb458626dc0004bd2fd83605c0@eucas1p1.samsung.com>
	<20250507160913.2084079-3-m.szyprowski@samsung.com>
	<7a6475cb-4ebe-46a3-92a2-f29fbc8e5e41@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6CD0C42B42
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DWL_DNSWL_LOW(-1.00)[samsung.com:dkim];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[210.118.77.12:from];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.12:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6619, ipnet:210.118.76.0/23, country:KR];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[samsung.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 7OP3QSM47VKUK26X725HGKPFEVPDYFUD
X-Message-ID-Hash: 7OP3QSM47VKUK26X725HGKPFEVPDYFUD
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gurchetan Singh <gurchetansingh@chromium.org>, Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/3] udmabuf: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7OP3QSM47VKUK26X725HGKPFEVPDYFUD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

T24gMDguMDUuMjAyNSAxMTo1NywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gNS83LzI1
IDE4OjA5LCBNYXJlayBTenlwcm93c2tpIHdyb3RlOg0KPj4gVXNlIGNvbW1vbiB3cmFwcGVycyBv
cGVyYXRpbmcgZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBvYmplY3RzIHRvDQo+PiBm
aXggaW5jb3JyZWN0IHVzZSBvZiBzY2F0dGVybGlzdHMgc3luYyBjYWxscy4gZG1hX3N5bmNfc2df
Zm9yXyooKQ0KPj4gZnVuY3Rpb25zIGhhdmUgdG8gYmUgY2FsbGVkIHdpdGggdGhlIG51bWJlciBv
ZiBlbGVtZW50cyBvcmlnaW5hbGx5IHBhc3NlZA0KPj4gdG8gZG1hX21hcF9zZ18qKCkgZnVuY3Rp
b24sIG5vdCB0aGUgb25lIHJldHVybmVkIGluIHNndGFibGUncyBuZW50cy4NCj4+DQo+PiBGaXhl
czogMWZmZTA5NTkwMTIxICgidWRtYWJ1ZjogZml4IGRtYS1idWYgY3B1IGFjY2VzcyIpDQo+PiBD
Qzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJv
d3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPg0KPj4gQWNrZWQtYnk6IFZpdmVrIEthc2ly
ZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4NCj4gU2hvdWxkIEkgcHVzaCB0
aGlzIG9uZSB0byBkcm0tbWlzYy1maXhlcyBmb3IgdXBzdHJlYW1pbmc/DQoNClllcywgcGxlYXNl
LiBUaGUgb3RoZXIgMiBwYXRjaGVzIGhhdmUgYmVlbiB0YWtlbiBieSB0aGUgbWVkaWEgbWFpbnRh
aW5lcnMuDQoNCkJlc3QgcmVnYXJkcw0KLS0gDQpNYXJlayBTenlwcm93c2tpLCBQaEQNClNhbXN1
bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
