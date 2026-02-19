Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKvDMdyCl2nozQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 22:38:36 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5476C162E26
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 22:38:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58F55402B0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 21:38:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6C33401E3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 21:38:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: tadefundingfirm@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Thu, 19 Feb 2026 21:38:23 -0000
Message-ID: <177153710387.4005861.10885945496997698575@lists.linaro.org>
In-Reply-To: <177126332417.291601.6951552237939284191@lists.linaro.org>
References: <177126332417.291601.6951552237939284191@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: SURYOVWIXTDCZTEJCR2EVBJR7EOVZWWD
X-Message-ID-Hash: SURYOVWIXTDCZTEJCR2EVBJR7EOVZWWD
X-MailFrom: tadefundingfirm@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/13] dt-bindings: serial: fsl-linflexuart: add clock input properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SURYOVWIXTDCZTEJCR2EVBJR7EOVZWWD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tadefundingfirm@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
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
	NEURAL_HAM(-0.00)[-0.967];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,lists.linaro.org:mid]
X-Rspamd-Queue-Id: 5476C162E26
X-Rspamd-Action: no action

SE9XIEkgUkVDT1ZFUiBNWSAkMjUwLDAwMCBGUk9NIENSWVBUTyBTQ0FNIFVTQS4NCg0KSeKAmW0g
b25lIG9mIHRoZSBmb3J0dW5hdGUgaW5kaXZpZHVhbHMgd2hvIHZlbnR1cmVkIGludG8gdGhlIGNy
eXB0b2N1cnJlbmN5IG1hcmtldCB3aXRoIGhvcGVzIG9mIGJ1aWxkaW5nIGEgbmVzdCBlZ2cgZm9y
IHJldGlyZW1lbnQuIFNhZGx5LCBJIGludmVzdGVkIGluIGEgZnJhdWR1bGVudCBwbGF0Zm9ybSB0
aGF0IGVuZGVkIHVwIHNjYW1taW5nIG1lIG91dCBvZiBhcHByb3hpbWF0ZWx5ICQyNTAsMDAwLCBu
b3QgaW5jbHVkaW5nIHRoZSBwcm9taXNlZCBwcm9maXRzLiBJIGxvc3QgZXZlcnl0aGluZywgaW5j
bHVkaW5nIGZ1bmRzIGJvcnJvd2VkIGZyb20gZnJpZW5kcyBpbiBteSBpbnZlc3RtZW50IHF1ZXN0
LiBKdXN0IHdoZW4gSSB0aG91Z2h0IGFsbCB3YXMgbG9zdCwgSSBkaXNjb3ZlcmVkIHRoZSBjcnlw
dG9jdXJyZW5jeSByZWNvdmVyeSBleHBlcnRzIGF0IEpBWVdFQiBSRUNPVkVSWSBFWFBFUlQuIFRo
ZXkgc3VjY2Vzc2Z1bGx5IGhlbHBlZCBtZSByZWNvdmVyIG15IGZ1bmRzIHdpdGhpbiA3MiBob3Vy
cywgYW5kIEkgd2FzIGV2ZW4gYWJsZSB0byB0cmFjayBkb3duIHRoZSBzY2FtbWVycy4gSSBhbSBp
bmNyZWRpYmx5IHRoYW5rZnVsIGZvciB0aGVpciBhc3Npc3RhbmNlIGFuZCBzdHJvbmdseSByZWNv
bW1lbmQgdGhlaXIgc2VydmljZXMgdG8gYW55b25lIGZhY2luZyBhIHNpbWlsYXIgc2l0dWF0aW9u
Lg0KDQpSZWFjaCBvdXQgdG8gdGhlbSB0b2RheSBhbmQgdHVybiB5b3VyIHNpdHVhdGlvbiBhcm91
bmQhDQoNCkNPTlRBQ1Q6IEpBWVdFQiBSRUNPVkVSWSBFWFBFUlQNCldoYXRzQXBwOiArMSAoMzA1
KSA0NTItOTA3NQ0KRW1haWw6IGpheS53ZWJiLmhhY2tAbWFpbC5jb20NCldlYnNpdGU6aHR0cHM6
Ly9qYXl3ZWJiaGFjay53aXhzaXRlLmNvbS9qYXl3ZWItcmVjb3Zlcnktc3BlYw0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
