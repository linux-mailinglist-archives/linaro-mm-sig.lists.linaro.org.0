Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAb3JU3j62liSgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 23:40:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7535A4638BB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 23:40:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83B40406A9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 21:40:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6F4640691
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 21:40:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: "Alex Morgan" <alexmorgan987765@gmail.com>
To: linaro-mm-sig@lists.linaro.org
Date: Fri, 24 Apr 2026 21:40:20 -0000
Message-ID: <177706682081.795305.3488257193575874337@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: UNR4J7Q2VR65O7UDXVFGLIDOBTUZ2USY
X-Message-ID-Hash: UNR4J7Q2VR65O7UDXVFGLIDOBTUZ2USY
X-MailFrom: alexmorgan987765@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] (no subject)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UNR4J7Q2VR65O7UDXVFGLIDOBTUZ2USY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 7535A4638BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[alexmorgan987765@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.949];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]

SG93IENhbiBJIFJlY292ZXIgTXkgTG9zdCBDcnlwdG9jdXJyZW5jeSwgSGlyZSBHaG9zdCBNeXN0
ZXJ5IFJlY292ZXJ5IEhhY2tlcg0KDQpHaG9zdCBNeXN0ZXJ5IFJlY292ZXJ5IEhhY2tlciBkZWxp
dmVyZWQgYW4gZXhjZWxsZW50IGV4cGVyaWVuY2Ugd2hlbiBJIG5lZWRlZCBoZWxwIHJlY292ZXJp
bmcgc29tZXRoaW5nIEkgdGhvdWdodCB3YXMgcGVybWFuZW50bHkgbG9zdC4gRnJvbSB0aGUgc3Rh
cnQsIHRoZWlyIGNvbW11bmljYXRpb24gd2FzIGNsZWFyLCBwcm9mZXNzaW9uYWwsIGFuZCByZWFz
c3VyaW5nLCB3aGljaCBpbW1lZGlhdGVseSBtYWRlIG1lIGZlZWwgbW9yZSBjb25maWRlbnQgYWJv
dXQgdGhlIHByb2Nlc3MuIFRoZXkgdG9vayB0aGUgdGltZSB0byB1bmRlcnN0YW5kIG15IHNpdHVh
dGlvbiBhbmQgZXhwbGFpbmVkIGVhY2ggc3RlcCBpbiBhIHdheSB0aGF0IHdhcyBob25lc3QgYW5k
IGVhc3kgdG8gZm9sbG93Lg0KV2hhdCBzdG9vZCBvdXQgbW9zdCB3YXMgdGhlaXIgY29uc2lzdGVu
Y3kgYW5kIGRlZGljYXRpb24uIEkgd2FzIGtlcHQgaW5mb3JtZWQgdGhyb3VnaG91dCwgYW5kIHRo
ZXkgcmVtYWluZWQgcGF0aWVudCBhbmQgcmVzcG9uc2l2ZSB3aGVuZXZlciBJIGhhZCBxdWVzdGlv
bnMuIFRoZWlyIGV4cGVydGlzZSB3YXMgZXZpZGVudCBpbiB0aGUgd2F5IHRoZXkgaGFuZGxlZCBl
dmVyeXRoaW5nIGNhcmVmdWxseSBhbmQgZWZmaWNpZW50bHksIHdpdGhvdXQgY3JlYXRpbmcgZmFs
c2UgZXhwZWN0YXRpb25zLlRoZSBvdXRjb21lIGV4Y2VlZGVkIHdoYXQgSSBoYWQgaG9wZWQgZm9y
LiBUaGV5IHdlcmUgYWJsZSB0byBzdWNjZXNzZnVsbHkgcmVzb2x2ZSBteSBpc3N1ZSwgd2hpY2gg
YnJvdWdodCBtZSBhIGdyZWF0IHNlbnNlIG9mIHJlbGllZi4gSXTigJlzIG5vdCBvZnRlbiB5b3Ug
Y29tZSBhY3Jvc3MgYSBzZXJ2aWNlIHRoYXQgY29tYmluZXMgcHJvZmVzc2lvbmFsaXNtLCB0cmFu
c3BhcmVuY3ksIGFuZCByZXN1bHRzIHNvIHdlbGwuDQpJIHdvdWxkIHN0cm9uZ2x5IHJlY29tbWVu
ZCBHaG9zdCBNeXN0ZXJ5IFJlY292ZXJ5IEhhY2tlciB0byBhbnlvbmUgbG9va2luZyBmb3IgcmVs
aWFibGUgcmVjb3Zlcnkgc3VwcG9ydC4gVGhlaXIgY29tbWl0bWVudCB0byBoZWxwaW5nIGNsaWVu
dHMgYW5kIGRlbGl2ZXJpbmcgcmVhbCByZXN1bHRzIHRydWx5IHNldHMgdGhlbSBhcGFydC4NCg0K
RW1haWwgYWRkcmVzczogIHN1cHBvcnRAIGdob3N0bXlzdGVyeXJlY292ZXJ5LiBjIG9tDQoNCldo
YXRzQXBwIG9uICgrNDQpIDc0ODAgMDYxNzY1DQoNCldlYnNpdGU7IGdob3N0bXlzdGVyeXJlY292
ZXJ5LiBjIG9tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
