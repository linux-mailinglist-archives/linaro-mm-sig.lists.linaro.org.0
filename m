Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8L9kHdScn2mucwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 02:07:32 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1181619FB98
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 02:07:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B4F33F99C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 01:07:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 526E03F80A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 01:07:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: hamtonbecky@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Thu, 26 Feb 2026 01:07:23 -0000
Message-ID: <177206804333.2772146.10058199607945693871@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: ROWYKKDRU2OWHG6EVSCK2XAWCXVHN3L3
X-Message-ID-Hash: ROWYKKDRU2OWHG6EVSCK2XAWCXVHN3L3
X-MailFrom: hamtonbecky@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] How Blockchain Tracing Works in Crypto Investigations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ROWYKKDRU2OWHG6EVSCK2XAWCXVHN3L3/>
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
	FROM_NEQ_ENVFROM(0.00)[hamtonbecky@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
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
	NEURAL_HAM(-0.00)[-0.981];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[crypterachainsignals.com:url,crypterachainsignals.com:email,lists.linaro.org:rdns,lists.linaro.org:helo,lists.linaro.org:mid,linaro.org:email]
X-Rspamd-Queue-Id: 1181619FB98
X-Rspamd-Action: no action

QmxvY2tjaGFpbiBpcyB0cmFuc3BhcmVudCBhbmQgcGVybWFuZW50LCB3aGljaCBtYWtlcyB0cmFj
aW5nIHN0b2xlbiBjcnlwdG9jdXJyZW5jeSBwb3NzaWJsZS4gRm9yZW5zaWMgaW52ZXN0aWdhdG9y
cyBhbmFseXplIHdhbGxldCBhY3Rpdml0eSwgdHJhbnNhY3Rpb24gZmxvd3MsIGFuZCBleGNoYW5n
ZSBpbnRlcmFjdGlvbnMgdG8gdHJhY2sgdGhlIG1vdmVtZW50IG9mIGRpZ2l0YWwgYXNzZXRzLg0K
U3RlcHMgaW4gVHJhY2luZyBDcnlwdG8NClRyYWNpbmcgc3RvbGVuIGNyeXB0byBmb2xsb3dzIGEg
c3RydWN0dXJlZCwgZm9yZW5zaWMgcHJvY2VzcyB0aGF0IGxldmVyYWdlcyB0aGUgcHVibGljIG5h
dHVyZSBvZiBibG9ja2NoYWlucyBsaWtlIEJpdGNvaW4gYW5kIEV0aGVyZXVtLg0KDQpTdGFydCB3
aXRoIHRoZSBWaWN0aW3igJlzIFdhbGxldCBvciBUcmFuc2FjdGlvbiBJRA0KSW52ZXN0aWdhdG9y
cyBiZWdpbiB3aXRoIHRoZSBrbm93biB0cmFuc2FjdGlvbiBoYXNoIChUWElEKSBvciB3YWxsZXQg
YWRkcmVzcyB3aGVyZSBmdW5kcyB3ZXJlIGxvc3QuIFRvb2xzIGxpa2UgRXRoZXJzY2FuLCBCbG9j
a2NoYWlyLCBvciBTb2xzY2FuIGRpc3BsYXkgdGhlIGluaXRpYWwgb3V0ZmxvdywgaW5jbHVkaW5n
IGFtb3VudCwgdGltZXN0YW1wLCBhbmQgcmVjZWl2aW5nIGFkZHJlc3Nlcy4gVGhpcyBhbmNob3Jz
IHRoZSBlbnRpcmUgaW52ZXN0aWdhdGlvbi4NClRyYWNrIEZ1bmRzIGFzIFRoZXkgTW92ZSBBY3Jv
c3MgTXVsdGlwbGUgV2FsbGV0cyAoU3BsaXRzL01lcmdlcykNClNjYW1tZXJzIG9mdGVuIHNwbGl0
IGZ1bmRzIGludG8gc21hbGxlciB0cmFuc2ZlcnMgKHBlZWxpbmcgY2hhaW5zKSB0byBvYnNjdXJl
IHRoZSB0cmFpbC4gSW52ZXN0aWdhdG9ycyBtYXAgZWFjaCBvdXRwdXQsIGZvbGxvd2luZyBjb25z
b2xpZGF0aW9ucyAobWVyZ2VzKSwgY3Jvc3MtY2hhaW4gYnJpZGdlcyAoZS5nLiwgRXRoZXJldW0g
dG8gU29sYW5hKSwgREVYIHN3YXBzLCBvciBtaXhlciBlbnRyaWVzLiBSZWFsLXRpbWUgbW9uaXRv
cmluZyBpcyBwb3NzaWJsZSBpZiByZXBvcnRlZCBlYXJseSwgd2F0Y2hpbmcgZG93bnN0cmVhbSBh
ZGRyZXNzZXMgYXMgZnVuZHMgbW92ZS4NCkNsdXN0ZXIgV2FsbGV0cyBMaWtlbHkgQ29udHJvbGxl
ZCBieSB0aGUgU2FtZSBFbnRpdHkNClVzaW5nIGJlaGF2aW9yYWwgYW5hbHlzaXMsIGludmVzdGln
YXRvcnMgZ3JvdXAgYWRkcmVzc2VzIHNoYXJpbmcgY29tbW9uIGlucHV0cywgdGltaW5nLCBhbW91
bnRzLCBvciBwYXR0ZXJucyAoZS5nLiwgZHVzdCB0ZXN0cykuIENsdXN0ZXJpbmcgcmV2ZWFscyBz
Y2FtbWVyIG5ldHdvcmtzIG9yIGV4Y2hhbmdlIGRlcG9zaXQgYWRkcmVzc2VzLCBldmVuIGFmdGVy
IG11bHRpcGxlIGhvcHMuDQpJZGVudGlmeSBFeGNoYW5nZXMsIE1peGVycywgb3IgT3RoZXIgU2Vy
dmljZXMgVXNlZA0KVHJhY2VkIHdhbGxldHMgYXJlIGNvbXBhcmVkIHRvIGRhdGFiYXNlcyBvZiBr
bm93biBleGNoYW5nZSBkZXBvc2l0cywgbWl4ZXJzLCBnYW1ibGluZyBzaXRlcywgb3IgaWxsaWNp
dCBzZXJ2aWNlcy4gTWFueSBDRVhzIHRhZyBhZGRyZXNzZXMsIGFuZCBhbmFseXRpY3MgZmxhZyBo
aWdoLXJpc2sgb3Igc2FuY3Rpb25lZCBzZXJ2aWNlcy4NCkRvY3VtZW50IEV2ZXJ5dGhpbmcgaW4g
RGV0YWlsZWQgRm9yZW5zaWMgUmVwb3J0cyBmb3IgUmVjb3Zlcnkgb3IgTGVnYWwgVXNlDQpJbnZl
c3RpZ2F0b3JzIGNvbXBpbGUgdmlzdWFsIGZsb3djaGFydHMsIGFubm90YXRlZCB0aW1lbGluZXMs
IGNsdXN0ZXIgbWFwcywgYW5kIHByb29mIG9mIHRoZWZ0IG9yaWdpbiAoc2NhbSBtZXNzYWdlcywg
dGltZXN0YW1wcykuIFRoZXNlIHJlcG9ydHMgc3VwcG9ydCBleGNoYW5nZSBmcmVlemVzLCBsYXcg
ZW5mb3JjZW1lbnQgYWN0aW9uLCBvciBjaXZpbCByZWNvdmVyeS4NCg0KUXVpY2sgYWN0aW9uIGlz
IGVzc2VudGlhbOKAlHRyYWNpbmcgZWFybHkgaW5jcmVhc2VzIHRoZSBsaWtlbGlob29kIG9mIHJl
Y292ZXJpbmcgc3RvbGVuIGZ1bmRzLiBUaGUgc29vbmVyIGludmVzdGlnYXRvcnMgc3RhcnQgKGlk
ZWFsbHkgd2l0aGluIDI04oCTNzIgaG91cnMpLCB0aGUgaGlnaGVyIHRoZSBjaGFuY2Ugb2YgY2F0
Y2hpbmcgZnVuZHMgYmVmb3JlIGZ1bGwgbGF1bmRlcmluZyBvciBmaWF0IHdpdGhkcmF3YWwuDQpD
cnlwdGVyYSBDaGFpbiBTaWduYWxzIHByb3ZpZGVzIHByb2Zlc3Npb25hbCBibG9ja2NoYWluIHRy
YWNpbmcgYW5kIGludmVzdGlnYXRpb24gc2VydmljZXMgZm9yIGluZGl2aWR1YWxzIGFuZCBidXNp
bmVzc2VzIGFmZmVjdGVkIGJ5IGNyeXB0byBzY2Ftcy4gV2l0aCBvdmVyIDI4IHllYXJzIG9mIGRp
Z2l0YWwgZm9yZW5zaWNzIGV4cGVyaWVuY2UsIGh1bmRyZWRzIG9mIHN1Y2Nlc3NmdWwgdHJhY2lu
ZyBhbmQgcmVjb3ZlcnkgcHJvamVjdHMsIGFuZCBhIHN0cm9uZyBjbGllbnQgcmF0aW5nIG9mIDQu
MjgvNSBmcm9tIHRob3VzYW5kcyBvZiByZXZpZXdzIGluIDIwMjYsIHRoZXkgc3BlY2lhbGl6ZSBp
biBtYXBwaW5nIHN0b2xlbiBmdW5kIGZsb3dzLCB3YWxsZXQgY2x1c3RlcmluZywgY3Jvc3MtY2hh
aW4gYW5hbHlzaXMsIGFuZCBwcmVwYXJpbmcgZXZpZGVuY2UtZ3JhZGUgcmVwb3J0cyBmb3IgZXhj
aGFuZ2UgZnJlZXplcyBvciBsYXcgZW5mb3JjZW1lbnQuIFRoZXkgb2ZmZXIgcmVhbGlzdGljIGFz
c2Vzc21lbnRzLCBuZXZlciByZXF1ZXN0IHByaXZhdGUga2V5cyBvciB1cGZyb250IGZlZXMgd2l0
aG91dCBldmFsdWF0aW9uLCBhbmQgZW1waGFzaXplIGVkdWNhdGlvbiBvbiBwcmV2ZW50aW9uIGFu
ZCBibG9ja2NoYWluIHRyYW5zcGFyZW5jeS4NCvCfjJAgV2Vic2l0ZTogaHR0cHM6Ly93d3cuY3J5
cHRlcmFjaGFpbnNpZ25hbHMuY29tLw0K8J+TpyBFbWFpbDogaW5mb0BjcnlwdGVyYWNoYWluc2ln
bmFscy5jb20NCkZvciBhIGNvbmZpZGVudGlhbCBjb25zdWx0YXRpb24sIHJlYWNoIG91dCB0b2Rh
eS4gTGVnaXRpbWF0ZSB0cmFjaW5nIG9mZmVycyByZWFsIHBvc3NpYmlsaXRpZXPigJRhY3QgZmFz
dCB0byBwcm90ZWN0IHlvdXIgY2hhbmNlIGF0IHJlY292ZXJ5Lg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
