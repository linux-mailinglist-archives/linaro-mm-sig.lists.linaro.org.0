Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wN25KnrkAmpEyQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 10:27:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3162F51CAE8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 10:27:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBAED4017B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 08:27:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49E9C40178
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 08:27:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: cold.puma.etfk@hidingmail.net
To: linaro-mm-sig@lists.linaro.org
Date: Tue, 12 May 2026 08:27:30 -0000
Message-ID: <177857445029.2686944.851046746875072922@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: OI7IUM26PD7UXV7HJHS7ESFTPXJPVMBK
X-Message-ID-Hash: OI7IUM26PD7UXV7HJHS7ESFTPXJPVMBK
X-MailFrom: cold.puma.etfk@hidingmail.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Mastering the Quirky Fun of Drive Mad
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OI7IUM26PD7UXV7HJHS7ESFTPXJPVMBK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 3162F51CAE8
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[cold.puma.etfk@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.972];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[drivemadfree.com:url]
X-Rspamd-Action: add header
X-Spam: Yes

RXZlciBzdHVtYmxlZCB1cG9uIGEgZ2FtZSB0aGF0LCBkZXNwaXRlIGl0cyBzaW1wbGUgcHJlbWlz
ZSwgY29tcGxldGVseSBob29rcyB5b3Ugd2l0aCBpdHMgcHVyZSwgdW5hZHVsdGVyYXRlZCBmdW4/
IFRoYXTigJlzIGV4YWN0bHkgdGhlIGV4cGVyaWVuY2UgbWFueSBwbGF5ZXJzIGZpbmQgd2l0aCBE
cml2ZSBNYWQuIFRoaXMgY2hhcm1pbmdseSBhZGRpY3RpdmUgYnJvd3NlciBnYW1lIG9mZmVycyBh
IGRlbGlnaHRmdWwgYmxlbmQgb2YgcGh5c2ljcy1iYXNlZCBjaGFsbGVuZ2VzIGFuZCBzdXJwcmlz
aW5nbHkgZGVlcCB2ZWhpY2xlIGN1c3RvbWl6YXRpb24sIG1ha2luZyBpdCBhIHBlcmZlY3QgcXVp
Y2sgcGljay11cC1hbmQtcGxheSBmb3IgYSBmZXcgbWludXRlcyBvciBhbiBob3VyLiBJZiB5b3Xi
gJlyZSBsb29raW5nIHRvIGRpdmUgaW50byBzb21lIGxpZ2h0aGVhcnRlZCwgeWV0IGVuZ2FnaW5n
LCBnYW1pbmcsIHRoZW4gbG9vayBubyBmdXJ0aGVyIHRoYW4gbGVhcm5pbmcgaG93IHRvIHBsYXkg
YW5kIHRydWx5IGV4cGVyaWVuY2UgRHJpdmUgTWFkLg0KV2hhdCBpcyBEcml2ZSBNYWQ/IFRoZSBC
YXNpY3Mgb2YgQm91bmNpbmcgYW5kIEJ1aWxkaW5nIGh0dHBzOi8vZHJpdmVtYWRmcmVlLmNvbQ0K
QXQgaXRzIGNvcmUsIERyaXZlIE1hZCBpcyBhIHBoeXNpY3MtYmFzZWQgZHJpdmluZyBnYW1lIHdo
ZXJlIHlvdXIgcHJpbWFyeSBnb2FsIGlzIHRvIG5hdmlnYXRlIGEgdmVoaWNsZSB0aHJvdWdoIGlu
Y3JlYXNpbmdseSBvdXRsYW5kaXNoIGNvdXJzZXMuIFRoZSBjb250cm9scyBhcmUgZGVsaWdodGZ1
bGx5IHN0cmFpZ2h0Zm9yd2FyZDogdHlwaWNhbGx5IGp1c3QgYWNjZWxlcmF0b3IsIGJyYWtlLCBh
bmQgb2Z0ZW4gYSB3YXkgdG8gdGlsdCB5b3VyIHZlaGljbGUgZm9yd2FyZCBvciBiYWNrd2FyZC4g
V2hhdCBtYWtlcyBpdCBpbnRlcmVzdGluZywgaG93ZXZlciwgaXMgdGhlIGVtcGhhc2lzIG9uIGJ1
aWxkaW5nLiBCZWZvcmUgZWFjaCBsZXZlbCwgeW914oCZcmUgcHJlc2VudGVkIHdpdGggYSBiYXNp
YyBjaGFzc2lzIGFuZCBhIGxpbWl0ZWQgYnVkZ2V0IHRvIGFkZCB2YXJpb3VzIGNvbXBvbmVudHM6
IHdoZWVscyBvZiBkaWZmZXJlbnQgc2l6ZXMgYW5kIGdyaXBzLCBlbmdpbmVzIHdpdGggdmFyeWlu
ZyBwb3dlciwgYW5kIGV2ZW4gc3RydWN0dXJhbCBlbGVtZW50cyB0byBoZWxwIHlvdSBzdXJ2aXZl
IGEgY3Jhc2ggb3IgdHdvLiBUaGUgbWFnaWMgbGllcyBpbiBleHBlcmltZW50aW5nIHdpdGggdGhl
c2UgcGFydHMgdG8gY3JlYXRlIHRoZSBtb3N0IGVmZmVjdGl2ZSAob3IgaGlsYXJpb3VzbHkgaW5l
ZmZlY3RpdmUpIGNvbnRyYXB0aW9uIHRvIHRhY2tsZSB0aGUgdXBjb21pbmcgb2JzdGFjbGVzLiBZ
b3UgY2FuIGZpbmQgdGhpcyBnZW0gYXQgRHJpdmUgTWFkLg0KPkZyb20gTm92aWNlIHRvIE1hZCBE
cml2ZXI6IEdhbWVwbGF5IGFuZCBQcm9ncmVzc2lvbg0KVGhlIGpvdXJuZXkgaW4gRHJpdmUgTWFk
IHN0YXJ0cyBzaW1wbHkuIEVhcmx5IGxldmVscyBpbnRyb2R1Y2UgeW91IHRvIGJhc2ljIGluY2xp
bmVzLCBnYXBzLCBhbmQgZmxhdCBzdXJmYWNlcywgYWxsb3dpbmcgeW91IHRvIGdldCBhIGZlZWwg
Zm9yIHRoZSBwaHlzaWNzIGFuZCBob3cgZGlmZmVyZW50IHZlaGljbGUgYnVpbGRzIHJlc3BvbmQu
IEFzIHlvdSBwcm9ncmVzcywgdGhlIGNoYWxsZW5nZXMgZXNjYWxhdGUgZHJhbWF0aWNhbGx5LiBZ
b3XigJlsbCBlbmNvdW50ZXIgbWFzc2l2ZSByYW1wcywgcHJlY2FyaW91cyBicmlkZ2VzLCBleHBs
b3NpdmUgYmFycmVscywgYW5kIGV2ZW4gc2VjdGlvbnMgdGhhdCByZXF1aXJlIGNhcmVmdWwgYmFs
YW5jaW5nIG9uIGEgc2luZ2xlIHdoZWVsLiBFYWNoIHN1Y2Nlc3NmdWwgY29tcGxldGlvbiBvZiBh
IGxldmVsIGVhcm5zIHlvdSBtb3JlIGluLWdhbWUgY3VycmVuY3ksIHdoaWNoIHlvdSBjYW4gdGhl
biB1c2UgdG8gdW5sb2NrIG5ldyB2ZWhpY2xlIHBhcnRzLCBleHBhbmRpbmcgeW91ciBjcmVhdGl2
ZSBwb3NzaWJpbGl0aWVzLiBUaGUgc2F0aXNmYWN0aW9uIG9mIGZpbmFsbHkgb3ZlcmNvbWluZyBh
IHBhcnRpY3VsYXJseSB0cmlja3kgbGV2ZWwgd2l0aCBhIGN1c3RvbS1idWlsdCBtb25zdGVyIHRy
dWNrIG9yIGEgemlwcHksIGxpZ2h0d2VpZ2h0IGR1bmUgYnVnZ3kgaXMgdHJ1bHkgcmV3YXJkaW5n
Lg0KVGlwcyBmb3IgVGFtaW5nIHRoZSBUcmFja3M6IFlvdXIgR3VpZGUgdG8gU3VjY2Vzcw0KV2hp
bGUgRHJpdmUgTWFkIGlzIGVhc3kgdG8gcGljayB1cCwgbWFzdGVyaW5nIGl0IHJlcXVpcmVzIGEg
Yml0IG9mIHN0cmF0ZWd5LiBIZXJlIGFyZSBhIGZldyBmcmllbmRseSB0aXBzIHRvIGhlbHAgeW91
IG9uIHlvdXIgd2F5Og0K4oCiCUV4cGVyaW1lbnQgd2l0aCBXaGVlbHM6IERvbid0IHVuZGVyZXN0
aW1hdGUgdGhlIHBvd2VyIG9mIGRpZmZlcmVudCB3aGVlbCB0eXBlcy4gTGFyZ2VyIHdoZWVscyBv
ZmZlciBiZXR0ZXIgY2xlYXJhbmNlIGFuZCBhYnNvcmIgaW1wYWN0cywgd2hpbGUgc21hbGxlciB3
aGVlbHMgY2FuIGJlIG5pbWJsZS4gRXhwZXJpbWVudCB3aXRoIGNvbWJpbmF0aW9ucyENCuKAoglC
YWxhbmNlIGlzIEtleTogRXNwZWNpYWxseSBpbiBsYXRlciBsZXZlbHMsIG1haW50YWluaW5nIGJh
bGFuY2UgaXMgY3J1Y2lhbC4gVXNlIHlvdXIgdGlsdCBjb250cm9scyB3aXNlbHkgdG8gcHJldmVu
dCB5b3VyIHZlaGljbGUgZnJvbSBmbGlwcGluZyBvdmVyLCBlc3BlY2lhbGx5IG9uIHN0ZWVwIGFz
Y2VudHMgb3IgZGVzY2VudHMuDQrigKIJQnVkZ2V0IFdpc2VseTogV2hpbGUgaXQncyB0ZW1wdGlu
ZyB0byBzcGx1cmdlIG9uIHRoZSBtb3N0IHBvd2VyZnVsIGVuZ2luZSwgc29tZXRpbWVzIGEgbW9y
ZSBiYWxhbmNlZCBidWlsZCB3aXRoIGdvb2Qgd2hlZWxzIGFuZCBhIHN0dXJkeSBmcmFtZSBpcyBt
b3JlIGVmZmVjdGl2ZSB0aGFuIGEgdG9wLWhlYXZ5IHNwZWVkIGRlbW9uLg0K4oCiCUxlYXJuIGZy
b20gQ3Jhc2hlczogRXZlcnkgZ2xvcmlvdXMgZXhwbG9zaW9uIG9yIGNvbWljYWwgZmxpcCBpcyBh
IGxlYXJuaW5nIG9wcG9ydHVuaXR5LiBQYXkgYXR0ZW50aW9uIHRvIHdoYXQgY2F1c2VkIHRoZSBm
YWlsdXJlIGFuZCBhZGp1c3QgeW91ciB2ZWhpY2xlIG9yIGRyaXZpbmcgc3R5bGUgYWNjb3JkaW5n
bHkuDQrigKIJU29tZXRpbWVzIExlc3MgaXMgTW9yZTogRG9u4oCZdCBmZWVsIG9ibGlnYXRlZCB0
byB1c2UgZXZlcnkgY29tcG9uZW50IHlvdSBjYW4uIEEgc2ltcGxlciwgbW9yZSBmb2N1c2VkIGRl
c2lnbiBjYW4gc29tZXRpbWVzIGJlIG1vcmUgcm9idXN0IGFuZCBlZmZlY3RpdmUgdGhhbiBhbiBv
dmVyLWVuZ2luZWVyZWQgYmVoZW1vdGguDQpDb25jbHVzaW9uOiBFbWJyYWNlIHRoZSBNYWRuZXNz
DQpEcml2ZSBNYWQgaXMgbW9yZSB0aGFuIGp1c3QgYSBzaW1wbGUgYnJvd3NlciBnYW1lOyBpdCdz
IGEgdGVzdGFtZW50IHRvIHRoZSBqb3kgb2YgY3JlYXRpdmUgcHJvYmxlbS1zb2x2aW5nIGFuZCB0
aGUgc2hlZXIgZnVuIG9mIHBoeXNpY3MtYmFzZWQgY2hhb3MuIFdoZXRoZXIgeW91J3JlIGEgc2Vh
c29uZWQgZ2FtZXIgbG9va2luZyBmb3IgYSByZWZyZXNoaW5nIGJyZWFrIG9yIHNvbWVvbmUgbmV3
IHRvIHRoZSB3b3JsZCBvZiBkaWdpdGFsIGVudGVydGFpbm1lbnQsIGl0cyBhcHByb2FjaGFibGUg
bmF0dXJlIGFuZCBlbmdhZ2luZyBnYW1lcGxheSBtYWtlIGl0IGEgZmFudGFzdGljIGNob2ljZS4g
U28sIG5leHQgdGltZSB5b3UgaGF2ZSBhIGZldyBtaW51dGVzIHRvIHNwYXJlLCB3aHkgbm90IGhv
cCBpbnRvIHRoZSBkcml2ZXIncyBzZWF0LCBidWlsZCB5b3VyIGRyZWFtIG1hY2hpbmUsIGFuZCBz
ZWUganVzdCBob3cgZmFyIHlvdSBjYW4gZHJpdmUgeW91cnNlbGYgbWFkPw0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
