Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Te79JZOJrWnL4AEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 08 Mar 2026 15:37:07 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DD3230B84
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 08 Mar 2026 15:37:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D30F1401C7
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  8 Mar 2026 14:37:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E36D3ED23
	for <linaro-mm-sig@lists.linaro.org>; Sun,  8 Mar 2026 14:36:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: "Elizabeth Servideo" <lindseypaqed90@gmail.com>
To: linaro-mm-sig@lists.linaro.org
Date: Sun, 08 Mar 2026 14:36:59 -0000
Message-ID: <177298061951.3642948.127561411756844842@lists.linaro.org>
In-Reply-To: <20260308101948.GO12611@unreal>
References: <20260308101948.GO12611@unreal>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: WBAN4BRX3YAWKEVSG6NQE3RLNTBOGNIQ
X-Message-ID-Hash: WBAN4BRX3YAWKEVSG6NQE3RLNTBOGNIQ
X-MailFrom: lindseypaqed90@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WBAN4BRX3YAWKEVSG6NQE3RLNTBOGNIQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 18DD3230B84
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[lindseypaqed90@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.938];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:url,lists.linaro.org:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Action: no action

PkZyb20gTG9zcyB0byBIb3BlOiBNeSBQYXRoIHRvIFJlY292ZXJ5DQoNCkkgd2FudCB0byBzaGFy
ZSBteSBzdG9yeSB0byBoZWxwIG90aGVycyB3aG8gbWlnaHQgYmUgZ29pbmcgdGhyb3VnaCB0aGUg
c2FtZSB0aGluZy4gSSBsb3N0ICQzNjAsODcwIGluIGEgY3J5cHRvIHNjYW0gYW5kIHRob3VnaHQg
SSB3b3VsZCBuZXZlciBnZXQgbXkgbW9uZXkgYmFjay4gSSB3YXMgb3ZlcndoZWxtZWQsIGJ1dCB0
aGVuIEkgZm91bmQgaGVscCBmcm9tIFRyZWsgVGVjaCBDb3JwLg0KVGhhbmtzIHRvIHRoZWlyIGV4
cGVydGlzZSwgSSByZWNvdmVyZWQgbXkgc3RvbGVuIGZ1bmRzLiBUaGlzIG5vdCBvbmx5IHNhdmVk
IG15IGZpbmFuY2VzIGJ1dCBhbHNvIGdhdmUgbWUgaG9wZSBhbmQgY29uZmlkZW5jZSB0byBtb3Zl
IGZvcndhcmQuDQpNeSBzdG9yeSBzaG93cyB0aGF0IGV2ZW4gYWZ0ZXIgYSBiaWcgbG9zcywgd2l0
aCBkZXRlcm1pbmF0aW9uIGFuZCB0aGUgcmlnaHQgaGVscCwgcmVjb3ZlcnkgaXMgcG9zc2libGUu
IElmIHlvdSdyZSBzdHJ1Z2dsaW5nLCBkb27igJl0IGdpdmUgdXAg4oCUIHN1cHBvcnQgaXMgYXZh
aWxhYmxlLg0KQ29udGFjdDogc2hhZG93cm9vdDQ3IChAKSBvdXRsb29rLmNvbQ0KV2hhdHNBcHA6
ICsxIOKAqig1MzApIDQyNS02MDUy4oCsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
