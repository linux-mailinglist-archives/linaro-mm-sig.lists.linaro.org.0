Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id rerLB7p6rWmw3QEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 08 Mar 2026 14:33:46 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF2B2306CC
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 08 Mar 2026 14:33:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B7934016D
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  8 Mar 2026 13:33:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A47A3F7EC
	for <linaro-mm-sig@lists.linaro.org>; Sun,  8 Mar 2026 13:33:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: "Elizabeth Servideo" <lindseypaqed90@gmail.com>
To: linaro-mm-sig@lists.linaro.org
Date: Sun, 08 Mar 2026 13:33:38 -0000
Message-ID: <177297681836.3590699.6459305883904831829@lists.linaro.org>
In-Reply-To: <20260224103100.GI10607@unreal>
References: <20260224103100.GI10607@unreal>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: EL7MKC5JJKSGLYC6WX5DGRCSVDR2RRPV
X-Message-ID-Hash: EL7MKC5JJKSGLYC6WX5DGRCSVDR2RRPV
X-MailFrom: lindseypaqed90@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EL7MKC5JJKSGLYC6WX5DGRCSVDR2RRPV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 8DF2B2306CC
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
	NEURAL_HAM(-0.00)[-0.930];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,outlook.com:email]
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
aWxhYmxlLg0KQ29udGFjdDogc2hhZG93cm9vdDQ3QG91dGxvb2suY29tDQpXaGF0c0FwcDogKzEg
4oCqKDUzMCkgNDI1LTYwNTLigKwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
