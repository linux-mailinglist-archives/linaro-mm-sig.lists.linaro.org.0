Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kdKdBlw4T2phcQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 07:57:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9057972CED2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 07:57:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=samsung.com header.s=mail20170921 header.b=YG6NrUKP;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=samsung.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 703DE40AD5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2026 05:57:46 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id 9BF5C404BE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 05:56:51 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260709055650euoutp025a12a0c6f53f1597c081fde8840d680e~AiXozFXMg0222702227euoutp02U;
	Thu,  9 Jul 2026 05:56:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260709055650euoutp025a12a0c6f53f1597c081fde8840d680e~AiXozFXMg0222702227euoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1783576610;
	bh=0zn1dtIX1zk4qdGW1lihLluLd2XJtl/1EEzMzw8sXVc=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=YG6NrUKPsBwqBvMGbjU5xWHF+nu3KR5nOX3x74qWn9o7ulsLODQrO0+6rPDBK/gpN
	 1aWd1EwavrpW47dURG/rZPG1Z8lkEaDbZyuKetZ8FW+4NfqXLobtjcACnZ9jgKwdIK
	 6ZKTeq786aUMJpm83Q1TIX+j/ImTlbLRjVWgi5yM=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20260709055650eucas1p215ba97832f0fed53c1c322ecf192ff45~AiXoi0Jv90198801988eucas1p2U;
	Thu,  9 Jul 2026 05:56:50 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260709055646eusmtip2b9b69a8f7af4b283ece88d085252d254~AiXlAfqwT0885208852eusmtip2U;
	Thu,  9 Jul 2026 05:56:46 +0000 (GMT)
Message-ID: <83e5e74d-7106-4e14-9d10-56438372f6a3@samsung.com>
Date: Thu, 9 Jul 2026 07:56:45 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: "David Hildenbrand (Arm)" <david@kernel.org>, Thierry Reding
	<thierry.reding@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
	Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jonathan
	Hunter <jonathanh@nvidia.com>, Mikko Perttunen <mperttunen@nvidia.com>, Yury
	Norov <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Russell King <linux@armlinux.org.uk>, Alexander Gordeev
	<agordeev@linux.ibm.com>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
	Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle
	<svens@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, Lorenzo
	Stoakes <ljs@kernel.org>, "Liam R. Howlett" <liam@infradead.org>, Vlastimil
	Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>, Suren
	Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Robin
	Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey
	<Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier"
	<tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
	Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers
	<mathieu.desnoyers@efficios.com>, Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <e212caac-6c30-448a-9e10-32fff8b842f6@kernel.org>
X-CMS-MailID: 20260709055650eucas1p215ba97832f0fed53c1c322ecf192ff45
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260701160902eucas1p1214af933ba0f54b85630a3a4e5a4689c
X-EPHeader: CA
X-CMS-RootMailID: 20260701160902eucas1p1214af933ba0f54b85630a3a4e5a4689c
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
	<CGME20260701160902eucas1p1214af933ba0f54b85630a3a4e5a4689c@eucas1p1.samsung.com>
	<20260701-tegra-vpr-v3-6-d80f7b871bb4@nvidia.com>
	<3f47aeab-33b1-4966-a5ce-5d6d5261e0e2@samsung.com>
	<e212caac-6c30-448a-9e10-32fff8b842f6@kernel.org>
X-Spamd-Bar: -------
Message-ID-Hash: XPOROVNRR6RI2CJEUL7ZKZWS4CESDQK5
X-Message-ID-Hash: XPOROVNRR6RI2CJEUL7ZKZWS4CESDQK5
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org, linux-mm@kvack.org, iommu@lists.linux.dev, linaro-mm-sig@lists.linaro.org, linux-trace-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 06/11] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XPOROVNRR6RI2CJEUL7ZKZWS4CESDQK5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.20 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[samsung.com:s=mail20170921];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[samsung.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:david@kernel.org,m:thierry.reding@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonathanh@nvidia.com,m:mperttunen@nvidia.com,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:linux@armlinux.org.uk,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:hca@linux.ibm.com,m:gor@linux.ibm.com,m:borntraeger@linux.ibm.com,m:svens@linux.ibm.com,m:akpm@linux-foundation.org,m:ljs@kernel.org,m:liam@infradead.org,m:vbabka@kernel.org,m:rppt@kernel.org,m:surenb@google.com,m:mhocko@suse.com,m:robin.murphy@arm.com,m:sumit.semwal@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:christian.koenig@amd.com,m:rostedt@goodmis.org,m:mhiramat@kernel.org,m:mathieu.desnoyers@efficios.com,m:catalin.marinas@arm.com,m:will@kernel.org,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:
 linux-arm-kernel@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-mm@kvack.org,m:iommu@lists.linux.dev,m:linaro-mm-sig@lists.linaro.org,m:linux-trace-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:yurynorov@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nvidia.com,gmail.com,rasmusvillemoes.dk,armlinux.org.uk,linux.ibm.com,linux-foundation.org,infradead.org,google.com,suse.com,arm.com,linaro.org,collabora.com,amd.com,goodmis.org,efficios.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[46];
	FORGED_SENDER(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9057972CED2

T24gMDguMDcuMjAyNiAxMDozNSwgRGF2aWQgSGlsZGVuYnJhbmQgKEFybSkgd3JvdGU6DQo+IE9u
IDcvNy8yNiAxMjowMiwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToNCj4+IE9uIDAxLjA3LjIwMjYg
MTg6MDgsIFRoaWVycnkgUmVkaW5nIHdyb3RlOg0KPj4+IEZyb206IFRoaWVycnkgUmVkaW5nIDx0
cmVkaW5nQG52aWRpYS5jb20+DQo+Pj4NCj4+PiBUaGVyZSBpcyBubyB0ZWNobmljYWwgcmVhc29u
IHdoeSB0aGVyZSBzaG91bGQgYmUgYSBsaW1pdGVkIG51bWJlciBvZiBDTUENCj4+PiByZWdpb25z
LCBzbyBleHRyYWN0IHNvbWUgY29kZSBpbnRvIGhlbHBlcnMgYW5kIHVzZSB0aGVtIHRvIGNyZWF0
ZSBleHRyYQ0KPj4+IGZ1bmN0aW9ucyAoY21hX2NyZWF0ZSgpIGFuZCBjbWFfZnJlZSgpKSB0aGF0
IGFsbG93IGNyZWF0aW5nIGFuZCBmcmVlaW5nLA0KPj4+IHJlc3BlY3RpdmVseSwgQ01BIHJlZ2lv
bnMgZHluYW1pY2FsbHkgYXQgcnVudGltZS4NCj4+DQo+PiBXZWxsLCB0aGUgdGVjaG5pY2FsIHJl
YXNvbiBmb3Igbm90IGNyZWF0aW5nIGNtYSByZWdpb25zIGR5bmFtaWNhbGx5IGF0DQo+PiBydW50
aW1lIGlzIHRoYXQgb24gc29tZSBhcmNoaXRlY3R1cmVzIChsaWtlIDMyYml0IEFSTSkgdGhlIGVh
cmx5IGZpeHVwDQo+PiBmb3IgdGhlIHJlZ2lvbiBpcyBuZWVkZWQgdG8gbWFrZSBpdCBmdW5jdGlv
bmFsIGZvciBETUEuDQo+IENhbiB5b3UgcG9pbnQgbWUgYXQgdGhlIGNvZGUgdGhhdCBkb2VzIHRo
YXQ/IFRoYW5rcyENCkNoZWNrIGRtYV9jb250aWd1b3VzX2Vhcmx5X2ZpeHVwKCkgYW5kIGRtYV9j
b250aWd1b3VzX3JlbWFwKCkgaW7CoA0KYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcuYy4gVGhvc2Ug
ZnVuY3Rpb25zIGVuc3VyZXMgdGhhdCB0aGUgQ1BVIG1hcHBpbmdzIGZvcg0KdGhlIENNQSByZXNl
cnZlZCByZWdpb24gaW4gbGluZWFyIG1hcCBhcmUgcmVtYXBwZWQgd2l0aCA0ayBwYWdlcyBpbnN0
ZWFkDQpvZiB0aGUgMU0gc2VjdGlvbnMsIHNvIGxhdGVyLCBpdCB3aWxsIGJlwqBwb3NzaWJsZSB0
byBhbHRlciB0aGUgbWFwcGluZ3MgYW5kDQpjaGFuZ2UgdGhlbSB0byBjb2hlcmVudCB3aGVuIG5l
ZWRlZCAoYWx0ZXJpbmcgMU0gc2VjdGlvbnMgaXMgbm90IHBvc3NpYmxlLA0KYmVjYXVzZSBlYWNo
IHByb2Nlc3MgaGFzIGl0J3Mgb3duIGxldmVsLTEgYXJyYXkgZXZlbiBmb3IgdGhlIGtlcm5lbCBs
aW5lYXINCm1hcHBpbmcpLg0KDQoNCg0KSG93ZXZlciwgaW4gdGhlIHVzZSBjYXNlIGluIHRoaXMg
cGF0Y2hzZXQgdGhlIHJlc2VydmVkIHJlZ2lvbiBpcyBvbmx5IHNoYXJlZA0Kd2l0aCBidWRkeSBh
bGxvY2F0b3IgYnkgdXNpbmcgdGhlIENNQSBpbmZyYXN0cnVjdHVyZSwgbm90IHJlZ2lzdGVyZWQg
dG8gdGhlDQpyZWd1bGFyIERNQS1tYXBwaW5nIEFQSSwgc28gaXQgd291bGQgd29yayBmaW5lLiBJ
J20gbm90IGNvbnZpbmNlZCB0aGF0IHRoaXMNCmlzIHRoZSByaWdodCBBUEkgdG8gdXNlIGZvciB0
aGlzIHRob3VnaC4NCg0KQmVzdCByZWdhcmRzDQotLSANCk1hcmVrIFN6eXByb3dza2ksIFBoRA0K
U2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
