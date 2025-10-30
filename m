Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKUeLOX34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 498C540FDD7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55DFF3F7EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:53:24 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id BBA183F7AB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 11:17:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=rfCkCj1a;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4cy1mg3LK0z9spB;
	Thu, 30 Oct 2025 12:17:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1761823059; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=udQdI8kZ9HNR1T3YelubgV+z74XJhbul0irKljvsfkw=;
	b=rfCkCj1aKP3gD9fOKRtgCEZm254WNjvqqyYCD1808//A8YhflHFiiKP/HJOpq9yq7jNCyk
	hj7d/rUdifE+Wvb1dA6BhWHH++w6Rp/9RQv02E7vyrnCJQD87ql2VfxV8iNEz7ryyPJEB6
	CdVBDsuHksvbjEZ7QsbTjPA3Fue3uZqqbuNtCh5dKSZNtEZFqiEOS22+l+Dw4Cb4MutmvD
	CpP519yREgx3PQSsNMBmJY1IV9tKJY8+akQB8/CXqqMjO/kZfBn4ZqOTBcmch6fx+WE+oG
	+fZ3LqaV8rbTc8Al9CqQZW/zaCGJvIMlEJqLF+8Da7WYsH5KdeRDJLj7qoC9mg==
Message-ID: <fb2881006f843bd85dd02948c4467c81086effc8.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich
 <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>,  Christian
 =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
 <sumit.semwal@linaro.org>
Date: Thu, 30 Oct 2025 12:17:31 +0100
In-Reply-To: <20251029091103.1159-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251029091103.1159-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: uxkngmmbxwy4o97th7ytiop6e8nj697p
X-MBO-RS-ID: ca1f3193d85e48195cb
X-Spamd-Bar: --
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MIQ7NU5JBHLGMLJ7VZUPSXPL256LQ6ZO
X-Message-ID-Hash: MIQ7NU5JBHLGMLJ7VZUPSXPL256LQ6ZO
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:36 +0000
CC: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v1] drm/sched: fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MIQ7NU5JBHLGMLJ7VZUPSXPL256LQ6ZO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[4035];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,intel.com,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.943];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,gitlab.freedesktop.org:url,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 498C540FDD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI1LTEwLTI5IGF0IDEwOjExICswMTAwLCBQaWVycmUtRXJpYyBQZWxsb3V4LVBy
YXllciB3cm90ZToNCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8t
L2lzc3Vlcy8xMzkwOMKgcG9pbnRlZCBvdXQNCg0KVGhpcyBsaW5rIHNob3VsZCBiZSBtb3ZlZCB0
byB0aGUgdGFnIHNlY3Rpb24gYXQgdGhlIGJvdHRvbSBhdCBhIENsb3NlczoNCnRhZy4gT3B0aW9u
YWxseSBhIFJlcG9ydGVkLWJ5OiwgdG9vLg0KDQo+IGEgcG9zc2libGUgZGVhZGxvY2s6DQo+IA0K
PiBbIDEyMzEuNjExMDMxXcKgIFBvc3NpYmxlIGludGVycnVwdCB1bnNhZmUgbG9ja2luZyBzY2Vu
YXJpbzoNCj4gDQo+IFsgMTIzMS42MTEwMzNdwqDCoMKgwqDCoMKgwqAgQ1BVMMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENQVTENCj4gWyAxMjMxLjYxMTAzNF3CoMKgwqDC
oMKgwqDCoCAtLS0twqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLS0tLQ0K
PiBbIDEyMzEuNjExMDM1XcKgwqAgbG9jaygmeGEtPnhhX2xvY2sjMTcpOw0KPiBbIDEyMzEuNjEx
MDM4XcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGxvY2FsX2lycV9kaXNhYmxlKCk7DQo+IFsgMTIzMS42MTEwMzldwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9j
aygmZmVuY2UtPmxvY2spOw0KPiBbIDEyMzEuNjExMDQxXcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvY2soJnhhLT54YV9sb2Nr
IzE3KTsNCj4gWyAxMjMxLjYxMTA0NF3CoMKgIDxJbnRlcnJ1cHQ+DQo+IFsgMTIzMS42MTEwNDVd
wqDCoMKgwqAgbG9jaygmZmVuY2UtPmxvY2spOw0KPiBbIDEyMzEuNjExMDQ3XQ0KPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKioqIERFQURMT0NLICoqKg0KPiANCg0KVGhlIGNvbW1p
dCBtZXNzYWdlIGlzIGxhY2tpbmcgYW4gZXhwbGFuYXRpb24gYXMgdG8gX2hvd18gYW5kIF93aGVu
XyB0aGUNCmRlYWRsb2NrIGNvbWVzIHRvIGJlLiBUaGF0J3MgYSBwcmVyZXF1aXNpdGUgZm9yIHVu
ZGVyc3RhbmRpbmcgd2h5IHRoZQ0KYmVsb3cgaXMgdGhlIHByb3BlciBmaXggYW5kIHNvbHV0aW9u
Lg0KDQpUaGUgaXNzdWUgc2VlbXMgdG8gYmUgdGhhdCB5b3UgY2Fubm90IHBlcmZvcm0gY2VydGFp
biB0YXNrcyBmcm9tIHdpdGhpbg0KdGhhdCB3b3JrIGl0ZW0/DQoNCj4gTXkgaW5pdGlhbCBmaXgg
d2FzIHRvIHJlcGxhY2UgeGFfZXJhc2UgYnkgeGFfZXJhc2VfaXJxLCBidXQgQ2hyaXN0aWFuDQo+
IHBvaW50ZWQgb3V0IHRoYXQgY2FsbGluZyBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrIGZyb20gYSBj
YWxsYmFjayBjYW4NCj4gYWxzbyBkZWFkbG9jayBpZiB0aGUgc2lnbmFsbGluZyBmZW5jZSBhbmQg
dGhlIG9uZSBwYXNzZWQgdG8NCj4gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayBzaGFyZSB0aGUgc2Ft
ZSBsb2NrLg0KPiANCj4gVG8gZml4IGJvdGggaXNzdWVzLCB0aGUgY29kZSBpdGVyYXRpbmcgb24g
ZGVwZW5kZW5jaWVzIGFuZCByZS1hcm1pbmcgdGhlbQ0KPiBpcyBtb3ZlZCBvdXQgdG8gZHJtX3Nj
aGVkX2VudGl0eV9raWxsX2pvYnNfd29yay4NCj4gDQo+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBQaWVy
cmUtRXJpYyBQZWxsb3V4LVByYXllciA8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1kLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYyB8
IDM0ICsrKysrKysrKysrKystLS0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNl
cnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9lbnRpdHkuYw0KPiBpbmRleCBjOGU5NDlmNGE1NjguLmZlMTc0YTQ4NTdiZSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jDQo+IEBAIC0xNzMs
MjYgKzE3MywxNSBAQCBpbnQgZHJtX3NjaGVkX2VudGl0eV9lcnJvcihzdHJ1Y3QgZHJtX3NjaGVk
X2VudGl0eSAqZW50aXR5KQ0KPiDCoH0NCj4gwqBFWFBPUlRfU1lNQk9MKGRybV9zY2hlZF9lbnRp
dHlfZXJyb3IpOw0KPiDCoA0KPiArc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pv
YnNfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZiwNCj4gKwkJCQkJwqAgc3RydWN0IGRtYV9mZW5jZV9j
YiAqY2IpOw0KPiArDQo+IMKgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNf
d29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykNCj4gwqB7DQo+IMKgCXN0cnVjdCBkcm1fc2No
ZWRfam9iICpqb2IgPSBjb250YWluZXJfb2Yod3JrLCB0eXBlb2YoKmpvYiksIHdvcmspOw0KPiAt
DQo+IC0JZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZChqb2ItPnNfZmVuY2UsIE5VTEwpOw0KPiAt
CWRybV9zY2hlZF9mZW5jZV9maW5pc2hlZChqb2ItPnNfZmVuY2UsIC1FU1JDSCk7DQo+IC0JV0FS
Tl9PTihqb2ItPnNfZmVuY2UtPnBhcmVudCk7DQo+IC0Jam9iLT5zY2hlZC0+b3BzLT5mcmVlX2pv
Yihqb2IpOw0KDQpDYW4gZnJlZV9qb2IoKSByZWFsbHkgbm90IGJlIGNhbGxlZCBmcm9tIHdpdGhp
biB3b3JrIGl0ZW0gY29udGV4dD8NCg0KDQpQLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
