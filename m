Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBfZGrBAHmraiAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 04:32:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D0B6273F8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 04:32:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB6C44098F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 02:32:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45C864096B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jun 2026 02:32:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: loyal.kingfisher.ghlj@hidingmail.net
To: linaro-mm-sig@lists.linaro.org
Date: Tue, 02 Jun 2026 02:32:10 -0000
Message-ID: <178036753028.3181389.2113856455966949000@lists.linaro.org>
User-Agent: HyperKitty on http://lists-ec2.96boards.org/
Message-ID-Hash: 5KYOYVM7R224YNF523Y6ERJPPTUZK2ZI
X-Message-ID-Hash: 5KYOYVM7R224YNF523Y6ERJPPTUZK2ZI
X-MailFrom: loyal.kingfisher.ghlj@hidingmail.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Unlocking Fun, One Block at a Time: A Dive into Block Blast
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5KYOYVM7R224YNF523Y6ERJPPTUZK2ZI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [7.59 / 15.00];
	SPAM_FLAG(5.00)[];
	DMARC_POLICY_REJECT(2.00)[hidingmail.net : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NO_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loyal.kingfisher.ghlj@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org]
X-Rspamd-Queue-Id: 06D0B6273F8
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

SW4gdGhlIHZhc3QgYW5kIGV2ZXItZ3Jvd2luZyB3b3JsZCBvZiBtb2JpbGUgZ2FtaW5nLCBzb21l
dGltZXMgdGhlIHNpbXBsZXN0IGNvbmNlcHRzIGRlbGl2ZXIgdGhlIG1vc3Qgc2F0aXNmeWluZyBl
eHBlcmllbmNlcy4gT25lIHN1Y2ggZ2VtIGlzIEJsb2NrIEJsYXN0LCBhIGNhcHRpdmF0aW5nIHB1
enpsZSBnYW1lIHRoYXQgY29tYmluZXMgdGhlIGZhbWlsaWFyIG1lY2hhbmljcyBvZiBUZXRyaXMg
d2l0aCBhIGZyZXNoLCBzdHJhdGVnaWMgdHdpc3QuIElmIHlvdSdyZSBsb29raW5nIGZvciBhIHJl
bGF4aW5nIHlldCBlbmdhZ2luZyB3YXkgdG8gY2hhbGxlbmdlIHlvdXIgbWluZCwgdGhlbiBCbG9j
ayBCbGFzdCBtaWdodCBqdXN0IGJlIHlvdXIgbmV4dCBhZGRpY3Rpb24uDQoNCmh0dHBzOi8vYmxv
Y2tibGFzdHMuaW8vIA0KDQpXaGF0IGlzIEJsb2NrIEJsYXN0Pw0KDQpJbWFnaW5lIGEgMTB4MTAg
Z3JpZCwgaW5pdGlhbGx5IGVtcHR5LiBZb3VyIGdvYWwgaXMgdG8gZmlsbCB0aGlzIGdyaWQgd2l0
aCB2YXJpb3VzLXNoYXBlZCBibG9ja3MgdGhhdCBhcHBlYXIgYXQgdGhlIGJvdHRvbSBvZiB0aGUg
c2NyZWVuLCBvbmUgc2V0IG9mIHRocmVlIGF0IGEgdGltZS4gVGhlIGNhdGNoPyBZb3UgY2FuJ3Qg
cm90YXRlIHRoZSBibG9ja3MsIGFuZCB5b3UgbXVzdCBwbGFjZSBhbGwgdGhyZWUgZ2l2ZW4gYmxv
Y2tzIGJlZm9yZSBuZXcgb25lcyBhcHBlYXIuIFRoZSBvYmplY3RpdmUgaXMgdG8gY2xlYXIgbGlu
ZXMgYW5kIGNvbHVtbnMgYnkgZmlsbGluZyB0aGVtIGNvbXBsZXRlbHkuIE9uY2UgYSBsaW5lIG9y
IGNvbHVtbiBpcyBmdWxsLCBpdCBkaXNhcHBlYXJzLCBmcmVlaW5nIHVwIHNwYWNlIGZvciBtb3Jl
IGJsb2NrcyBhbmQgZWFybmluZyB5b3UgcG9pbnRzLiBUaGUgZ2FtZSBlbmRzIHdoZW4geW91IGNh
biBubyBsb25nZXIgcGxhY2UgYW55IG9mIHRoZSBjdXJyZW50IGJsb2NrcyBvbiB0aGUgZ3JpZC4N
Cg0KR2FtZXBsYXk6IFNpbXBsZSB0byBHcmFzcCwgQ2hhbGxlbmdpbmcgdG8gTWFzdGVyDQoNClRo
ZSBiZWF1dHkgb2YgQmxvY2sgQmxhc3QgbGllcyBpbiBpdHMgc3RyYWlnaHRmb3J3YXJkIG1lY2hh
bmljcy4gWW91IHNpbXBseSBkcmFnIGFuZCBkcm9wIHRoZSBibG9ja3MgZnJvbSB0aGUgYm90dG9t
IG9udG8gdGhlIGdyaWQuIFRoZXJlJ3Mgbm8gdGltZSBsaW1pdCwgbm8gZnJhbnRpYyBzd2lwaW5n
IOKAkyBqdXN0IHRob3VnaHRmdWwgcGxhY2VtZW50LiBIb3dldmVyLCBkb24ndCBsZXQgdGhlIHNp
bXBsaWNpdHkgZm9vbCB5b3UuIEFzIHRoZSBncmlkIGZpbGxzIHVwLCBzdHJhdGVnaWMgdGhpbmtp
bmcgYmVjb21lcyBwYXJhbW91bnQuIFlvdSdsbCBxdWlja2x5IGxlYXJuIHRoZSBpbXBvcnRhbmNl
IG9mIGFudGljaXBhdGluZyBmdXR1cmUgYmxvY2sgc2hhcGVzIGFuZCBwbGFubmluZyB5b3VyIHBs
YWNlbWVudHMgdG8gY3JlYXRlIG1vcmUgY2xlYXJpbmcgb3Bwb3J0dW5pdGllcy4gU2hvdWxkIHlv
dSBzYXZlIHRoYXQgbG9uZyBzdHJhaWdodCBwaWVjZSBmb3IgYSBmdWxsIGNvbHVtbiBjbGVhciwg
b3IgdXNlIGl0IG5vdyB0byBvcGVuIHVwIGEgY3J1Y2lhbCBjb3JuZXI/IFRoZXNlIGFyZSB0aGUg
ZGVsaWdodGZ1bCBkaWxlbW1hcyB5b3UnbGwgZmFjZS4gVGhlIGdhbWUgZW5jb3VyYWdlcyBhIGZs
b3cgc3RhdGUsIHdoZXJlIHlvdeKAmXJlIGNvbnN0YW50bHkgZXZhbHVhdGluZyBhbmQgYWRhcHRp
bmcgdG8gdGhlIGV2b2x2aW5nIGdyaWQuDQoNClRpcHMgZm9yIEJlY29taW5nIGEgQmxvY2sgQmxh
c3QgTWFzdGVyDQoNCldoaWxlIHRoZSBnYW1lIGlzIGVhc3kgdG8gcGljayB1cCwgYSBmZXcgc3Ry
YXRlZ2llcyBjYW4gc2lnbmlmaWNhbnRseSBib29zdCB5b3VyIHNjb3JlcyBhbmQgZW5qb3ltZW50
Og0KDQpQcmlvcml0aXplIENsZWFyczogRG9uJ3QgYmUgYWZyYWlkIHRvIGNsZWFyIGxpbmVzIG9y
IGNvbHVtbnMsIGV2ZW4gaWYgaXQgbWVhbnMgdXNpbmcgYSBibG9jayBpbiBhIGxlc3MtdGhhbi1p
ZGVhbCBzcG90LiBDbGVhcmluZyBzcGFjZSBpcyBjcnVjaWFsIGZvciBsb25nZXZpdHkuDQpUaGlu
ayBBaGVhZDogQWx3YXlzIGdsYW5jZSBhdCB0aGUgbmV4dCBzZXQgb2YgYmxvY2tzLiBUaGlzIGFs
bG93cyB5b3UgdG8gcGxhbiB5b3VyIGN1cnJlbnQgcGxhY2VtZW50cyB3aXRoIGZ1dHVyZSBwaWVj
ZXMgaW4gbWluZCwgY3JlYXRpbmcgY29tYm9zIGFuZCBsYXJnZXIgY2xlYXJzLg0KQ29ybmVycyBh
cmUgS2luZzogRmlsbGluZyBjb3JuZXJzIGFuZCBlZGdlcyBjYW4gYmUgdHJpY2t5LCBzbyB0cnkg
dG8gdGFja2xlIHRoZW0gZWFybHkgd2hlbiB5b3UgaGF2ZSBtb3JlIHNwYWNlLiBEb24ndCBsZWF2
ZSBpc29sYXRlZCBibG9ja3MgaW4gb2RkIHNwb3RzLg0KVGhlICJMIiBhbmQgIlQiIEJsb2NrIERp
bGVtbWE6IFRoZXNlIG9kZGx5IHNoYXBlZCBibG9ja3MgY2FuIGJlIHlvdXIgYmVzdCBmcmllbmRz
IG9yIHdvcnN0IGVuZW1pZXMuIExlYXJuIGhvdyB0byBpbnRlZ3JhdGUgdGhlbSBpbnRvIHlvdXIg
Y2xlYXJzIGVmZmVjdGl2ZWx5LCBvZnRlbiBieSBsZWF2aW5nIGdhcHMgZm9yIHRoZW0uDQpQcmFj
dGljZSBNYWtlcyBQZXJmZWN0OiBMaWtlIGFueSBwdXp6bGUgZ2FtZSwgY29uc2lzdGVudCBwbGF5
IHdpbGwgaW1wcm92ZSB5b3VyIHNwYXRpYWwgcmVhc29uaW5nIGFuZCBwYXR0ZXJuIHJlY29nbml0
aW9uLCBsZWFkaW5nIHRvIGhpZ2hlciBzY29yZXMuDQoNCkNvbmNsdXNpb24NCg0KQmxvY2sgQmxh
c3Qgb2ZmZXJzIGEgZGVsaWdodGZ1bCBibGVuZCBvZiByZWxheGF0aW9uIGFuZCBtZW50YWwgc3Rp
bXVsYXRpb24uIEl0cyBpbnR1aXRpdmUgZGVzaWduIG1ha2VzIGl0IGFjY2Vzc2libGUgdG8gZXZl
cnlvbmUsIHdoaWxlIGl0cyBzdHJhdGVnaWMgZGVwdGgga2VlcHMgcGxheWVycyBlbmdhZ2VkIGZv
ciBjb3VudGxlc3MgaG91cnMuIFdoZXRoZXIgeW91J3JlIGxvb2tpbmcgZm9yIGEgcXVpY2sgYnJh
aW4gYnJlYWsgb3IgYSBsb25nLCBtZWRpdGF0aXZlIHB1enpsZSBzZXNzaW9uLCBCbG9jayBCbGFz
dCBwcm92aWRlcyBhIHNhdGlzZnlpbmcgYW5kIHJld2FyZGluZyBleHBlcmllbmNlLiBHaXZlIGl0
IGEgdHJ5LCBhbmQgeW91IG1pZ2h0IGp1c3QgZmluZCB5b3VyIG5ldyBmYXZvcml0ZSB3YXkgdG8g
dW53aW5kIGFuZCBzaGFycGVuIHlvdXIgbWluZCwgb25lIGJsb2NrIGF0IGEgdGltZS4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
