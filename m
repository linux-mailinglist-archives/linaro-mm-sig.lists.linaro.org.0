Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Yic2EhD0OWpezQcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 04:48:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B94496B399D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 04:48:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=hidingmail.net (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8F0B409AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 02:48:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F01353F7B4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 02:48:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: quarrelsome.quail.btqn@hidingmail.net
To: linaro-mm-sig@lists.linaro.org
Date: Tue, 23 Jun 2026 02:48:39 -0000
Message-ID: <178218291998.1289376.794914249194986396@lists.linaro.org>
User-Agent: HyperKitty on http://lists-ec2.96boards.org/
Message-ID-Hash: Y2A65NJ5IQL2N7IHBPSBHHXO3VGAS3JL
X-Message-ID-Hash: Y2A65NJ5IQL2N7IHBPSBHHXO3VGAS3JL
X-MailFrom: quarrelsome.quail.btqn@hidingmail.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Drop, Combine, Explode: The Oddly Satisfying World of Watermelon Puzzles
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y2A65NJ5IQL2N7IHBPSBHHXO3VGAS3JL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[hidingmail.net : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[quarrelsome.quail.btqn@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[quarrelsome.quail.btqn@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B94496B399D

aHR0cHM6Ly9zdWlrYWdhbWUubG9sLw0KVGhlcmUncyBzb21ldGhpbmcgdW5pcXVlbHkgYXBwZWFs
aW5nIGFib3V0IHdhdGNoaW5nIGZydWl0cyBtZXJnZSB0b2dldGhlciBpbiBzbG93IG1vdGlvbi4g
SWYgeW91J3ZlIHNjcm9sbGVkIHRocm91Z2ggZ2FtaW5nIGNvbW11bml0aWVzIGxhdGVseSwgeW91
J3ZlIHByb2JhYmx5IG5vdGljZWQgbW9yZSBwZW9wbGUgdGFsa2luZyBhYm91dCB3YXRlcm1lbG9u
IHB1enpsZSBnYW1lcywgYW5kIGZvciBnb29kIHJlYXNvbi4gVGhlc2UgZ2FtZXMgdGFwIGludG8g
c29tZXRoaW5nIGdlbnVpbmVseSBmdW7igJR0aGUgc2ltcGxlIHBsZWFzdXJlIG9mIGNvbWJpbmlu
ZyB0aGluZ3MgYW5kIHdhdGNoaW5nIHRoZW0gdHJhbnNmb3JtLiBTdWlrYSBHYW1lIGhhcyBiZWNv
bWUgdGhlIHBvc3RlciBjaGlsZCBvZiB0aGlzIGdlbnJlLCBhbmQgaXQncyB3b3J0aCB1bmRlcnN0
YW5kaW5nIHdoeSBzbyBtYW55IHBlb3BsZSBmaW5kIHRoZW1zZWx2ZXMgYWJzb3JiZWQgaW4gZHJv
cHBpbmcgY2hlcnJ5IHRvbWF0b2VzIGFuZCBzdHJhd2JlcnJpZXMgaW50byBhIHBoeXNpY3MtYmFz
ZWQgYm94Lg0KV2hhdCdzIEFjdHVhbGx5IEhhcHBlbmluZyBIZXJlPw0KQXQgaXRzIGhlYXJ0LCBh
IHdhdGVybWVsb24gcHV6emxlIGlzIGFib3V0IG1lcmdpbmcgaWRlbnRpY2FsIGZydWl0cyB0byBj
cmVhdGUgYmlnZ2VyIG9uZXMuIFlvdSBzdGFydCB3aXRoIHNtYWxsIGl0ZW1z4oCUZ3JhcGVzIG9y
IGNoZXJyaWVz4oCUYW5kIHlvdXIgam9iIGlzIHRvIGRyb3AgdGhlbSBpbnRvIGEgY29udGFpbmVy
IGFuZCBwYWlyIHRoZW0gdG9nZXRoZXIuIFdoZW4gdHdvIG1hdGNoaW5nIGZydWl0cyB0b3VjaCwg
dGhleSBjb21iaW5lIGludG8gdGhlIG5leHQgc2l6ZSB1cC4gVHdvIGdyYXBlcyBiZWNvbWUgc3Ry
YXdiZXJyaWVzLCB0d28gc3RyYXdiZXJyaWVzIGJlY29tZSBvcmFuZ2VzLCBhbmQgdGhlIGNoYWlu
IGNvbnRpbnVlcyB1bnRpbCB5b3UncmUgKGhvcGVmdWxseSkgc3RhY2tpbmcgbWFzc2l2ZSB3YXRl
cm1lbG9ucy4NClRoZSBjYXRjaD8gWW91ciBjb250YWluZXIgaGFzIGxpbWl0ZWQgc3BhY2UuIEl0
J3MgbGlrZSBhIHZlcnRpY2FsIFRldHJpcyB3aXRoIHBoeXNpY3MgYW5kIGdyYXZpdHkuIEZydWl0
cyBkb24ndCBzdGFjayBuZWF0bHkgaW4gcm93c+KAlHRoZXkgdHVtYmxlIGFyb3VuZCByZWFsaXN0
aWNhbGx5LCBib3VuY2Ugb2ZmIHdhbGxzLCBhbmQgc2V0dGxlIHdoZXJlIHRoZXkgbGFuZC4gVGhp
cyBtZWFucyB5b3UgbmVlZCB0byB0aGluayBzdHJhdGVnaWNhbGx5IGFib3V0IHdoZXJlIGVhY2gg
cGllY2UgbGFuZHMuIERyb3AgYSBmcnVpdCBjYXJlbGVzc2x5LCBhbmQgaXQgbWlnaHQgYmxvY2sg
dGhlIHBhdGggZm9yIGZ1dHVyZSBjb21iaW5hdGlvbnMgb3IgY3JlYXRlIGFuIGF3a3dhcmQgcGls
ZSB0aGF0IGxlYXZlcyBubyByb29tIGZvciB5b3VyIG5leHQgbW92ZS4NCkVhY2ggZ2FtZSB0eXBp
Y2FsbHkgY29udGludWVzIHVudGlsIHlvdSBjYW4ndCBmaXQgYW55IG1vcmUgcGllY2VzIGludG8g
dGhlIGJveC4gU29tZSB2ZXJzaW9ucyBpbmNsdWRlIHNwZWNpYWwgbWVjaGFuaWNz4oCUb2NjYXNp
b25hbCBib21icyBvciBzcGVjaWFsIGl0ZW1zIHRoYXQgY2xlYXIgb3V0IHNlY3Rpb25zIG9mIGZy
dWl0LiBCdXQgdGhlIGNvcmUgbG9vcCByZW1haW5zIHRoZSBzYW1lOiBkcm9wLCBjb21iaW5lLCBz
dXJ2aXZlIGFzIGxvbmcgYXMgcG9zc2libGUuDQpHZXR0aW5nIEludG8gdGhlIEZsb3cNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
