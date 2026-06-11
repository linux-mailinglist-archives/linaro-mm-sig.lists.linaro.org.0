Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c5tbA3J4Kmp5qAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 10:57:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 83913670147
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 10:57:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=hidingmail.net (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 775D640A06
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 08:57:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30B5A3F9AF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 08:57:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: semantic.rooster.guyw@hidingmail.net
To: linaro-mm-sig@lists.linaro.org
Date: Thu, 11 Jun 2026 08:57:13 -0000
Message-ID: <178116823319.3736213.12688314914701531633@lists.linaro.org>
User-Agent: HyperKitty on http://lists-ec2.96boards.org/
Message-ID-Hash: 7ZSBMKOLKKJISFKHVSQ6Q3AU35MMTELV
X-Message-ID-Hash: 7ZSBMKOLKKJISFKHVSQ6Q3AU35MMTELV
X-MailFrom: semantic.rooster.guyw@hidingmail.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Rediscovering the Simple Joy of Snake Game
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7ZSBMKOLKKJISFKHVSQ6Q3AU35MMTELV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [12.89 / 15.00];
	SPAM_FLAG(5.00)[];
	ABUSE_SURBL(5.00)[hidingmail.net:from_mime];
	DMARC_POLICY_REJECT(2.00)[hidingmail.net : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[semantic.rooster.guyw@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[semantic.rooster.guyw@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NO_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	R_SPF_ALLOW(0.00)[+mx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83913670147
X-Spam: Yes

SW4gYSB3b3JsZCBmaWxsZWQgd2l0aCBoeXBlci1yZWFsaXN0aWMgZ3JhcGhpY3MgYW5kIGNvbXBs
ZXggbmFycmF0aXZlcywgdGhlcmUncyBhIHRpbWVsZXNzIGNoYXJtIHRvIGJlIGZvdW5kIGluIHRo
ZSBjbGFzc2ljcy4gT25lIHN1Y2ggZ2VtIHRoYXQgY29udGludWVzIHRvIGNhcHRpdmF0ZSBwbGF5
ZXJzLCB5b3VuZyBhbmQgb2xkLCBpcyB0aGUgdWJpcXVpdG91cyBTbmFrZSBHYW1lLiBJdHMgZWxl
Z2FudCBzaW1wbGljaXR5IGJlbGllcyBhIHN1cnByaXNpbmcgZGVwdGggb2Ygc3RyYXRlZ3kgYW5k
IGEgc2F0aXNmeWluZ2x5IGFkZGljdGl2ZSBxdWFsaXR5LiBJZiB5b3UndmUgZXZlciBmb3VuZCB5
b3Vyc2VsZiB3aXRoIGEgZmV3IG1pbnV0ZXMgdG8gc3BhcmUsIG9yIGp1c3QgY3JhdmluZyBhIGRv
c2Ugb2Ygbm9zdGFsZ2ljIGZ1biwgdW5kZXJzdGFuZGluZyBob3cgdG8gcGxheSBvciBleHBlcmll
bmNlIHRoaXMgaWNvbmljIGdhbWUgaXMgYSBkZWxpZ2h0ZnVsIGpvdXJuZXkuDQoNCmh0dHBzOi8v
c25ha2VnYW1lLm9ubA0KDQpUaGUgQmFzaWNzOiBBIERhbmNlIG9mIFBpeGVscyBhbmQgUHJlY2lz
aW9uDQpBdCBpdHMgY29yZSwgU25ha2UgR2FtZSBpcyB3b25kZXJmdWxseSBzdHJhaWdodGZvcndh
cmQuIFlvdSBjb250cm9sIGEgInNuYWtlIiDigJMgdHlwaWNhbGx5IGEgc2VyaWVzIG9mIGNvbG9y
ZWQgYmxvY2tzIOKAkyBuYXZpZ2F0aW5nIGEgY29uZmluZWQgcGxheWluZyBmaWVsZC4gWW91ciBv
YmplY3RpdmUgaXMgdG8gZ3VpZGUgdGhlIHNuYWtlIHRvIGNvbnN1bWUgImZvb2QiIChvZnRlbiBy
ZXByZXNlbnRlZCBhcyBhIHNpbmdsZSBwaXhlbCBvciBmcnVpdCkgdGhhdCBhcHBlYXJzIHJhbmRv
bWx5IG9uIHRoZSBzY3JlZW4uIEVhY2ggdGltZSB5b3VyIHNuYWtlIGVhdHMsIGl0IGdyb3dzIGxv
bmdlci4gVGhlIGNoYWxsZW5nZSBhcmlzZXMgZnJvbSB0aGlzIHZlcnkgZ3Jvd3RoOyB0aGUgbG9u
Z2VyIHlvdXIgc25ha2UgYmVjb21lcywgdGhlIG1vcmUgZGlmZmljdWx0IGl0IGlzIHRvIG1hbmV1
dmVyIHdpdGhvdXQgaGl0dGluZyB0aGUgYm91bmRhcmllcyBvZiB0aGUgcGxheWluZyBhcmVhIG9y
LCBjcnVjaWFsbHksIGhpdHRpbmcgeW91ciBvd24gZXZlci1leHBhbmRpbmcgYm9keS4NCk1vdmVt
ZW50IGlzIHR5cGljYWxseSBjb250cm9sbGVkIHdpdGggYXJyb3cga2V5cyBvciBhIHNpbXBsZSBz
d2lwZSBtZWNoYW5pYyBvbiB0b3VjaHNjcmVlbnMuIFVwLCBkb3duLCBsZWZ0LCBhbmQgcmlnaHQg
YXJlIHlvdXIgb25seSBjb21tYW5kcywgYnV0IHRoZSB0aW1pbmcgYW5kIGZvcmVzaWdodCB3aXRo
IHdoaWNoIHlvdSB1c2UgdGhlbSBhcmUgcGFyYW1vdW50LiBUaGUgZ2FtZSBwcm9ncmVzc2VzIGlu
IGEgY29udGludW91cyBsb29wLCB3aXRoIHlvdXIgc25ha2UgY29uc3RhbnRseSBtb3ZpbmcgZm9y
d2FyZC4gVGhlIG1vbWVudCB5b3UgY29sbGlkZSB3aXRoIGEgd2FsbCBvciB5b3VyIG93biB0YWls
LCBpdCdzIGdhbWUgb3Zlci4gWW91ciBzY29yZSBpcyB1c3VhbGx5IGRldGVybWluZWQgYnkgdGhl
IG51bWJlciBvZiBmb29kIGl0ZW1zIHlvdSd2ZSBjb25zdW1lZC4NCkJleW9uZCB0aGUgQmFzaWNz
OiBUaXBzIGZvciBCZWNvbWluZyBhIFNlcnBlbnQgU2F2YW50DQpXaGlsZSB0aGUgcnVsZXMgYXJl
IGVhc3kgdG8gZ3Jhc3AsIG1hc3RlcmluZyBTbmFrZSBHYW1lIHJlcXVpcmVzIGEgYml0IG9mIHBy
YWN0aWNlIGFuZCBhIGZldyBzdHJhdGVnaWMgaW5zaWdodHMuDQpUaGUgQXJ0IG9mIHRoZSBPcGVu
IFNwYWNlOiBBbHdheXMgdHJ5IHRvIGtlZXAgYSBzaWduaWZpY2FudCBwb3J0aW9uIG9mIHRoZSBw
bGF5aW5nIGZpZWxkIG9wZW4sIGVzcGVjaWFsbHkgaW4gZnJvbnQgb2YgeW91ciBzbmFrZS4gRG9u
J3QgYm94IHlvdXJzZWxmIGludG8gY29ybmVycyBvciBjcmVhdGUgdW5hdm9pZGFibGUgZGVhZC1l
bmRzIHRvbyBlYXJseS4gVGhpbmsgYSBmZXcgbW92ZXMgYWhlYWQgYWJvdXQgd2hlcmUgeW91ciB0
YWlsIHdpbGwgYmUuDQpQZXJpbWV0ZXIgUHJvd2xpbmc6IEEgY29tbW9uIHN0cmF0ZWd5IGlzIHRv
IGtlZXAgeW91ciBzbmFrZSBtb3ZpbmcgYWxvbmcgdGhlIG91dGVyIGVkZ2VzIG9mIHRoZSBwbGF5
aW5nIGFyZWEuIFRoaXMgZ2l2ZXMgeW91IG1vcmUgcm9vbSB0byByZWFjdCBhbmQgbGVzc2VucyB0
aGUgY2hhbmNlIG9mIGFuIHVuZXhwZWN0ZWQgY29sbGlzaW9uIHdpdGggeW91ciBvd24gYm9keS4N
CkNvbnRyb2xsZWQgQ2hhb3M6IFNvbWV0aW1lcywgdGhlIGZvb2QgYXBwZWFycyBpbiBhIHRyaWNr
eSBzcG90LiBEb24ndCBiZSBhZnJhaWQgdG8gbWFrZSBhIHF1aWNrLCBkYXJpbmcgbW92ZSB0byBn
cmFiIGl0LCBidXQgYWx3YXlzIGhhdmUgYW4gZXNjYXBlIHBsYW4uIFJhcGlkIGNoYW5nZXMgaW4g
ZGlyZWN0aW9uIGNhbiBiZSB5b3VyIGZyaWVuZCwgYnV0IG9ubHkgaWYgZXhlY3V0ZWQgd2l0aCBw
cmVjaXNpb24uDQpFbWJyYWNlIHRoZSBDaGFsbGVuZ2U6IEFzIHlvdXIgc25ha2UgZ3Jvd3MsIHRo
ZSBnYW1lIGluZXZpdGFibHkgYmVjb21lcyBtb3JlIGludGVuc2UuIEVtYnJhY2UgdGhpcyBlc2Nh
bGF0aW5nIGRpZmZpY3VsdHkhIEl0J3Mgd2hlcmUgdGhlIHRydWUgdGhyaWxsIG9mIHRoZSBnYW1l
IGxpZXMuIERvbid0IGdldCBkaXNjb3VyYWdlZCBieSBlYXJseSAiZ2FtZSBvdmVyIiBzY3JlZW5z
OyBlYWNoIGF0dGVtcHQgcmVmaW5lcyB5b3VyIHJlZmxleGVzIGFuZCBzdHJhdGVnaWMgdGhpbmtp
bmcuDQpBIFRpbWVsZXNzIENsYXNzaWMgZm9yIEV2ZXJ5b25lDQpXaGV0aGVyIHlvdSByZW1lbWJl
ciBpdCBmcm9tIGVhcmx5IG1vYmlsZSBwaG9uZXMgb3IgYXJlIGRpc2NvdmVyaW5nIGl0IGZvciB0
aGUgZmlyc3QgdGltZSBvbiBhIHdlYiBicm93c2VyLCB0aGUgYWxsdXJlIG9mIHRoZSBTbmFrZSBH
YW1lIHJlbWFpbnMgcG90ZW50LiBJdHMgc2ltcGxlIG1lY2hhbmljcyBtYWtlIGl0IGFjY2Vzc2li
bGUgdG8gYW55b25lLCB3aGlsZSBpdHMgaW5jcmVhc2luZyBkaWZmaWN1bHR5IG9mZmVycyBhIGNv
bnRpbnVvdXMgY2hhbGxlbmdlLiBJdCdzIGEgZmFudGFzdGljIHdheSB0byB1bndpbmQsIHRlc3Qg
eW91ciByZWZsZXhlcywgYW5kIGV4cGVyaWVuY2UgdGhlIHNhdGlzZmFjdGlvbiBvZiBhIHdlbGwt
ZXhlY3V0ZWQgcGxhbi4gU28sIHdoeSBub3QgZ2l2ZSBpdCBhIHRyeT8gWW91IGNhbiBlYXNpbHkg
ZmluZCBpdCBvbmxpbmUsIGZvciBpbnN0YW5jZSwgYXQgU25ha2UgR2FtZSwgYW5kIGVtYmFyayBv
biB5b3VyIG93biBwaXhlbGF0ZWQgYWR2ZW50dXJlLiBZb3UgbWlnaHQganVzdCBmaW5kIHlvdXJz
ZWxmIGhhcHBpbHkgbG9zdCBpbiB0aGUgcHVyc3VpdCBvZiB0aGUgbG9uZ2VzdCBzbmFrZS4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
