Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0B26Eb9zxmkCKgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 13:10:39 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E84343FEA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 13:10:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F16C6402D3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 12:10:37 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	by lists.linaro.org (Postfix) with ESMTPS id DFE623F8E9
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 12:10:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=G7p00Q18;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260327083354euoutp01d13827bcecbe378cac83b45da75fa1dc~gpbFtnJON2486124861euoutp01b
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 08:33:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260327083354euoutp01d13827bcecbe378cac83b45da75fa1dc~gpbFtnJON2486124861euoutp01b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1774600434;
	bh=pWW1Ogs/ZdOFg15O/X78oW0BF6OEjLh6WF/GCRVR2Fw=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=G7p00Q18xvenjeqyltH6mDGbmCjnbLmz2xt4xjc/0A15A2MNdYsE6qRtkqkjdJgEE
	 gWLsqVg5bPrhnWqa+Hz2FaO3aXds6+sd5qyVYDllRfVqvjnvDbjdP5yqsbpaHYcsUZ
	 6jzaUAxPti8cVzpoBKsCBq/O+Zm/0wll3crPN9rM=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20260327083354eucas1p2e649b550ecb5424fabb9ad899e26277a~gpbFbCkiN0771907719eucas1p2w;
	Fri, 27 Mar 2026 08:33:54 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260327083352eusmtip241284ad9eaeb3b7cf68e4df2189c2fd0~gpbD2FF0k0181601816eusmtip2K;
	Fri, 27 Mar 2026 08:33:52 +0000 (GMT)
Message-ID: <2cffa109-5b88-488f-9dfb-8709164dd9f8@samsung.com>
Date: Fri, 27 Mar 2026 09:33:51 +0100
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Maxime Ripard <mripard@kernel.org>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260320-cryptic-industrious-otter-5b696a@houat>
X-CMS-MailID: 20260327083354eucas1p2e649b550ecb5424fabb9ad899e26277a
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260303101320eucas1p2eb4fea499364ef20825d0d73585a2555
X-EPHeader: CA
X-CMS-RootMailID: 20260303101320eucas1p2eb4fea499364ef20825d0d73585a2555
References: <CGME20260303101320eucas1p2eb4fea499364ef20825d0d73585a2555@eucas1p2.samsung.com>
	<20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org>
	<c60a3f30-6fc3-41ab-835a-2fdd887e18fd@samsung.com>
	<20260320-cryptic-industrious-otter-5b696a@houat>
X-Spamd-Bar: -----
Message-ID-Hash: HTAINXUAQKDMJBUUWMBHDCPD3TRSF7EG
X-Message-ID-Hash: HTAINXUAQKDMJBUUWMBHDCPD3TRSF7EG
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/8] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HTAINXUAQKDMJBUUWMBHDCPD3TRSF7EG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.70 / 15.00];
	R_DKIM_REJECT(1.00)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[samsung.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[samsung.com:-];
	NEURAL_SPAM(0.00)[0.883];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,samsung.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: E9E84343FEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMjAuMDMuMjAyNiAxNDowOSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4gT24gRnJpLCBNYXIg
MjAsIDIwMjYgYXQgMDE6MjQ6MThQTSArMDEwMCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToNCj4+
IE9uIDAzLjAzLjIwMjYgMTE6MTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+Pj4gVGhlIHJlY2Vu
dCBpbnRyb2R1Y3Rpb24gb2YgaGVhcHMgaW4gdGhlIG9wdGVlIGRyaXZlciBbMV0gbWFkZSBwb3Nz
aWJsZQ0KPj4+IHRoZSBjcmVhdGlvbiBvZiBoZWFwcyBhcyBtb2R1bGVzLg0KPj4+DQo+Pj4gSXQn
cyBnZW5lcmFsbHkgYSBnb29kIGlkZWEgaWYgcG9zc2libGUsIGluY2x1ZGluZyBmb3IgdGhlIGFs
cmVhZHkNCj4+PiBleGlzdGluZyBzeXN0ZW0gYW5kIENNQSBoZWFwcy4NCj4+Pg0KPj4+IFRoZSBz
eXN0ZW0gb25lIGlzIHByZXR0eSB0cml2aWFsLCB0aGUgQ01BIG9uZSBpcyBhIGJpdCBtb3JlIGlu
dm9sdmVkLA0KPj4+IGVzcGVjaWFsbHkgc2luY2Ugd2UgaGF2ZSBhIGNhbGwgZnJvbSBrZXJuZWwv
ZG1hL2NvbnRpZ3VvdXMuYyB0byB0aGUgQ01BDQo+Pj4gaGVhcCBjb2RlLiBUaGlzIHdhcyBzb2x2
ZWQgYnkgdHVybmluZyB0aGUgbG9naWMgYXJvdW5kIGFuZCBtYWtpbmcgdGhlDQo+Pj4gQ01BIGhl
YXAgY2FsbCBpbnRvIHRoZSBjb250aWd1b3VzIERNQSBjb2RlLg0KPj4+DQo+Pj4gTGV0IG1lIGtu
b3cgd2hhdCB5b3UgdGhpbmssDQo+Pj4gTWF4aW1lDQo+Pj4NCj4+PiAxOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNTA5MTExMzUwMDcuMTI3NTgzMy00LWplbnMud2lrbGFu
ZGVyQGxpbmFyby5vcmcvDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxt
cmlwYXJkQGtlcm5lbC5vcmc+DQo+PiBJJ20gb2theSB3aXRoIHRoZSBrZXJuZWwvZG1hL2NvbnRp
Z3VvdXMuYyBjaGFuZ2VzLiBJIG9ubHkgd29uZGVyIGhvdyB0bw0KPj4gcHJvcGVybHkgbWVyZ2Ug
dGhlbS4gVGhlcmUgYXJlIG90aGVyIHBlbmRpbmcgY2hhbmdlcyB0bw0KPj4ga2VybmVsL2RtYS9j
b250aWd1b3VzLmMgZmlsZSBbMV0gYW5kIGlmIHRoZXkgZmluYWxseSBnZXQgcmV2aWV3ZWQsIEkN
Cj4+IHdvdWxkIGxpa2UgdG8gbWVyZ2XCoGJvdGggdmlhIGRtYS1tYXBwaW5nLWZvci1uZXh0IHRy
ZWUuIFRoZW4gSSBjYW4NCj4+IHByb3ZpZGUgYSBzdGFibGUgYnJhbmNoIGZvciBtZXJnaW5nIHRo
ZSByZW1haW5pbmcgZG1hLWJ1ZiBwYXRoZXMuIElzIGl0DQo+PiBva2F5IGZvciBZb3U/DQo+IFRo
YXQgc291bmRzIHJlYXNvbmFibGUgdG8gbWUNCg0KSSd2ZSBhcHBsaWVkIHBhdGNoZXMgMS01IHRv
IG15IGRtYS1tYXBwaW5nLWZvci1uZXh0IGJyYW5jaCBhbmQgcmVzb2x2ZWQgDQpjb25mbGljdHMg
aW4gdGhlIG1lbnRpb25lZCBrZXJuZWwvZG1hL2NvbnRpZ3VvdXMuYyBmaWxlLg0KDQpIZXJlIGlz
IGEgc3RhYmxlIGJyYW5jaCB0byBhcHBseSByZW1haW5pbmcgZG1hLWJ1ZiBoZWFwcyBwYXRjaGVz
Og0KDQpodHRwczovL3dlYi5naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
bXN6eXByb3dza2kvbGludXguZ2l0L2xvZy8/aD1kbWEtY29udGlnLWZvci03LjEtbW9kdWxlcy1w
cmVwDQoNCkJlc3QgcmVnYXJkcw0KLS0gDQpNYXJlayBTenlwcm93c2tpLCBQaEQNClNhbXN1bmcg
UiZEIEluc3RpdHV0ZSBQb2xhbmQNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
