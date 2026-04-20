Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Bi5HoXc5WnNogEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 09:57:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3A4427EE8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 09:57:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EFE2404FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 07:57:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EB5D404C3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2026 07:57:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: serious.halibut.leeg@hidingmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Mon, 20 Apr 2026 07:57:48 -0000
Message-ID: <177667186825.904847.14807190528516039274@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: CDBL5QB7GAI7EU4TCVPFR3NY5KDQRQN6
X-Message-ID-Hash: CDBL5QB7GAI7EU4TCVPFR3NY5KDQRQN6
X-MailFrom: serious.halibut.leeg@hidingmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Slithering into Fun: Mastering the Classic Snake Game
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CDBL5QB7GAI7EU4TCVPFR3NY5KDQRQN6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[hidingmail.com : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FROM_NO_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[snakegame.onl:url,lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[serious.halibut.leeg@hidingmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	R_DKIM_NA(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: 0A3A4427EE8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIFNuYWtlIEdhbWUg4oCTIHNpbXBsZSwgYWRkaWN0aXZlLCBhbmQgdXR0ZXJseSB0aW1lbGVz
cy4gSXQncyBhIGdhbWUgdGhhdCBoYXMgZ3JhY2VkIGNvdW50bGVzcyBzY3JlZW5zLCBmcm9tIGVh
cmx5IG1vYmlsZSBwaG9uZXMgdG8gd2ViIGJyb3dzZXJzLCBhbmQgY29udGludWVzIHRvIGJlIGEg
c291cmNlIG9mIGNhc3VhbCBlbnRlcnRhaW5tZW50IGZvciBtaWxsaW9ucy4gQnV0IGJlaGluZCBp
dHMgZGVjZXB0aXZlbHkgc2ltcGxlIHByZW1pc2UgbGllcyBhIHN1cnByaXNpbmcgYW1vdW50IG9m
IHNraWxsIGFuZCBzdHJhdGVneS4gTGV0J3MgZGl2ZSBpbnRvIGhvdyB0byBub3QganVzdCBwbGF5
IHRoZcKgU25ha2UgR2FtZSwgYnV0IGhvdyB0byBleHBlcmllbmNlIGl0Lg0KDQpodHRwczovL3Nu
YWtlZ2FtZS5vbmwNCg0KR2FtZXBsYXk6IEEgU2ltcGxlIERhbmNlIG9mIERpZ2l0cyBhbmQgRGVs
aWdodA0KDQpUaGUgY29yZSBjb25jZXB0IG9mIHRoZSBTbmFrZSBHYW1lIGlzIGJlYXV0aWZ1bGx5
IHN0cmFpZ2h0Zm9yd2FyZC4gWW91IGNvbnRyb2wgYSBzbmFrZSwgaW5pdGlhbGx5IGEgc21hbGwg
bGluZSBzZWdtZW50LCBuYXZpZ2F0aW5nIHdpdGhpbiBhIGRlZmluZWQgcGxheSBhcmVhLiBZb3Vy
IGdvYWw/IFRvIGNvbnN1bWUgZm9vZCwgdHlwaWNhbGx5IHJlcHJlc2VudGVkIGJ5IHNtYWxsIGRv
dHMgb3IgYmxvY2tzLCB3aXRob3V0IGNyYXNoaW5nIGludG8gdGhlIHdhbGxzLCB5b3VyIG93biBi
b2R5LCBvciBvYnN0YWNsZXMgaWYgYW55IGFyZSBwcmVzZW50IGluIHRoZSB2ZXJzaW9uIHlvdSdy
ZSBwbGF5aW5nLg0KDQpFYWNoIHRpbWUgeW91ciBzbmFrZSBlYXRzIGZvb2QsIGl0IGdyb3dzIGxv
bmdlciwgaW5jcmVhc2luZyB0aGUgZGlmZmljdWx0eSBhcyBtYW5ldXZlcmluZyBzcGFjZSBiZWNv
bWVzIG1vcmUgY29uc3RyYWluZWQuIFRoZSBnYW1lIGVuZHMgd2hlbiB5b3UgY29sbGlkZSB3aXRo
IHlvdXJzZWxmIG9yIHRoZSBib3VuZGFyaWVzIG9mIHRoZSBwbGF5IGFyZWEuIFNvdW5kIGVhc3k/
IFRyeSBpdCEgVGhlIHJlYWwgY2hhbGxlbmdlIGxpZXMgaW4gcHJlZGljdGluZyBmdXR1cmUgbW92
ZW1lbnRzLCBwbGFubmluZyBlZmZpY2llbnQgcGF0aHMsIGFuZCBhZGFwdGluZyB0byB0aGUgZXZl
ci1pbmNyZWFzaW5nIGxlbmd0aCBvZiB5b3VyIHNlcnBlbnRpbmUgZnJpZW5kLg0KDQpNYW55IHZh
cmlhdGlvbnMgb2YgdGhlIFNuYWtlIEdhbWUgZXhpc3QsIG9mdGVuIHdpdGggYWRkZWQgZmVhdHVy
ZXMgbGlrZSB3YWxscyB3aXRoaW4gdGhlIHBsYXlpbmcgZmllbGQsIHBvd2VyLXVwcywgYW5kIGRp
ZmZlcmVudCBjb250cm9sIHNjaGVtZXMuIFNvbWUgZXZlbiBvZmZlciBtdWx0aXBsYXllciBvcHRp
b25zLCBhbGxvd2luZyB5b3UgdG8gY29tcGV0ZSBhZ2FpbnN0IGZyaWVuZHMgb3Igb3RoZXIgcGxh
eWVycyBvbmxpbmUuIFJlZ2FyZGxlc3Mgb2YgdGhlIHNwZWNpZmljIHZlcnNpb24sIHRoZSBmdW5k
YW1lbnRhbCBtZWNoYW5pY3MgcmVtYWluIHRoZSBzYW1lLg0KDQpUaXBzIGFuZCBUcmlja3M6IEJl
Y29taW5nIGEgU25ha2UgQ2hhcm1lcg0KDQpXaGlsZSB0aGUgU25ha2UgR2FtZSBhcHBlYXJzIGx1
Y2stYmFzZWQgYXQgdGltZXMsIG1hc3RlcmluZyBhIGZldyBrZXkgc3RyYXRlZ2llcyBjYW4gc2ln
bmlmaWNhbnRseSBpbXByb3ZlIHlvdXIgc2NvcmUgYW5kIGV4dGVuZCB5b3VyIGdhbWVwbGF5Og0K
DQpQbGFuIEFoZWFkOiBEb27igJl0IGp1c3QgcmVhY3QgdG8gdGhlIGltbWVkaWF0ZSBzaXR1YXRp
b24uIFRyeSB0byBhbnRpY2lwYXRlIHlvdXIgc25ha2UncyBtb3ZlbWVudHMgc2V2ZXJhbCBzdGVw
cyBpbiBhZHZhbmNlLiBWaXN1YWxpemUgdGhlIHBhdGggeW91J2xsIG5lZWQgdG8gdGFrZSB0byBj
b2xsZWN0IHRoZSBuZXh0IGZvb2QgcGVsbGV0IHdpdGhvdXQgcGFpbnRpbmcgeW91cnNlbGYgaW50
byBhIGNvcm5lci4NCg0KVXRpbGl6ZSBDb3JuZXJzOiBDb3JuZXJzIGFyZSB5b3VyIGJlc3QgZnJp
ZW5kcy4gVGhleSBwcm92aWRlIGEgdGVtcG9yYXJ5IHNhZmUgaGF2ZW4gd2hlcmUgeW91IGNhbiBj
aGFuZ2UgZGlyZWN0aW9uIGFuZCByZWFzc2VzcyB5b3VyIHN1cnJvdW5kaW5ncy4gTWFzdGVyIHRo
ZSBhcnQgb2YgaHVnZ2luZyB0aGUgd2FsbHMgYW5kIG1ha2luZyBzaGFycCB0dXJucy4NCg0KQ3Jl
YXRlIFNwYWNlOiBBcyB5b3VyIHNuYWtlIGdyb3dzLCBzcGFjZSBiZWNvbWVzIGEgcHJlY2lvdXMg
Y29tbW9kaXR5LiBBaW0gdG8gY3JlYXRlIGxvb3BzIGFuZCBlbXB0eSBhcmVhcyB3aXRoaW4gdGhl
IHBsYXlpbmcgZmllbGQgdG8gZ2l2ZSB5b3Vyc2VsZiBtb3JlIHJvb20gdG8gbWFuZXV2ZXIuIEEg
d2VsbC1leGVjdXRlZCBsb29wIGNhbiBidXkgeW91IHZhbHVhYmxlIHRpbWUgYW5kIHByZXZlbnQg
YSBmYXRhbCBjcmFzaC4NCg0KUGF0aWVuY2UgaXMgS2V5OiBEb27igJl0IHJ1c2guIFNvbWV0aW1l
cyB0aGUgYmVzdCBzdHJhdGVneSBpcyB0byB3YWl0IGZvciBhbiBvcHBvcnR1bml0eSB0byBwcmVz
ZW50IGl0c2VsZi4gQXZvaWQgbWFraW5nIHJpc2t5IG1vdmVzIHRoYXQgY291bGQgbGVhZCB0byBh
IHByZW1hdHVyZSBlbmQuDQoNCkxlYXJuIHRoZSBBbGdvcml0aG0gKFNvcnQgT2YpOiBTb21lIHBs
YXllcnMgZmluZCBpdCBiZW5lZmljaWFsIHRvIGRldmVsb3AgYSBtZW50YWwgImFsZ29yaXRobSIg
b3IgcGF0dGVybiBmb3IgdGhlaXIgc25ha2UncyBtb3ZlbWVudHMuIFRoaXMgY291bGQgaW52b2x2
ZSBjb25zaXN0ZW50bHkgY2lyY2xpbmcgdGhlIG91dGVyIGVkZ2VzIG9mIHRoZSBwbGF5IGFyZWEg
b3IgZW1wbG95aW5nIGEgc3BlY2lmaWMgc2VxdWVuY2Ugb2YgdHVybnMuIEV4cGVyaW1lbnQgdG8g
ZmluZCB3aGF0IHdvcmtzIGJlc3QgZm9yIHlvdS4NCg0KRW1icmFjZSB0aGUgU2ltcGxpY2l0eTog
QSBUaW1lbGVzcyBDbGFzc2ljDQoNClRoZSBTbmFrZSBHYW1lIGlzIG1vcmUgdGhhbiBqdXN0IGEg
Z2FtZTsgaXQncyBhIHBpZWNlIG9mIGRpZ2l0YWwgaGlzdG9yeS4gSXRzIGVuZHVyaW5nIGFwcGVh
bCBsaWVzIGluIGl0cyBzaW1wbGljaXR5LCBhY2Nlc3NpYmlsaXR5LCBhbmQgYWRkaWN0aXZlIGdh
bWVwbGF5LiBXaGV0aGVyIHlvdSdyZSBhIHNlYXNvbmVkIHZldGVyYW4gb3IgYSBuZXdjb21lciwg
dGhlcmUncyBhbHdheXMgc29tZXRoaW5nIHRvIGVuam95IGFib3V0IHRoaXMgY2xhc3NpYyB0aXRs
ZS4gU28sIGZpcmUgdXAgeW91ciBkZXZpY2UsIGNvbnRyb2wgeW91ciBzbmFrZSwgYW5kIGdldCBy
ZWFkeSBmb3IgYSBzbGl0aGVyaW5nIGdvb2QgdGltZS4gWW91IG1pZ2h0IGJlIHN1cnByaXNlZCBh
dCBob3cgZW5nYWdpbmcgdGhpcyBzZWVtaW5nbHkgc2ltcGxlIGdhbWUgY2FuIGJlIQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
