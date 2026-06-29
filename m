Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LN4DLcLcQWrGvAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 04:47:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A016D58E8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 04:47:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED8C440A9E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 02:47:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC9F5401CE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 02:47:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: "oliver kell" <kelloliver638@gmail.com>
To: linaro-mm-sig@lists.linaro.org
Date: Mon, 29 Jun 2026 02:47:21 -0000
Message-ID: <178270124170.3612493.12434901077800339426@lists.linaro.org>
In-Reply-To: <178056787686.2506507.15516572297901486466@lists.linaro.org>
References: <178056787686.2506507.15516572297901486466@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: VDV44KRX5L4YNMKOWE7DFAMTE43QZT5A
X-Message-ID-Hash: VDV44KRX5L4YNMKOWE7DFAMTE43QZT5A
X-MailFrom: kelloliver638@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Shred Some Slopes: Getting the Hang of Snow Rider 3D
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VDV44KRX5L4YNMKOWE7DFAMTE43QZT5A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kelloliver638@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kelloliver638@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[allassignmenthelper.com:url,lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36A016D58E8

UGF5IHNvbWVvbmUgdG8gdGFrZSBteSBvbmxpbmUgY2xhc3MgZm9yIG1lIGlzIGEgcGhyYXNlIG9m
dGVuIHNlYXJjaGVkIGJ5IHN0dWRlbnRzIGZhY2luZyBkZW1hbmRpbmcgc2NoZWR1bGVzLCB3b3Jr
IGNvbW1pdG1lbnRzLCBvciBwZXJzb25hbCBjaGFsbGVuZ2VzLiBJdCByZWZlcnMgdG8gdGhlIHBy
YWN0aWNlIG9mIGhpcmluZyBhbm90aGVyIGluZGl2aWR1YWwgdG8gY29tcGxldGUgb25saW5lIGNv
dXJzZXdvcmssIHBhcnRpY2lwYXRlIGluIGRpc2N1c3Npb25zLCBvciB0YWtlIGFzc2Vzc21lbnRz
IG9uIGEgc3R1ZGVudOKAmXMgYmVoYWxmLiBXaGlsZSB0aGlzIG9wdGlvbiBtYXkgYXBwZWFyIGNv
bnZlbmllbnQsIGl0IGNhbiByYWlzZSBjb25jZXJucyByZWxhdGVkIHRvIGFjYWRlbWljIGludGVn
cml0eSwgaW5zdGl0dXRpb25hbCBwb2xpY2llcywgYW5kIGxlYXJuaW5nIG91dGNvbWVzLiBNYW55
IGVkdWNhdGlvbmFsIGluc3RpdHV0aW9ucyBwcm9oaWJpdCBzdWNoIGFycmFuZ2VtZW50cyBhbmQg
bWF5IGltcG9zZSBwZW5hbHRpZXMgaWYgZGlzY292ZXJlZC4gU3R1ZGVudHMgYXJlIGdlbmVyYWxs
eSBlbmNvdXJhZ2VkIHRvIHNlZWsgbGVnaXRpbWF0ZSBhY2FkZW1pYyBzdXBwb3J0LCB0dXRvcmlu
ZywgdGltZS1tYW5hZ2VtZW50IHN0cmF0ZWdpZXMsIGFuZCBpbnN0cnVjdG9yIGd1aWRhbmNlIHRv
IHN1Y2NlZWQgaW4gdGhlaXIgY291cnNlcy4NCmh0dHBzOi8vYWxsYXNzaWdubWVudGhlbHBlci5j
b20vcGF5LXNvbWVvbmUtdG8tdGFrZS1teS1vbmxpbmUtY2xhc3MvDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
