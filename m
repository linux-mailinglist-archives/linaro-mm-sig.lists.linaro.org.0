Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LmlF/Zi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCCF431566
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7884404DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:31:32 +0000 (UTC)
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	by lists.linaro.org (Postfix) with ESMTPS id 703003F7D7
	for <linaro-mm-sig@lists.linaro.org>; Sat, 28 Mar 2026 10:26:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=zohomail.com header.s=zm2022 header.b=EPIijCGa;
	dmarc=pass (policy=reject) header.from=zohomail.com;
	spf=pass (lists.linaro.org: domain of ming.li@zohomail.com designates 136.143.188.94 as permitted sender) smtp.mailfrom=ming.li@zohomail.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1774693608; cv=none;
	d=zohomail.com; s=zohoarc;
	b=bd04Drm1ka91hLk83I4D41jzfa767UAObfBF+bgB0pm95rWCjbPL2/DFkPuFA+coBHJrQyCa6jIMdvC0T0XzV0kEGlZvc+Xw8RFkkb3910SQMeFI/fvATlC1whTR0S/cLPRccPyCm/bk0eIeENLcztL9csTokh7InXq4jrq221M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1774693608; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=ciHXL84GeJtK0HQxAPRAp8r6EO6wmx7etoGI66aZ/DQ=;
	b=jXyRBdCeckauGWZOhTnJY4FNpcf0usn0Tf7aLAEIm/ue7RWGssafHHUeiHPP/3yr5hTfbDGuEZANaIGe237526YwRmEjTN8224KcrHn+f+pFMseRoQuHY/sBpu5APNVHNsm19nt66wYtNbg07EK7f6Uxn2KiEJ262yLfKwFkAso=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=ming.li@zohomail.com;
	dmarc=pass header.from=<ming.li@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774693608;
	s=zm2022; d=zohomail.com; i=ming.li@zohomail.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=ciHXL84GeJtK0HQxAPRAp8r6EO6wmx7etoGI66aZ/DQ=;
	b=EPIijCGaDgTIF2sDnEETkEuCZaUXdCUl+m9ZaNuAyQVjAc1dwXK4Di/ShBMRobuu
	G6MtHCXgfMqSr1r6cXjpKl91Bi4x0D5bJv2os/FKCZ/Qdem4plxtPvhfI19XoHvQKSD
	Zf+iZSsMYKutNqTBIy65sqoa1nfyf8cQUadzwCWg=
Received: by mx.zohomail.com with SMTPS id 1774693606783318.50737463196515;
	Sat, 28 Mar 2026 03:26:46 -0700 (PDT)
Message-ID: <bb78ce6f-603a-40eb-ac47-bf5ea06a6cc8@zohomail.com>
Date: Sat, 28 Mar 2026 18:26:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
References: <20260328-fix_dma_fence_chain_find_seqno-v1-1-3847c8ef0292@zohomail.com>
From: Li Ming <ming.li@zohomail.com>
In-Reply-To: <20260328-fix_dma_fence_chain_find_seqno-v1-1-3847c8ef0292@zohomail.com>
Feedback-ID: rr08011228714be64caeac2580a28d597b0000a576b4265144d1ed4868621b53a46b30201aa250b3b8ad53604b:zu08011227f075a096bbe2bfeb18edbcf10000903c53a81a69f96adcc687cb99671445ba47013c463356e5a6:rf0801122d6651f41a29a921138dcc181e0000fe57356feb5c4cb23fd16d37eb8f4ccd68fbd2b68db835a285f86371b5fa97:ZohoMail
X-ZohoMailClient: External
X-Spamd-Bar: ----
X-MailFrom: ming.li@zohomail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UWWOKAINIEQOT4TM2XU5GHWVZZQ6MT2J
X-Message-ID-Hash: UWWOKAINIEQOT4TM2XU5GHWVZZQ6MT2J
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:55 +0000
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND] dma-fence: Dereference correct dma_fence in dma_fence_chain_find_seqno()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UWWOKAINIEQOT4TM2XU5GHWVZZQ6MT2J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [6.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[zohomail.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	DATE_IN_PAST(1.00)[559];
	R_DKIM_REJECT(1.00)[zohomail.com:s=zm2022];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[zohomail.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.791];
	FROM_NEQ_ENVFROM(0.00)[ming.li@zohomail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: DBCCF431566
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

DQrlnKggMjAyNi8zLzI4IDAyOjQ3LCBMaSBNaW5nIOWGmemBkzoNCj4gZG1hX2ZlbmNlX2NoYWlu
X2ZpbmRfc2Vxbm8oKSB1c2VzIGRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaCgpIHRvIHdhbGsgYQ0K
PiBnaXZlbiBkbWFfZmVuY2VfY2hhaW4uIGRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaCgpIGFsd2F5
cyBob2xkcyBhDQo+IHJlZmVyZW5jZSBmb3IgdGhlIGN1cnJlbnQgZmVuY2UgZHVyaW5nIGl0ZXJh
dGlvbi4gVGhlIHJlZmVyZW5jZSBtdXN0DQo+IGJlIGRyb3BwZWQgYWZ0ZXIgYnJlYWtpbmcgb3V0
LiBJbnN0ZWFkIG9mIGRlcmVmZXJlbmNpbmcgdGhlIGxhc3QgZmVuY2UNCj4gYXMgaW50ZW5kZWQs
IGRtYV9mZW5jZV9jaGFpbl9maW5kX3NlcW5vKCkgaW5jb3JyZWN0bHkgZGVyZWZlcmVuY2VzIHRo
ZQ0KPiBmaXJzdCBmZW5jZSBpbiB0aGUgY2hhaW4uDQo+DQo+IEZpeGVzOiA3YmY2MGM1MmUwOTMg
KCJkbWEtYnVmOiBhZGQgbmV3IGRtYV9mZW5jZV9jaGFpbiBjb250YWluZXIgdjciKQ0KPiBTaWdu
ZWQtb2ZmLWJ5OiBMaSBNaW5nIDxtaW5nLmxpQHpvaG9tYWlsLmNvbT4NCj4gLS0tDQo+ICAgZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jIHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1j
aGFpbi5jDQo+IGluZGV4IGE4YTkwYWNmNGYzNC4uNzFmYTE3M2FlZjEzIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCj4gKysrIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS1jaGFpbi5jDQo+IEBAIC0xMDMsNyArMTAzLDcgQEAgaW50IGRtYV9mZW5j
ZV9jaGFpbl9maW5kX3NlcW5vKHN0cnVjdCBkbWFfZmVuY2UgKipwZmVuY2UsIHVpbnQ2NF90IHNl
cW5vKQ0KPiAgIAkJICAgIHRvX2RtYV9mZW5jZV9jaGFpbigqcGZlbmNlKS0+cHJldl9zZXFubyA8
IHNlcW5vKQ0KPiAgIAkJCWJyZWFrOw0KPiAgIAl9DQo+IC0JZG1hX2ZlbmNlX3B1dCgmY2hhaW4t
PmJhc2UpOw0KPiArCWRtYV9mZW5jZV9wdXQoKnBmZW5jZSk7DQo+ICAgDQo+ICAgCXJldHVybiAw
Ow0KPiAgIH0NCj4NCj4gLS0tDQo+IGJhc2UtY29tbWl0OiBjMzY5Mjk5ODk1YTU5MWQ5Njc0NWQ2
NDkyZDQ4ODgyNTliMDA0YTllDQo+IGNoYW5nZS1pZDogMjAyNjAzMjctZml4X2RtYV9mZW5jZV9j
aGFpbl9maW5kX3NlcW5vLTdhZGVhNjRlZmUwMQ0KPg0KPiBCZXN0IHJlZ2FyZHMsDQoNCkFmdGVy
IGxvb2tpbmcgZGVlcGVyIGludG8gdGhpcyBpc3N1ZSwgaXQgaXMgbm90IGEgYnVnLg0KDQpTZWVt
cyBsaWtlIHRoaXMgZnVuY3Rpb24gcmVxdWlyZXMgdGhhdCBjYWxsZXIgbmVlZHMgdG8gaG9sZCB0
aGUgDQpyZWZlcmVuY2Ugb2YgdGhlIGdpdmUgZmVuY2UgYmVmb3JlIGNhbGxpbmcgaXQuIFdoZW4g
cGZlbmNlIGNoYW5nZWQsIG5lZWQgDQp0byB0cmFuc2ZlciB0aGUgcmVmZXJlbmNlIGZyb20gdGhl
IG9yaWdpbmFsIGZlbmNlIHRvIHRoZSBuZXcgZmVuY2UuIFRoYXQgDQppcyB3aHkgaXQgcmVsZWFz
ZXMgdGhlIHJlZmVyZW5jZSBmb3IgdGhlIG9yaWdpbmFsIGZlbmNlIGluIHRoZSBlbmQuDQoNClNv
cnJ5IHRvIG1ha2UgdGhpcyBub2lzZS4NCg0KDQpNaW5nDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
