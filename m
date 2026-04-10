Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN6dNyZR2GkhbwgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 03:23:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6727B3D113F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 03:23:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F08DC404B5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 01:23:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F8F2400F7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 01:23:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: graceful.earthworm.hsos@hidingmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Fri, 10 Apr 2026 01:23:41 -0000
Message-ID: <177578422139.94250.5896127544110752399@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: XKU4Q7ONQ5MZCXPSJ7BJ2EWXO3XCGMXM
X-Message-ID-Hash: XKU4Q7ONQ5MZCXPSJ7BJ2EWXO3XCGMXM
X-MailFrom: graceful.earthworm.hsos@hidingmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Prepare to Rage Quit (and Maybe Love It): Diving into Level Devil
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XKU4Q7ONQ5MZCXPSJ7BJ2EWXO3XCGMXM/>
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
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[graceful.earthworm.hsos@hidingmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: 6727B3D113F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

U28sIHlvdSdyZSBsb29raW5nIGZvciBhIG5ldyBnYW1lIHRvIHNpbmsgeW91ciB0ZWV0aCBpbnRv
PyBTb21ldGhpbmcgY2hhbGxlbmdpbmcsIG1heWJlIGEgbGl0dGxlIGJpdCBpbmZ1cmlhdGluZywg
YW5kIGRlZmluaXRlbHkgbWVtb3JhYmxlPyBMb29rIG5vIGZ1cnRoZXIgdGhhbiBMZXZlbCBEZXZp
bC4gVGhpcyBkZWNlcHRpdmVseSBzaW1wbGUgcGxhdGZvcm1lciBpcyBhIG1hc3RlcmNsYXNzIGlu
IHRyaWNrZXJ5LCBjb25zdGFudGx5IGNoYW5naW5nIHRoZSBydWxlcyBhbmQga2VlcGluZyB5b3Ug
b24geW91ciB0b2VzLiBCdXQgZG9uJ3QgYmUgaW50aW1pZGF0ZWQhIFdpdGggYSBsaXR0bGUgcGF0
aWVuY2UgKGFuZCBtYXliZSBhIHN0cmVzcyBiYWxsKSwgeW91IGNhbiBjb25xdWVyIGl0cyBkZXZp
bGlzaCBkZXNpZ24uDQpodHRwczovL2xldmVsZGV2aWxmdWxsLmNvbQ0KR2FtZXBsYXk6IEV4cGVj
dCB0aGUgVW5leHBlY3RlZA0KQXQgaXRzIGNvcmUsIExldmVsIERldmlsIGlzIGEgMkQgcGxhdGZv
cm1lci4gWW91IGNvbnRyb2wgYSBsaXR0bGUgcGl4ZWxhdGVkIGNoYXJhY3RlciB0YXNrZWQgd2l0
aCByZWFjaGluZyB0aGUgZXhpdCBkb29yIGluIGVhY2ggbGV2ZWwuIFNvdW5kcyBlYXN5LCByaWdo
dD8gV3JvbmcuIFRoZSBiZWF1dHkgKGFuZCB0aGUgZnJ1c3RyYXRpb24pIGxpZXMgaW4gdGhlIHVu
cHJlZGljdGFibGUgbmF0dXJlIG9mIHRoZSBlbnZpcm9ubWVudC4gUGxhdGZvcm1zIGNydW1ibGUg
YmVuZWF0aCB5b3VyIGZlZXQsIHNwaWtlcyBhcHBlYXIgb3V0IG9mIG5vd2hlcmUsIGFuZCB0aGUg
Z3JvdW5kIGl0c2VsZiBjYW4gdmFuaXNoIHVuZXhwZWN0ZWRseS4NCkVhY2ggbGV2ZWwgaW50cm9k
dWNlcyBuZXcgY2hhbGxlbmdlcywgZm9yY2luZyB5b3UgdG8gYWRhcHQgeW91ciBzdHJhdGVneSBv
biB0aGUgZmx5LiBZb3UnbGwgZW5jb3VudGVyIG1vdmluZyBwbGF0Zm9ybXMsIGRpc2FwcGVhcmlu
ZyBibG9ja3MsIGFuZCBldmVuIGdyYXZpdHktZGVmeWluZyBwdXp6bGVzLiBUaGUgcmVhbCBraWNr
ZXI/IFRoZSBsYXlvdXQgb2YgdGhlIGxldmVscyBvZnRlbiBjaGFuZ2VzIG9uIGVhY2ggYXR0ZW1w
dCwgbWVhbmluZyBtZW1vcml6YXRpb24gYWxvbmUgd29uJ3QgY3V0IGl0LiBZb3UgbmVlZCB0byBi
ZSBxdWljay13aXR0ZWQgYW5kIHJlYWN0aXZlLg0KVGhlIGNoYXJtIG9mIExldmVsIERldmlsIGlz
IGl0cyBsYWNrIG9mIGhhbmQtaG9sZGluZy4gVGhlcmUgYXJlIG5vIHR1dG9yaWFscywgbm8gaGlu
dHMsIGFuZCBubyBtZXJjeS4gWW91J3JlIHRocm93biBzdHJhaWdodCBpbnRvIHRoZSBkZWVwIGVu
ZCwgZm9yY2VkIHRvIGxlYXJuIGZyb20geW91ciBtaXN0YWtlcyAoYW5kIHRydXN0IG1lLCB0aGVy
ZSB3aWxsIGJlIHBsZW50eSkuIFRoYXQgZmVlbGluZyBvZiBmaW5hbGx5IG92ZXJjb21pbmcgYSBw
YXJ0aWN1bGFybHkgZGlmZmljdWx0IHNlY3Rpb24gaXMgaW5jcmVkaWJseSByZXdhcmRpbmcuIEl0
J3MgYSBnYW1lIHRoYXQgZGVtYW5kcyB5b3VyIGZ1bGwgYXR0ZW50aW9uIGFuZCByZXdhcmRzIHBl
cnNpc3RlbmNlLg0KVGlwcyBmb3IgVGFtaW5nIHRoZSBEZXZpbA0KV2hpbGUgTGV2ZWwgRGV2aWwg
dGhyaXZlcyBvbiBpdHMgdW5wcmVkaWN0YWJpbGl0eSwgaGVyZSBhcmUgYSBmZXcgdGlwcyB0byBo
ZWxwIHlvdSBuYXZpZ2F0ZSBpdHMgdHJlYWNoZXJvdXMgbGFuZHNjYXBlOg0K4oCiCVBhdGllbmNl
IGlzIEtleTogVGhpcyBnYW1lIGlzIGRlc2lnbmVkIHRvIHRlc3QgeW91ciBsaW1pdHMuIERvbid0
IGdldCBkaXNjb3VyYWdlZCBieSBmcmVxdWVudCBkZWF0aHMuIFRyZWF0IGVhY2ggYXR0ZW1wdCBh
cyBhIGxlYXJuaW5nIGV4cGVyaWVuY2UuDQrigKIJT2JzZXJ2ZSBDYXJlZnVsbHk6IEJlZm9yZSBt
YWtpbmcgYSBtb3ZlLCB0YWtlIGEgbW9tZW50IHRvIHNjYW4gdGhlIGVudmlyb25tZW50LiBMb29r
IGZvciBzdWJ0bGUgY3VlcyB0aGF0IG1pZ2h0IGluZGljYXRlIGltcGVuZGluZyBkYW5nZXIuDQri
gKIJRW1icmFjZSBGYWlsdXJlOiBZb3Ugd2lsbCBkaWUuIEEgbG90LiBFbWJyYWNlIGl0IGFzIHBh
cnQgb2YgdGhlIGxlYXJuaW5nIHByb2Nlc3MuIEVhY2ggZGVhdGggcHJvdmlkZXMgdmFsdWFibGUg
aW5zaWdodCBpbnRvIHRoZSBsZXZlbCdzIGRlc2lnbi4NCuKAoglEb24ndCBPdmVydGhpbmsgSXQ6
IFNvbWV0aW1lcywgdGhlIHNvbHV0aW9uIGlzIHNpbXBsZXIgdGhhbiB5b3UgdGhpbmsuIEF2b2lk
IG92ZXJjb21wbGljYXRpbmcgeW91ciBhcHByb2FjaC4NCuKAoglUYWtlIEJyZWFrczogSWYgeW91
IGZpbmQgeW91cnNlbGYgZ2V0dGluZyB0b28gZnJ1c3RyYXRlZCwgc3RlcCBhd2F5IGZyb20gdGhl
IGdhbWUgZm9yIGEgd2hpbGUuIENvbWUgYmFjayB3aXRoIGEgZnJlc2ggcGVyc3BlY3RpdmUuDQri
gKIJTGlzdGVuIHRvIHRoZSBTb3VuZDogVGhlIGdhbWXigJlzIGF1ZGlvIGN1ZXMgb2Z0ZW4gaGlu
dCBhdCB1cGNvbWluZyBkYW5nZXJzLiBQYXkgY2xvc2UgYXR0ZW50aW9uISBMZXZlbCBEZXZpbCB1
dGlsaXplcyBzb3VuZCBkZXNpZ24gdG8gZW5oYW5jZSB0aGUgZXhwZXJpZW5jZSAoYW5kIHNvbWV0
aW1lcywgdG8gY2xldmVybHkgbWlzbGVhZCB5b3UhKS4NCkNvbmNsdXNpb246IEEgVGVzdCBvZiBT
a2lsbCBhbmQgU2FuaXR5DQpMZXZlbCBEZXZpbCBpc24ndCBmb3IgdGhlIGZhaW50IG9mIGhlYXJ0
LiBJdCdzIGEgY2hhbGxlbmdpbmcgYW5kIG9mdGVuIGZydXN0cmF0aW5nIGV4cGVyaWVuY2UuIEhv
d2V2ZXIsIGl0J3MgYWxzbyBpbmNyZWRpYmx5IHJld2FyZGluZy4gVGhlIGNvbnN0YW50IHN1cnBy
aXNlcywgdGhlIG5lZWQgZm9yIHF1aWNrIHRoaW5raW5nLCBhbmQgdGhlIHNoZWVyIHNhdGlzZmFj
dGlvbiBvZiBvdmVyY29taW5nIGl0cyBkZXZpbGlzaCBkZXNpZ24gbWFrZSBpdCBhIHRydWx5IHVu
aXF1ZSBhbmQgbWVtb3JhYmxlIGdhbWUuIElmIHlvdSdyZSBsb29raW5nIGZvciBhIHBsYXRmb3Jt
ZXIgdGhhdCB3aWxsIHB1c2ggeW91IHRvIHlvdXIgbGltaXRzIGFuZCBsZWF2ZSB5b3UgZmVlbGlu
ZyBhY2NvbXBsaXNoZWQsIHRoZW4gTGV2ZWwgRGV2aWwgaXMgZGVmaW5pdGVseSB3b3J0aCBhIHRy
eS4gSnVzdCBiZSBwcmVwYXJlZCB0byByYWdlIHF1aXQuLi4gYW5kIHRoZW4gY29tZSBiYWNrIGZv
ciBtb3JlLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
