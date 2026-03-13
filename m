Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEyJMzPns2nZcwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Mar 2026 11:30:11 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 621CE281724
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Mar 2026 11:30:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E98B1402FC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Mar 2026 10:30:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7083E40305
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Mar 2026 10:30:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: morenojess71@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Fri, 13 Mar 2026 10:30:03 -0000
Message-ID: <177339780345.1878380.7415559686530175157@lists.linaro.org>
In-Reply-To: <20260308101948.GO12611@unreal>
References: <20260308101948.GO12611@unreal>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: NBSTVHDW7PEBH6KXXSIBMHDFG7ZQZVT3
X-Message-ID-Hash: NBSTVHDW7PEBH6KXXSIBMHDFG7ZQZVT3
X-MailFrom: morenojess71@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NBSTVHDW7PEBH6KXXSIBMHDFG7ZQZVT3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morenojess71@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_NO_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.871];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:mid]
X-Rspamd-Queue-Id: 621CE281724
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TG9va2luZyBmb3IgYSBmcmVzaCBzdGFydCBhZnRlciBmaW5hbmNpYWwgY2hhbGxlbmdlcz8gWW91
4oCZcmUgbm90IGFsb25lIGFuZCByZWJ1aWxkaW5nIHlvdXIgY3JlZGl0IGlzIHBvc3NpYmxlIHdp
dGggdGhlIHJpZ2h0IHN1cHBvcnQuIFRoZWlyIHNlcnZpY2UgaXMgZGVzaWduZWQgdG8gaGVscCB5
b3UgdGFrZSBjb250cm9sIG9mIHlvdXIgZmluYW5jaWFsIGZ1dHVyZSBieSBwcm92aWRpbmcgdG9v
bHMsIGd1aWRhbmNlLCBhbmQgaW5zaWdodHMgdGhhdCBlbXBvd2VyIHlvdSB0byBtYWtlIGluZm9y
bWVkIGRlY2lzaW9ucyBhbmQgc2V0IHJlYWxpc3RpYyBjcmVkaXQgZ29hbHMuIFdpdGggcGF0aWVu
Y2UsIHRoZSByaWdodCBzdHJhdGVneSwgYW5kIG9uZ29pbmcgc3VwcG9ydCwgeW91IGNhbiBzdGFy
dCBtb3ZpbmcgdG93YXJkIGZpbmFuY2lhbCBpbmRlcGVuZGVuY2Ugb25lIHN0ZXAgYXQgYSB0aW1l
LiBTb21ldGltZXMgdGhlIGZpcnN0IHN0ZXAgaXMgc2ltcGx5IGxlYXJuaW5nIHRoYXQgaGVscCBp
cyBhdmFpbGFibGUuIEZvciBleGFtcGxlLCBJIG9uY2UgY2FtZSBhY3Jvc3MgYSBkaXNjdXNzaW9u
IHdoZXJlIHNvbWVvbmUgbWVudGlvbmVkIGhvd8KgWEFQIENyZWRpdCBTb2x1dGlvbsKgaGVscGVk
IGltcHJvdmUgdGhlaXIgY3JlZGl0IHNpdHVhdGlvbi4gU3RvcmllcyBsaWtlIHRoYXQgcmVtaW5k
IHVzIHRoYXQgc29sdXRpb25zIGV4aXN0IGFuZCB0aGF0IHBlb3BsZSBjYW4gcmVidWlsZCBhbmQg
bW92ZSBmb3J3YXJkIGFmdGVyIGRpZmZpY3VsdCBmaW5hbmNpYWwgbW9tZW50cy4gSWYgeW914oCZ
cmUgcmVhZHkgdG8gYmVnaW4geW91ciBvd24gY3JlZGl0IGpvdXJuZXkswqB4YXBjcmVkaXRzb2x1
dGlvbiBhdCBnbWFpbCBjb20gwqBMZXQgWEFQIGdldCB5b3Ugc3RhcnRlZCB3aXRoIGZpeGluZyB5
b3VyIGNyZWRpdCB0b2RheS4jQ3JlZGl0UmVjb3ZlcnkgI05ld0JlZ2lubmluZ3MgI0NyZWRpdEpv
dXJuZXkgI0ZpbmFuY2lhbFJlc2V0UmVzdWx0cyBtYXkgdmFyeSBiYXNlZCBvbiBpbmRpdmlkdWFs
IGNyZWRpdCBoaXN0b3J5Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
