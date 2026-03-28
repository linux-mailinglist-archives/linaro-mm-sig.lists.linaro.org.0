Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kyg4KYaax2kEZwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 28 Mar 2026 10:08:22 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC2134DE34
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 28 Mar 2026 10:08:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B49FC4044B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 28 Mar 2026 09:08:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AB273F6F0
	for <linaro-mm-sig@lists.linaro.org>; Sat, 28 Mar 2026 09:08:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: bluemona42@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Sat, 28 Mar 2026 09:08:13 -0000
Message-ID: <177468889303.1068574.4596174080293972449@lists.linaro.org>
In-Reply-To: <177126332417.291601.6951552237939284191@lists.linaro.org>
References: <177126332417.291601.6951552237939284191@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: 56M666GYJGRNZ4HG57AS5LG3T6DBGWAA
X-Message-ID-Hash: 56M666GYJGRNZ4HG57AS5LG3T6DBGWAA
X-MailFrom: bluemona42@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/13] dt-bindings: serial: fsl-linflexuart: add clock input properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/56M666GYJGRNZ4HG57AS5LG3T6DBGWAA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	INTRODUCTION(2.00)[];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[bluemona42@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.895];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:mid]
X-Rspamd-Queue-Id: 1DC2134DE34
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgTXkgbmFtZSBpcyBNb25hLiBJIGp1c3Qgd2FudCB0byBzaGFyZSBteSBleHBlcmllbmNlIHdp
dGggdGhlIHdvcmxkIG9uIGhvdyBJIGdvdCBteSBsb3ZlIGJhY2sgYW5kIHNhdmVkIG15IG1hcnJp
YWdl4oCmIEkgd2FzIG1hcnJpZWQgZm9yIDcgeWVhcnMgd2l0aCA0IGtpZHMgYW5kIHdlIGxpdmVk
IGhhcHBpbHkgdW50aWwgdGhpbmdzIHN0YXJ0ZWQgZ2V0dGluZyB1Z2x5IGFuZCB3ZSBoYWQgZmln
aHRzIGFuZCBhcmd1bWVudHMgYWxtb3N0IGV2ZXJ5IHRpbWXigKYgaXQgZ290IHdvcnNlIGF0IGEg
cG9pbnQgdGhhdCBoZSBmaWxlZCBmb3IgZGl2b3JjZeKApiBJIHRyaWVkIG15IGJlc3QgdG8gbWFr
ZSBoaW0gY2hhbmdlIGhpcyBtaW5kICYgc3RheSB3aXRoIG1lIGNhdXNlIEkgbG92ZWQgaGltIHdp
dGggYWxsIG15IGhlYXJ0IGFuZCBkaWRu4oCZdCB3YW50IHRvIGxvc2UgaGltIGJ1dCBldmVyeXRo
aW5nIGp1c3QgZGlkbuKAmXQgd29yayBvdXTigKYgaGUgbW92ZWQgb3V0IG9mIHRoZSBob3VzZSBh
bmQgc3RpbGwgd2VudCBhaGVhZCB0byBmaWxlIGZvciBkaXZvcmNl4oCmIEkgcGxlYWRlZCBhbmQg
dHJpZWQgZXZlcnl0aGluZyBidXQgc3RpbGwgbm90aGluZyB3b3JrZWQuIFRoZSBicmVha3Rocm91
Z2ggY2FtZSB3aGVuIHNvbWVvbmUgaW50cm9kdWNlZCBtZSB0byB0aGlzIHdvbmRlcmZ1bCwgZ3Jl
YXQgc3BlbGwgY2FzdGVyIERyIFp1bWEsIHdobyBldmVudHVhbGx5IGhlbHBlZCBtZSBvdXTigKYg
SSBoYXZlIG5ldmVyIGJlZW4gYSBmYW4gb2YgdGhpbmdzIGxpa2UgdGhpcyBidXQganVzdCBkZWNp
ZGVkIHRvIHRyeSByZWx1Y3RhbnRseSBjYXVzZSBJIHdhcyBkZXNwZXJhdGUgYW5kIGxlZnQgd2l0
aCBubyBjaG9pY2XigKYgSGUgZGlkIHNwZWNpYWwgcHJheWVycyBhbmQgY2FzdCBhIGxvdmUgc3Bl
bGwgb24gaGltLiBXaXRoaW4gMjRob3VycyBoZSBjYWxsZWQgbWUgYW5kIHdhcyBzb3JyeSBmb3Ig
YWxsIHRoZSBlbW90aW9uYWwgdHJhdW1hIGhlIGhhZCBjb3N0IG1lLCBoZSBtb3ZlZCBiYWNrIHRv
IHRoZSBob3VzZSBhbmQgd2UgY29udGludWUgdG8gbGl2ZSBoYXBwaWx5LCB0aGUga2lkcyBhcmUg
aGFwcHkgdG9vIGFuZCB3ZSBhcmUgZXhwZWN0aW5nIG91ciBmb3VydGggY2hpbGTigKYgSSBoYXZl
IGludHJvZHVjZWQgaGltIHRvIGEgbG90IG9mIGNvdXBsZXMgd2l0aCByZWxhdGlvbnNoaXAgcHJv
YmxlbXMgYWNyb3NzIHRoZSB3b3JsZCBhbmQgdGhleSBoYXZlIGhhZCBnb29kIG5ld3PigKYgSnVz
dCB0aG91Z2h0IEkgc2hvdWxkIHNoYXJlIG15IGV4cGVyaWVuY2UgY2F1c2UgSSBzdHJvbmdseSBi
ZWxpZXZlIHNvbWVvbmUgb3V0IHRoZXJlIG5lZWRzIGl04oCmIFlvdSBjYW4gY29udGFjdCBoaW0g
b24gc3Bpcml0dWFsaGVyYmFsaXN0aGVhbGluZ0BnbWFpbC5jb20gdmlzaXQgaHR0cHM6Ly9zcGly
aXR1YWx3b3JrLm1vemVsbG9zaXRlLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
