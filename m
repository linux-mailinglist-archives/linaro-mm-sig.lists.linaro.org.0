Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id r5uQBYX4EWqLswYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 23 May 2026 20:57:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DF85C060F
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 23 May 2026 20:57:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A79F404F4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 23 May 2026 18:57:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA5D0404DF
	for <linaro-mm-sig@lists.linaro.org>; Sat, 23 May 2026 18:57:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: wernerkatherine77@proton.me
To: linaro-mm-sig@lists.linaro.org
Date: Sat, 23 May 2026 18:57:00 -0000
Message-ID: <177956262075.81459.3626592222928644057@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: PBKWWCJII27MHJWUWDOXVCDTNO6HCVO7
X-Message-ID-Hash: PBKWWCJII27MHJWUWDOXVCDTNO6HCVO7
X-MailFrom: wernerkatherine77@proton.me
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] UncertainRouteCanvas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PBKWWCJII27MHJWUWDOXVCDTNO6HCVO7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[proton.me : SPF not aligned (strict), No valid DKIM,quarantine];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.878];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[wernerkatherine77@proton.me,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[auslaendische-online-casinos.de:url,lists.linaro.org:rdns,lists.linaro.org:mid,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 80DF85C060F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlcm1hbCBMb2dpYzogV2h5IEdhbWJsaW5nIEVuZGVkIFVwIGF0IHRoZSBIZWFydCBvZiB0aGUg
R2VybWFuIFJlc29ydCBFY29ub215DQoNClRoZXJtYWwgcmVzb3J0cyBpbiB0aGUgMTh0aCBhbmQg
MTl0aCBjZW50dXJpZXMgaHR0cDovL2F1c2xhZW5kaXNjaGUtb25saW5lLWNhc2lub3MuZGUvIG5l
ZWRlZCBhIHdheSB0byBrZWVwIHdlYWx0aHkgdmlzaXRvcnMgZW50ZXJ0YWluZWQgcGFzdCBkaW5u
ZXIuIENvbmNlcnRzIGhlbHBlZC4gVGhlYXRlciBoZWxwZWQgbW9yZS4gQnV0IG5vdGhpbmcgZXh0
ZW5kZWQgdGhlIHN0YXkg4oCUIGFuZCB0aGUgc3BlbmRpbmcg4oCUIHF1aXRlIGxpa2UgYSB3ZWxs
LWFwcG9pbnRlZCByb29tIHdoZXJlIG1vbmV5IGNvdWxkIGNoYW5nZSBoYW5kcyBpbiBhIHNvY2lh
bGx5IGFjY2VwdGFibGUgc2V0dGluZy4NCkJhZGVuLUJhZGVuIHVuZGVyc3Rvb2QgdGhpcyBiZWZv
cmUgbW9zdC4NCg0KVGhlIEt1cmhhdXMgYmVjYW1lIGEgbW9kZWwgbm90IGJlY2F1c2UgaXQgd2Fz
IHVuaXF1ZSBidXQgYmVjYXVzZSBpdCBtYWRlIHRoZSBpbnRlcmRlcGVuZGVuY2UgdmlzaWJsZS4g
QSBndWVzdCB3aG8gY2FtZSBmb3IgdGhlIHdhdGVycyBzdGF5ZWQgZm9yIHRoZSB0YWJsZXMsIHNw
ZW50IG9uIHRoZSBob3RlbCwgYm91Z2h0IHRoaW5ncyBpbiB0aGUgc2hvcHMsIGFuZCBsZWZ0IGhh
dmluZyBmdW5kZWQgYW4gZW50aXJlIGxvY2FsIGVjb25vbXkgZm9yIHNldmVyYWwgZGF5cy4gVGhl
IGxvZ2ljIHdhcyBjaXJjdWxhciBhbmQgZGVsaWJlcmF0ZWx5IHNvLiBDaXZpYyBwbGFubmVycyBp
biBzcGEgdG93bnMgYWNyb3NzIHdoYXQgd291bGQgYmVjb21lIEdlcm1hbnkgcmVwbGljYXRlZCBp
dCwgd2hpY2ggaXMgd2h5IHRoZSBvcmlnaW5zIG9mIGNhc2lub3MgaW4gR2VybWFueSBhcmUgbm90
IGZvdW5kIGluIGFueSBzaW5nbGUgaW52ZW50aW9uIGJ1dCBpbiBhIGRpc3RyaWJ1dGVkIGV4cGVy
aW1lbnQgY29uZHVjdGVkIGFjcm9zcyBkb3plbnMgb2Ygc21hbGwgcmVzb3J0IHRvd25zIGNvbXBl
dGluZyBmb3IgdGhlIHNhbWUgYXJpc3RvY3JhdGljIGNsaWVudGVsZSB0aHJvdWdob3V0IHRoZSAx
ODAwcy4gQmFkIEhvbWJ1cmcgcmVmaW5lZCB0aGUgcm91bGV0dGUgd2hlZWwuIFdpZXNiYWRlbiBh
dHRyYWN0ZWQgdGhlIFJ1c3NpYW4gbGl0ZXJhcnkgY3Jvd2QuIEFhY2hlbiBwb3NpdGlvbmVkIGl0
c2VsZiBmb3IgdGhlIEJlbGdpYW4gYW5kIEZyZW5jaCBtYXJrZXQuIEVhY2ggdG93biBhZGFwdGVk
IHRoZSBtb2RlbCB0byBpdHMgZ2VvZ3JhcGh5IGFuZCBpdHMgdmlzaXRvcnMsIGFuZCB0aGUgcmVz
dWx0IHdhcyBhIGNhc2lubyBjdWx0dXJlIGVtYmVkZGVkIGluIHJlZ2lvbmFsIGlkZW50aXR5IHJh
dGhlciB0aGFuIHNpdHRpbmcgYXBhcnQgZnJvbSBpdC4NClBydXNzaWEncyAxODY4IGJhbiBpbnRl
cnJ1cHRlZCB0aGF0IHRyYWplY3Rvcnkgc2hhcnBseS4NCg0KVGhlIGRlY2FkZXMgdGhhdCBmb2xs
b3dlZCBwdXNoZWQgZ2FtYmxpbmcgaW50byBsZWdhbCBhbWJpZ3VpdHkgYWNyb3NzIEdlcm1hbiB0
ZXJyaXRvcmllcywgYW5kIHRoZSBwb3N0LXdhciByZWNvbnN0cnVjdGlvbiBvZiB0aGUgaW5kdXN0
cnkgaGFwcGVuZWQgdW5ldmVubHkg4oCUIHNoYXBlZCBtb3JlIGJ5IHdoaWNoIHN0YXRlcyBoYWQg
c3Vydml2aW5nIHNwYSBpbmZyYXN0cnVjdHVyZSB0aGFuIGJ5IGFueSBjb2hlcmVudCBuYXRpb25h
bCBwb2xpY3kuIFRoYXQgcGF0Y2h3b3JrIGlzIHN0aWxsIHZpc2libGUgdG9kYXkgaW4gdGhlIGRp
c3RyaWJ1dGlvbiBvZiBsaWNlbnNlZCBsYW5kLWJhc2VkIGVzdGFibGlzaG1lbnRzLCBjbHVzdGVy
ZWQgYXJvdW5kIHRoZSBzYW1lIGhpc3RvcmljIHJlc29ydCB0b3ducyB0aGF0IGludmVudGVkIHRo
ZSBmb3JtYXQgaW4gdGhlIGZpcnN0IHBsYWNlLg0KDQpUaGUgZGlnaXRhbCBlcmEgZm9yY2VkIGEg
cmVja29uaW5nIHdpdGggdGhpcyBnZW9ncmFwaHkuIE9ubGluZSBwbGF0Zm9ybXMgZG8gbm90IGhh
dmUgYSBsb2NhdGlvbiBpbiBhbnkgbWVhbmluZ2Z1bCBzZW5zZSwgd2hpY2ggbWFkZSB0aGUgb2xk
IHN0YXRlLWJ5LXN0YXRlIHJlZ3VsYXRvcnkgbW9kZWwgY29sbGFwc2UgdW5kZXIgaXRzIG93biBp
bmNvbnNpc3RlbmNpZXMuIFRoZSAyMDIxIEdsw7xja3NzcGllbHN0YWF0c3ZlcnRyYWcgYWRkcmVz
c2VkIHRoaXMgYnkgY3JlYXRpbmcgYSB1bmlmaWVkIGZlZGVyYWwgZnJhbWV3b3JrIGFuZCwgY3Jp
dGljYWxseSwgZXN0YWJsaXNoaW5nIHRoZSBjb25kaXRpb25zIHVuZGVyIHdoaWNoIHByb3ZpZGVy
cyBjb3VsZCBvYnRhaW4gYSBjYXNpbm8gR2VybWFueSBFVSBsaWNlbnNlIOKAlCBhIG1lY2hhbmlz
bSBicmluZ2luZyBkb21lc3RpYyBsYXcgaW50byBmdW5jdGlvbmFsIGFsaWdubWVudCB3aXRoIHRo
ZSBpbnRlcm5hbCBtYXJrZXQgcHJpbmNpcGxlcyBCcnVzc2VscyBoYWQgYmVlbiBwcmVzc2luZyBm
b3IgeWVhcnMuIFRoZSB0cmVhdHkgaW1wb3NlZCBzdHJpY3QgYmVoYXZpb3JhbCBjb25zdHJhaW50
czogbWFuZGF0b3J5IGRlcG9zaXQgbGltaXRzLCByZWFsLXRpbWUgdHJhbnNhY3Rpb24gbW9uaXRv
cmluZywgYWR2ZXJ0aXNpbmcgd2F0ZXJzaGVkcywgYW5kIGEgaGFyZCBwcm9oaWJpdGlvbiBvbiBj
ZXJ0YWluIHByb2R1Y3QgY2F0ZWdvcmllcyB0aGF0IGhhZCBmbG91cmlzaGVkIGluIHRoZSB1bnJl
Z3VsYXRlZCBvbmxpbmUgc3BhY2UuIEZvciBvcGVyYXRvcnMgYWxyZWFkeSBob2xkaW5nIGxpY2Vu
c2VzIGluIE1hbHRhIG9yIEdpYnJhbHRhciwgdGhlIEdlcm1hbiBtYXJrZXQgYmVjYW1lIGFjY2Vz
c2libGUgaW4gdGhlb3J5IGFuZCBleHBlbnNpdmUgaW4gcHJhY3RpY2UuIENvbXBsaWFuY2UgaW5m
cmFzdHJ1Y3R1cmUsIGxvY2FsIHRheCBvYmxpZ2F0aW9ucywgYW5kIHRoZSBhZG1pbmlzdHJhdGl2
ZSByZXF1aXJlbWVudHMgb2YgdGhlIG5ldyBmcmFtZXdvcmsgbWFkZSBlbnRyeSBjYWxjdWxhdGlv
bnMgZGlmZmljdWx0IGZvciBhbnlvbmUgYmVsb3cgYSBjZXJ0YWluIHNjYWxlLg0KQ29uc29saWRh
dGlvbiBmb2xsb3dlZCwgYXMgaXQgdGVuZHMgdG8uDQoNClRoZSBicm9hZGVyIEV1cm9wZWFuIHBp
Y3R1cmUgcmVtYWlucyBkZWxpYmVyYXRlbHkgZnJhZ21lbnRlZC4gRnJhbmNlIHJ1bnMgaXRzIG9u
bGluZSBtYXJrZXQgdGhyb3VnaCBhIHN0YXRlLWJhY2tlZCBtb25vcG9seSBsb2dpYy4gVGhlIE5l
dGhlcmxhbmRzIGludHJvZHVjZWQgbGljZW5zaW5nIGluIDIwMjEgdW5kZXIgaXRzIG93biBSZW1v
dGUgR2FtYmxpbmcgQWN0LCB3aXRoIGEgZGlmZmVyZW50IHNldCBvZiBjb25zdW1lciBwcm90ZWN0
aW9uIHByaW9yaXRpZXMuIFN3ZWRlbiBsaWJlcmFsaXplZCBpbiAyMDE5IGFuZCBoYXMgc3BlbnQg
dGhlIHllYXJzIHNpbmNlIG1hbmFnaW5nIHRoZSBnYXAgYmV0d2VlbiBwcm9qZWN0ZWQgYW5kIGFj
dHVhbCBvdXRjb21lcyBpbiBwcm9ibGVtIGdhbWJsaW5nIHJhdGVzLiBHZXJtYW55IHNpdHMgc29t
ZXdoZXJlIGluIHRoaXMgc3BlY3RydW0g4oCUIG1vcmUgb3BlbiB0aGFuIGl0cyBwcmUtMjAyMSBz
ZWxmLCBtb3JlIHJlc3RyaWN0aXZlIHRoYW4gdGhlIG9mZnNob3JlIGRlc3RpbmF0aW9ucyBpdHMg
cmVzaWRlbnRzIGhhZCBiZWVuIHVzaW5nIGZyZWVseSBmb3IgeWVhcnMgYmVmb3JlIHRoZSBsYXcg
Y2F1Z2h0IHVwLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
